module Mux2(
  input   io_a, // @[\\src\\main\\scala\\Mux2.scala 9:14]
  input   io_b, // @[\\src\\main\\scala\\Mux2.scala 9:14]
  input   io_sel, // @[\\src\\main\\scala\\Mux2.scala 9:14]
  output  io_y // @[\\src\\main\\scala\\Mux2.scala 9:14]
);
  assign io_y = io_sel ? io_b : io_a; // @[\\src\\main\\scala\\Mux2.scala 17:25 18:10 16:8]
endmodule
module Mux4(
  input         clock,
  input         reset,
  input  [15:0] io_sw, // @[\\src\\main\\scala\\Mux4.scala 8:14]
  output [15:0] io_led // @[\\src\\main\\scala\\Mux4.scala 8:14]
);
  wire  mA_io_a; // @[\\src\\main\\scala\\Mux4.scala 18:18]
  wire  mA_io_b; // @[\\src\\main\\scala\\Mux4.scala 18:18]
  wire  mA_io_sel; // @[\\src\\main\\scala\\Mux4.scala 18:18]
  wire  mA_io_y; // @[\\src\\main\\scala\\Mux4.scala 18:18]
  wire  mB_io_a; // @[\\src\\main\\scala\\Mux4.scala 19:18]
  wire  mB_io_b; // @[\\src\\main\\scala\\Mux4.scala 19:18]
  wire  mB_io_sel; // @[\\src\\main\\scala\\Mux4.scala 19:18]
  wire  mB_io_y; // @[\\src\\main\\scala\\Mux4.scala 19:18]
  wire  mOut_io_a; // @[\\src\\main\\scala\\Mux4.scala 20:21]
  wire  mOut_io_b; // @[\\src\\main\\scala\\Mux4.scala 20:21]
  wire  mOut_io_sel; // @[\\src\\main\\scala\\Mux4.scala 20:21]
  wire  mOut_io_y; // @[\\src\\main\\scala\\Mux4.scala 20:21]
  Mux2 mA ( // @[\\src\\main\\scala\\Mux4.scala 18:18]
    .io_a(mA_io_a),
    .io_b(mA_io_b),
    .io_sel(mA_io_sel),
    .io_y(mA_io_y)
  );
  Mux2 mB ( // @[\\src\\main\\scala\\Mux4.scala 19:18]
    .io_a(mB_io_a),
    .io_b(mB_io_b),
    .io_sel(mB_io_sel),
    .io_y(mB_io_y)
  );
  Mux2 mOut ( // @[\\src\\main\\scala\\Mux4.scala 20:21]
    .io_a(mOut_io_a),
    .io_b(mOut_io_b),
    .io_sel(mOut_io_sel),
    .io_y(mOut_io_y)
  );
  assign io_led = {{15'd0}, mOut_io_y}; // @[\\src\\main\\scala\\Mux4.scala 35:10]
  assign mA_io_a = io_sw[0]; // @[\\src\\main\\scala\\Mux4.scala 22:19]
  assign mA_io_b = io_sw[1]; // @[\\src\\main\\scala\\Mux4.scala 23:19]
  assign mA_io_sel = io_sw[4]; // @[\\src\\main\\scala\\Mux4.scala 24:21]
  assign mB_io_a = io_sw[2]; // @[\\src\\main\\scala\\Mux4.scala 26:19]
  assign mB_io_b = io_sw[3]; // @[\\src\\main\\scala\\Mux4.scala 27:19]
  assign mB_io_sel = io_sw[4]; // @[\\src\\main\\scala\\Mux4.scala 28:21]
  assign mOut_io_a = mA_io_y; // @[\\src\\main\\scala\\Mux4.scala 31:13]
  assign mOut_io_b = mB_io_y; // @[\\src\\main\\scala\\Mux4.scala 32:13]
  assign mOut_io_sel = io_sw[5]; // @[\\src\\main\\scala\\Mux4.scala 33:23]
endmodule
