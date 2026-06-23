// SPDX-FileCopyrightText: 2026 RVLab contributors
// SPDX-License-Identifier: SHL-2.1

module prim_clock_gating (
  input  logic clk_i,
  input  logic en_i,
  input  logic test_en_i,
  output logic clk_o
);

  BUFGCE #(
    .SIM_DEVICE("7SERIES")
  ) clkbuf_i (
    .I (clk_i),
    .CE(en_i | test_en_i),
    .O (clk_o)
  );

endmodule
