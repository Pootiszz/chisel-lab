module Mux2(
  input   io_a, // @[\\src\\main\\scala\\Mux2.scala 9:14]
  input   io_b, // @[\\src\\main\\scala\\Mux2.scala 9:14]
  input   io_sel, // @[\\src\\main\\scala\\Mux2.scala 9:14]
  output  io_y // @[\\src\\main\\scala\\Mux2.scala 9:14]
);
  assign io_y = io_sel ? io_b : io_a; // @[\\src\\main\\scala\\Mux2.scala 17:25 18:10 16:8]
endmodule
module Mux4(
  input        clock,
  input        reset,
  input        io_a, // @[\\src\\main\\scala\\Mux4.scala 8:14]
  input        io_b, // @[\\src\\main\\scala\\Mux4.scala 8:14]
  input        io_c, // @[\\src\\main\\scala\\Mux4.scala 8:14]
  input        io_d, // @[\\src\\main\\scala\\Mux4.scala 8:14]
  input  [1:0] io_sel, // @[\\src\\main\\scala\\Mux4.scala 8:14]
  output       io_y // @[\\src\\main\\scala\\Mux4.scala 8:14]
);
  wire  mA_io_a; // @[\\src\\main\\scala\\Mux4.scala 24:18]
  wire  mA_io_b; // @[\\src\\main\\scala\\Mux4.scala 24:18]
  wire  mA_io_sel; // @[\\src\\main\\scala\\Mux4.scala 24:18]
  wire  mA_io_y; // @[\\src\\main\\scala\\Mux4.scala 24:18]
  wire  mB_io_a; // @[\\src\\main\\scala\\Mux4.scala 25:18]
  wire  mB_io_b; // @[\\src\\main\\scala\\Mux4.scala 25:18]
  wire  mB_io_sel; // @[\\src\\main\\scala\\Mux4.scala 25:18]
  wire  mB_io_y; // @[\\src\\main\\scala\\Mux4.scala 25:18]
  wire  mOut_io_a; // @[\\src\\main\\scala\\Mux4.scala 26:21]
  wire  mOut_io_b; // @[\\src\\main\\scala\\Mux4.scala 26:21]
  wire  mOut_io_sel; // @[\\src\\main\\scala\\Mux4.scala 26:21]
  wire  mOut_io_y; // @[\\src\\main\\scala\\Mux4.scala 26:21]
  Mux2 mA ( // @[\\src\\main\\scala\\Mux4.scala 24:18]
    .io_a(mA_io_a),
    .io_b(mA_io_b),
    .io_sel(mA_io_sel),
    .io_y(mA_io_y)
  );
  Mux2 mB ( // @[\\src\\main\\scala\\Mux4.scala 25:18]
    .io_a(mB_io_a),
    .io_b(mB_io_b),
    .io_sel(mB_io_sel),
    .io_y(mB_io_y)
  );
  Mux2 mOut ( // @[\\src\\main\\scala\\Mux4.scala 26:21]
    .io_a(mOut_io_a),
    .io_b(mOut_io_b),
    .io_sel(mOut_io_sel),
    .io_y(mOut_io_y)
  );
  assign io_y = mOut_io_y; // @[\\src\\main\\scala\\Mux4.scala 41:8]
  assign mA_io_a = io_a; // @[\\src\\main\\scala\\Mux4.scala 28:11]
  assign mA_io_b = io_b; // @[\\src\\main\\scala\\Mux4.scala 29:11]
  assign mA_io_sel = io_sel[0]; // @[\\src\\main\\scala\\Mux4.scala 30:22]
  assign mB_io_a = io_c; // @[\\src\\main\\scala\\Mux4.scala 32:11]
  assign mB_io_b = io_d; // @[\\src\\main\\scala\\Mux4.scala 33:11]
  assign mB_io_sel = io_sel[0]; // @[\\src\\main\\scala\\Mux4.scala 34:22]
  assign mOut_io_a = mA_io_y; // @[\\src\\main\\scala\\Mux4.scala 37:13]
  assign mOut_io_b = mB_io_y; // @[\\src\\main\\scala\\Mux4.scala 38:13]
  assign mOut_io_sel = io_sel[1]; // @[\\src\\main\\scala\\Mux4.scala 39:24]
endmodule
