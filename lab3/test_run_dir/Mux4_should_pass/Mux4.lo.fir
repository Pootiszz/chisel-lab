FIRRTL version 1.2.0
circuit Mux4 :
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

  module Mux4 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1> @[\\src\\main\\scala\\Mux4.scala 8:14]
    input io_b : UInt<1> @[\\src\\main\\scala\\Mux4.scala 8:14]
    input io_c : UInt<1> @[\\src\\main\\scala\\Mux4.scala 8:14]
    input io_d : UInt<1> @[\\src\\main\\scala\\Mux4.scala 8:14]
    input io_sel : UInt<2> @[\\src\\main\\scala\\Mux4.scala 8:14]
    output io_y : UInt<1> @[\\src\\main\\scala\\Mux4.scala 8:14]

    inst mA of Mux2 @[\\src\\main\\scala\\Mux4.scala 22:18]
    inst mB of Mux2 @[\\src\\main\\scala\\Mux4.scala 23:18]
    inst mOut of Mux2 @[\\src\\main\\scala\\Mux4.scala 24:21]
    node _mA_io_sel_T = bits(io_sel, 0, 0) @[\\src\\main\\scala\\Mux4.scala 28:22]
    node _mB_io_sel_T = bits(io_sel, 0, 0) @[\\src\\main\\scala\\Mux4.scala 32:22]
    node _mOut_io_sel_T = bits(io_sel, 1, 1) @[\\src\\main\\scala\\Mux4.scala 37:24]
    io_y <= mOut.io_y @[\\src\\main\\scala\\Mux4.scala 39:8]
    mA.clock <= clock
    mA.reset <= reset
    mA.io_a <= io_a @[\\src\\main\\scala\\Mux4.scala 26:11]
    mA.io_b <= io_b @[\\src\\main\\scala\\Mux4.scala 27:11]
    mA.io_sel <= _mA_io_sel_T @[\\src\\main\\scala\\Mux4.scala 28:13]
    mB.clock <= clock
    mB.reset <= reset
    mB.io_a <= io_c @[\\src\\main\\scala\\Mux4.scala 30:11]
    mB.io_b <= io_d @[\\src\\main\\scala\\Mux4.scala 31:11]
    mB.io_sel <= _mB_io_sel_T @[\\src\\main\\scala\\Mux4.scala 32:13]
    mOut.clock <= clock
    mOut.reset <= reset
    mOut.io_a <= mA.io_y @[\\src\\main\\scala\\Mux4.scala 35:13]
    mOut.io_b <= mB.io_y @[\\src\\main\\scala\\Mux4.scala 36:13]
    mOut.io_sel <= _mOut_io_sel_T @[\\src\\main\\scala\\Mux4.scala 37:15]
