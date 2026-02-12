FIRRTL version 1.2.0
circuit Mux2 :
  module Mux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1> @[\\src\\main\\scala\\Mux2.scala 4:14]
    input io_b : UInt<1> @[\\src\\main\\scala\\Mux2.scala 4:14]
    input io_sel : UInt<1> @[\\src\\main\\scala\\Mux2.scala 4:14]
    output io_y : UInt<1> @[\\src\\main\\scala\\Mux2.scala 4:14]

    node _T = eq(io_sel, UInt<1>("h0")) @[\\src\\main\\scala\\Mux2.scala 20:13]
    node _GEN_0 = mux(_T, io_a, io_b) @[\\src\\main\\scala\\Mux2.scala 20:26 21:7 23:7]
    node v = _GEN_0 @[\\src\\main\\scala\\Mux2.scala 18:15]
    node res = v @[\\src\\main\\scala\\Mux2.scala 14:17 25:7]
    io_y <= res @[\\src\\main\\scala\\Mux2.scala 29:8]
