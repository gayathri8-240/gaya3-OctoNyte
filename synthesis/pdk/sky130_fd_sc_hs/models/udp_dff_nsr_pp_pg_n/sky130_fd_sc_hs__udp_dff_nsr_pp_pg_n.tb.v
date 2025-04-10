/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_SC_HS__UDP_DFF_NSR_PP_PG_N_TB_V
`define SKY130_FD_SC_HS__UDP_DFF_NSR_PP_PG_N_TB_V

/**
 * udp_dff$NSR_pp$PG$N: Negative edge triggered D flip-flop
 *                      (Q output UDP) with both active high reset and
 *                      set (set dominate). Includes VPWR and VGND
 *                      power pins and notifier pin.
 *
 * Autogenerated test bench.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`include "sky130_fd_sc_hs__udp_dff_nsr_pp_pg_n.v"

module top();

    // Inputs are registered
    reg SET;
    reg RESET;
    reg D;
    reg NOTIFIER;
    reg VPWR;
    reg VGND;

    // Outputs are wires
    wire Q;

    initial
    begin
        // Initial state is x for all inputs.
        D        = 1'bX;
        NOTIFIER = 1'bX;
        RESET    = 1'bX;
        SET      = 1'bX;
        VGND     = 1'bX;
        VPWR     = 1'bX;

        #20   D        = 1'b0;
        #40   NOTIFIER = 1'b0;
        #60   RESET    = 1'b0;
        #80   SET      = 1'b0;
        #100  VGND     = 1'b0;
        #120  VPWR     = 1'b0;
        #140  D        = 1'b1;
        #160  NOTIFIER = 1'b1;
        #180  RESET    = 1'b1;
        #200  SET      = 1'b1;
        #220  VGND     = 1'b1;
        #240  VPWR     = 1'b1;
        #260  D        = 1'b0;
        #280  NOTIFIER = 1'b0;
        #300  RESET    = 1'b0;
        #320  SET      = 1'b0;
        #340  VGND     = 1'b0;
        #360  VPWR     = 1'b0;
        #380  VPWR     = 1'b1;
        #400  VGND     = 1'b1;
        #420  SET      = 1'b1;
        #440  RESET    = 1'b1;
        #460  NOTIFIER = 1'b1;
        #480  D        = 1'b1;
        #500  VPWR     = 1'bx;
        #520  VGND     = 1'bx;
        #540  SET      = 1'bx;
        #560  RESET    = 1'bx;
        #580  NOTIFIER = 1'bx;
        #600  D        = 1'bx;
    end

    // Create a clock
    reg CLK_N;
    initial
    begin
        CLK_N = 1'b0;
    end

    always
    begin
        #5 CLK_N = ~CLK_N;
    end

    sky130_fd_sc_hs__udp_dff$NSR_pp$PG$N dut (.SET(SET), .RESET(RESET), .D(D), .NOTIFIER(NOTIFIER), .VPWR(VPWR), .VGND(VGND), .Q(Q), .CLK_N(CLK_N));

endmodule

`default_nettype wire
`endif  // SKY130_FD_SC_HS__UDP_DFF_NSR_PP_PG_N_TB_V
