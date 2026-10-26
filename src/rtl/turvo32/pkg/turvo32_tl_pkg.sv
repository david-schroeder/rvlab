// SPDX-License-Identifier: SHL-2.1
// SPDX-FileCopyrightText: David Schröder 2026
// Modified by RVLab Contributors 2026.

// Package for TileLink support for the TURVo32 Core.

package turvo32_tl_pkg;

    import tlul_pkg::tl_a_op_e;
    import tlul_pkg::tl_d_op_e;
    import tlul_pkg::Get;
    import tlul_pkg::PutFullData;
    import tlul_pkg::PutPartialData;
    import tlul_pkg::AccessAck;
    import tlul_pkg::AccessAckData;

    export tlul_pkg::tl_a_op_e;
    export tlul_pkg::tl_d_op_e;
    export tlul_pkg::Get;
    export tlul_pkg::PutFullData;
    export tlul_pkg::PutPartialData;
    export tlul_pkg::AccessAck;
    export tlul_pkg::AccessAckData;

    typedef struct packed {
        logic        a_valid;
        tl_a_op_e    a_opcode;
        logic [31:0] a_address;
        logic [31:0] a_data;
        logic [ 3:0] a_mask;
        logic [ 1:0] a_size;
        logic [ 7:0] a_source;
        logic        d_ready;
    } tl_h2d_t;

    typedef struct packed {
        logic        d_valid;
        tl_d_op_e    d_opcode;
        logic [31:0] d_data;
        logic [ 7:0] d_source;
        logic [ 1:0] d_size;
        logic        d_denied;
        logic        a_ready;
    } tl_d2h_t;

endpackage
