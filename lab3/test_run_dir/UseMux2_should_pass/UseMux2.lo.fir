FIRRTL version 1.2.0
circuit UseMux2 :
  module Mux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1> @[\\src\\main\\scala\\Mux2.scala 9:14]
    input io_b : UInt<1> @[\\src\\main\\scala\\Mux2.scala 9:14]
    input io_sel : UInt<1> @[\\src\\main\\scala\\Mux2.scala 9:14]
    output io_y : UInt<1> @[\\src\\main\\scala\\Mux2.scala 9:14]

    node _T = eq(io_sel, UInt<1>("h1")) @[\\src\\main\\scala\\Mux2.scala 17:16]
    node _GEN_0 = mux(_T, io_b, io_a) @[\\src\\main\\scala\\Mux2.scala 17:25 18:10 16:8]
    io_y <= _GEN_0

  module UseMux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<1> @[\\src\\main\\scala\\UseMux2.scala 4:14]
    output io_dout : UInt<1> @[\\src\\main\\scala\\UseMux2.scala 4:14]

    inst mux2 of Mux2 @[\\src\\main\\scala\\UseMux2.scala 18:20]
    node res = mux2.io_y @[\\src\\main\\scala\\UseMux2.scala 12:17 22:7]
    io_dout <= res @[\\src\\main\\scala\\UseMux2.scala 26:11]
    mux2.clock <= clock
    mux2.reset <= reset
    mux2.io_a <= UInt<1>("h1") @[\\src\\main\\scala\\UseMux2.scala 20:13]
    mux2.io_b <= UInt<1>("h0") @[\\src\\main\\scala\\UseMux2.scala 21:13]
    mux2.io_sel <= io_sel @[\\src\\main\\scala\\UseMux2.scala 19:15]
