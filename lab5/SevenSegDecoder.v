module SevenSegDecoder(
  input        clock,
  input        reset,
  input  [3:0] io_sw, // @[\\src\\main\\scala\\SevenSegDecoder.scala 5:14]
  output [6:0] io_seg, // @[\\src\\main\\scala\\SevenSegDecoder.scala 5:14]
  output [3:0] io_an // @[\\src\\main\\scala\\SevenSegDecoder.scala 5:14]
);
  wire [6:0] _GEN_0 = 4'hf == io_sw ? 7'h71 : 7'h0; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 30:24 11:27]
  wire [6:0] _GEN_1 = 4'he == io_sw ? 7'h79 : _GEN_0; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 29:24]
  wire [6:0] _GEN_2 = 4'hd == io_sw ? 7'h5e : _GEN_1; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 28:24]
  wire [6:0] _GEN_3 = 4'hc == io_sw ? 7'h39 : _GEN_2; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 27:24]
  wire [6:0] _GEN_4 = 4'hb == io_sw ? 7'h7c : _GEN_3; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 26:24]
  wire [6:0] _GEN_5 = 4'ha == io_sw ? 7'h77 : _GEN_4; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 25:24]
  wire [6:0] _GEN_6 = 4'h9 == io_sw ? 7'h6f : _GEN_5; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 24:23]
  wire [6:0] _GEN_7 = 4'h8 == io_sw ? 7'h7f : _GEN_6; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 23:23]
  wire [6:0] _GEN_8 = 4'h7 == io_sw ? 7'h7 : _GEN_7; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 22:23]
  wire [6:0] _GEN_9 = 4'h6 == io_sw ? 7'h7d : _GEN_8; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 21:23]
  wire [6:0] _GEN_10 = 4'h5 == io_sw ? 7'h6d : _GEN_9; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 20:23]
  wire [6:0] _GEN_11 = 4'h4 == io_sw ? 7'h66 : _GEN_10; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 19:23]
  wire [6:0] _GEN_12 = 4'h3 == io_sw ? 7'h4f : _GEN_11; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 18:23]
  wire [6:0] _GEN_13 = 4'h2 == io_sw ? 7'h5b : _GEN_12; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 17:23]
  wire [6:0] _GEN_14 = 4'h1 == io_sw ? 7'h6 : _GEN_13; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 16:23]
  wire [6:0] sevSeg = 4'h0 == io_sw ? 7'h3f : _GEN_14; // @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 15:23]
  assign io_seg = ~sevSeg; // @[\\src\\main\\scala\\SevenSegDecoder.scala 36:13]
  assign io_an = 4'he; // @[\\src\\main\\scala\\SevenSegDecoder.scala 37:9]
endmodule
