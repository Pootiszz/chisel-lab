module Majority(
  input   clock,
  input   reset,
  input   io_a, // @[\\src\\main\\scala\\Majority.scala 8:14]
  input   io_b, // @[\\src\\main\\scala\\Majority.scala 8:14]
  input   io_c, // @[\\src\\main\\scala\\Majority.scala 8:14]
  output  io_out // @[\\src\\main\\scala\\Majority.scala 8:14]
);
  assign io_out = io_a & io_b | io_a & io_c | io_b & io_c; // @[\\src\\main\\scala\\Majority.scala 23:31]
endmodule
