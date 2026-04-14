module SevenSegDec(
  input  [3:0] io_in, // @[\\src\\main\\scala\\SevenSegDec.scala 5:14]
  output [6:0] io_out // @[\\src\\main\\scala\\SevenSegDec.scala 5:14]
);
  wire [6:0] _GEN_0 = 4'hf == io_in ? 7'h71 : 7'h0; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 30:24 10:27]
  wire [6:0] _GEN_1 = 4'he == io_in ? 7'h79 : _GEN_0; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 29:24]
  wire [6:0] _GEN_2 = 4'hd == io_in ? 7'h5e : _GEN_1; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 28:24]
  wire [6:0] _GEN_3 = 4'hc == io_in ? 7'h39 : _GEN_2; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 27:24]
  wire [6:0] _GEN_4 = 4'hb == io_in ? 7'h7c : _GEN_3; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 26:24]
  wire [6:0] _GEN_5 = 4'ha == io_in ? 7'h77 : _GEN_4; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 25:24]
  wire [6:0] _GEN_6 = 4'h9 == io_in ? 7'h6f : _GEN_5; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 24:23]
  wire [6:0] _GEN_7 = 4'h8 == io_in ? 7'h7f : _GEN_6; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 23:23]
  wire [6:0] _GEN_8 = 4'h7 == io_in ? 7'h7 : _GEN_7; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 22:23]
  wire [6:0] _GEN_9 = 4'h6 == io_in ? 7'h7d : _GEN_8; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 21:23]
  wire [6:0] _GEN_10 = 4'h5 == io_in ? 7'h6d : _GEN_9; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 20:23]
  wire [6:0] _GEN_11 = 4'h4 == io_in ? 7'h66 : _GEN_10; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 19:23]
  wire [6:0] _GEN_12 = 4'h3 == io_in ? 7'h4f : _GEN_11; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 18:23]
  wire [6:0] _GEN_13 = 4'h2 == io_in ? 7'h5b : _GEN_12; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 17:23]
  wire [6:0] _GEN_14 = 4'h1 == io_in ? 7'h6 : _GEN_13; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 16:23]
  assign io_out = 4'h0 == io_in ? 7'h3f : _GEN_14; // @[\\src\\main\\scala\\SevenSegDec.scala 14:17 15:23]
endmodule
module DisplayMultiplexer(
  input        clock,
  input        reset,
  input  [7:0] io_sum, // @[\\src\\main\\scala\\DisplayMultiplexer.scala 5:14]
  input  [7:0] io_price, // @[\\src\\main\\scala\\DisplayMultiplexer.scala 5:14]
  output [6:0] io_seg, // @[\\src\\main\\scala\\DisplayMultiplexer.scala 5:14]
  output [3:0] io_an // @[\\src\\main\\scala\\DisplayMultiplexer.scala 5:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] sevSegDecoder_io_in; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 32:29]
  wire [6:0] sevSegDecoder_io_out; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 32:29]
  reg [31:0] cntReg; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 18:23]
  reg [1:0] selReg; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 19:23]
  wire [31:0] _cntReg_T_1 = cntReg + 32'h1; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 20:20]
  wire [1:0] _selReg_T_1 = selReg + 2'h1; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 23:22]
  wire  _T_1 = 2'h0 == selReg; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
  wire  _T_2 = 2'h1 == selReg; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
  wire  _T_3 = 2'h2 == selReg; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
  wire  _T_4 = 2'h3 == selReg; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
  wire [3:0] _GEN_2 = 2'h3 == selReg ? 4'h8 : 4'h1; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17 30:20 13:27]
  wire [3:0] _GEN_3 = 2'h2 == selReg ? 4'h4 : _GEN_2; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17 29:20]
  wire [3:0] _GEN_4 = 2'h1 == selReg ? 4'h2 : _GEN_3; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17 28:20]
  wire [3:0] select = 2'h0 == selReg ? 4'h1 : _GEN_4; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17 27:20]
  reg [7:0] numReg1; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 35:24]
  reg [7:0] numReg2; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 36:24]
  wire [3:0] _GEN_6 = _T_4 ? numReg2[7:4] : 4'h0; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18 57:24 44:31]
  wire [3:0] _GEN_7 = _T_3 ? numReg2[3:0] : _GEN_6; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18 56:24]
  wire [3:0] _GEN_8 = _T_2 ? numReg1[7:4] : _GEN_7; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18 55:24]
  wire [6:0] sevSeg = sevSegDecoder_io_out; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 12:27 60:10]
  SevenSegDec sevSegDecoder ( // @[\\src\\main\\scala\\DisplayMultiplexer.scala 32:29]
    .io_in(sevSegDecoder_io_in),
    .io_out(sevSegDecoder_io_out)
  );
  assign io_seg = ~sevSeg; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 65:13]
  assign io_an = ~select; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 66:12]
  assign sevSegDecoder_io_in = _T_1 ? numReg1[3:0] : _GEN_8; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18 54:24]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\DisplayMultiplexer.scala 18:23]
      cntReg <= 32'h0; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 18:23]
    end else if (cntReg == 32'h1869f) begin // @[\\src\\main\\scala\\DisplayMultiplexer.scala 21:27]
      cntReg <= 32'h0; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 22:12]
    end else begin
      cntReg <= _cntReg_T_1; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 20:10]
    end
    if (reset) begin // @[\\src\\main\\scala\\DisplayMultiplexer.scala 19:23]
      selReg <= 2'h0; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 19:23]
    end else if (cntReg == 32'h1869f) begin // @[\\src\\main\\scala\\DisplayMultiplexer.scala 21:27]
      selReg <= _selReg_T_1; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 23:12]
    end
    if (reset) begin // @[\\src\\main\\scala\\DisplayMultiplexer.scala 35:24]
      numReg1 <= 8'h0; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 35:24]
    end else begin
      numReg1 <= io_price; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 42:11]
    end
    if (reset) begin // @[\\src\\main\\scala\\DisplayMultiplexer.scala 36:24]
      numReg2 <= 8'h0; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 36:24]
    end else begin
      numReg2 <= io_sum; // @[\\src\\main\\scala\\DisplayMultiplexer.scala 43:11]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cntReg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  selReg = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  numReg1 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  numReg2 = _RAND_3[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Display(
  input         clock,
  input         reset,
  input  [15:0] io_sw, // @[\\src\\main\\scala\\Display.scala 9:14]
  output [6:0]  io_seg, // @[\\src\\main\\scala\\Display.scala 9:14]
  output [3:0]  io_an // @[\\src\\main\\scala\\Display.scala 9:14]
);
  wire  dispMux_clock; // @[\\src\\main\\scala\\Display.scala 15:23]
  wire  dispMux_reset; // @[\\src\\main\\scala\\Display.scala 15:23]
  wire [7:0] dispMux_io_sum; // @[\\src\\main\\scala\\Display.scala 15:23]
  wire [7:0] dispMux_io_price; // @[\\src\\main\\scala\\Display.scala 15:23]
  wire [6:0] dispMux_io_seg; // @[\\src\\main\\scala\\Display.scala 15:23]
  wire [3:0] dispMux_io_an; // @[\\src\\main\\scala\\Display.scala 15:23]
  DisplayMultiplexer dispMux ( // @[\\src\\main\\scala\\Display.scala 15:23]
    .clock(dispMux_clock),
    .reset(dispMux_reset),
    .io_sum(dispMux_io_sum),
    .io_price(dispMux_io_price),
    .io_seg(dispMux_io_seg),
    .io_an(dispMux_io_an)
  );
  assign io_seg = dispMux_io_seg; // @[\\src\\main\\scala\\Display.scala 22:10]
  assign io_an = dispMux_io_an; // @[\\src\\main\\scala\\Display.scala 23:9]
  assign dispMux_clock = clock;
  assign dispMux_reset = reset;
  assign dispMux_io_sum = io_sw[15:8]; // @[\\src\\main\\scala\\Display.scala 19:26]
  assign dispMux_io_price = io_sw[7:0]; // @[\\src\\main\\scala\\Display.scala 18:28]
endmodule
