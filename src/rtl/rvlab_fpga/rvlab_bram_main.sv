// SPDX-License-Identifier: SHL-2.1
// SPDX-FileCopyrightText: 2024 RVLab Contributors

module rvlab_bram_main (
  input logic clk_i,
  input logic rst_ni,

  // TL-UL interface
  input  tlul_pkg::tl_h2d_t tl_i [1:0],
  output tlul_pkg::tl_d2h_t tl_o [1:0]
);

  logic        req [1:0];
  logic        we [1:0];
  logic [15:0] addr [1:0];
  logic [31:0] wdata [1:0];
  logic [31:0] wmask [1:0];
  logic [31:0] rdata [1:0];
  logic        rvalid [1:0];

  localparam int AddrWidth = 16;  // 16 x 32 bit = 256 kB

  (* ram_style = "block" *) logic [31:0] mem [0:2**AddrWidth];

  generate
    for (genvar i = 0; i < 2; i++) begin : gen_ports
      tlul_adapter_sram #(
        .SramAw     (AddrWidth),
        .SramDw     (32),
        .Outstanding(1)
      ) adapter_i (
        .clk_i,
        .rst_ni,

        .tl_i    (tl_i[i]),
        .tl_o    (tl_o[i]),

        .req_o   (req[i]),
        .gnt_i   (1'b1),    // Always grant as only one requester exists
        .we_o    (we[i]),
        .addr_o  (addr[i]),
        .wdata_o (wdata[i]),
        .wmask_o (wmask[i]),
        .rdata_i (rdata[i]),
        .rvalid_i(rvalid[i]),
        .rerror_i(2'b00)
      );

      always @(posedge clk_i) begin
        if (we[i]) begin
          // Write access:
          if (wmask[i][0]) mem[addr[i]][7:0] <= wdata[i][7:0];
          if (wmask[i][8]) mem[addr[i]][15:8] <= wdata[i][15:8];
          if (wmask[i][16]) mem[addr[i]][23:16] <= wdata[i][23:16];
          if (wmask[i][24]) mem[addr[i]][31:24] <= wdata[i][31:24];
        end

        // Read access:
        rdata[i] <= mem[addr[i]];
      end

      always @(posedge clk_i, negedge rst_ni) begin
        if (!rst_ni) begin
          rvalid[i] <= '0;
        end else begin
          rvalid[i] <= (req[i] && !we[i]);
        end
      end
    end : gen_ports
  endgenerate

  `define STRINGIFY(x) `"x`"
  initial begin
    $readmemh(`STRINGIFY(`INIT_MEM_FILE), mem);
  end

endmodule
