module CountSevenSeg(
  input        clock,
  input        reset,
  output [6:0] io_seg, // @[\\src\\main\\scala\\CountSevenSeg.scala 4:14]
  output [3:0] io_an // @[\\src\\main\\scala\\CountSevenSeg.scala 4:14]
);
  assign io_seg = 7'h7f; // @[\\src\\main\\scala\\CountSevenSeg.scala 9:{27,27}]
  assign io_an = 4'he; // @[\\src\\main\\scala\\CountSevenSeg.scala 17:9]
endmodule
