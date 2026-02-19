FIRRTL version 1.2.0
circuit Mux4 :
  module Mux2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip sel : UInt<1>, y : UInt<1>} @[\\src\\main\\scala\\Mux2.scala 9:14]

    io.y <= io.a @[\\src\\main\\scala\\Mux2.scala 16:8]
    node _T = eq(io.sel, UInt<1>("h1")) @[\\src\\main\\scala\\Mux2.scala 17:16]
    when _T : @[\\src\\main\\scala\\Mux2.scala 17:25]
      io.y <= io.b @[\\src\\main\\scala\\Mux2.scala 18:10]


  module Mux2_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip sel : UInt<1>, y : UInt<1>} @[\\src\\main\\scala\\Mux2.scala 9:14]

    io.y <= io.a @[\\src\\main\\scala\\Mux2.scala 16:8]
    node _T = eq(io.sel, UInt<1>("h1")) @[\\src\\main\\scala\\Mux2.scala 17:16]
    when _T : @[\\src\\main\\scala\\Mux2.scala 17:25]
      io.y <= io.b @[\\src\\main\\scala\\Mux2.scala 18:10]


  module Mux2_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip sel : UInt<1>, y : UInt<1>} @[\\src\\main\\scala\\Mux2.scala 9:14]

    io.y <= io.a @[\\src\\main\\scala\\Mux2.scala 16:8]
    node _T = eq(io.sel, UInt<1>("h1")) @[\\src\\main\\scala\\Mux2.scala 17:16]
    when _T : @[\\src\\main\\scala\\Mux2.scala 17:25]
      io.y <= io.b @[\\src\\main\\scala\\Mux2.scala 18:10]


  module Mux4 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sw : UInt<16>, led : UInt<16>} @[\\src\\main\\scala\\Mux4.scala 8:14]

    inst mA of Mux2 @[\\src\\main\\scala\\Mux4.scala 18:18]
    mA.clock <= clock
    mA.reset <= reset
    inst mB of Mux2_1 @[\\src\\main\\scala\\Mux4.scala 19:18]
    mB.clock <= clock
    mB.reset <= reset
    inst mOut of Mux2_2 @[\\src\\main\\scala\\Mux4.scala 20:21]
    mOut.clock <= clock
    mOut.reset <= reset
    node _mA_io_a_T = bits(io.sw, 0, 0) @[\\src\\main\\scala\\Mux4.scala 22:19]
    mA.io.a <= _mA_io_a_T @[\\src\\main\\scala\\Mux4.scala 22:11]
    node _mA_io_b_T = bits(io.sw, 1, 1) @[\\src\\main\\scala\\Mux4.scala 23:19]
    mA.io.b <= _mA_io_b_T @[\\src\\main\\scala\\Mux4.scala 23:11]
    node _mA_io_sel_T = bits(io.sw, 4, 4) @[\\src\\main\\scala\\Mux4.scala 24:21]
    mA.io.sel <= _mA_io_sel_T @[\\src\\main\\scala\\Mux4.scala 24:13]
    node _mB_io_a_T = bits(io.sw, 2, 2) @[\\src\\main\\scala\\Mux4.scala 26:19]
    mB.io.a <= _mB_io_a_T @[\\src\\main\\scala\\Mux4.scala 26:11]
    node _mB_io_b_T = bits(io.sw, 3, 3) @[\\src\\main\\scala\\Mux4.scala 27:19]
    mB.io.b <= _mB_io_b_T @[\\src\\main\\scala\\Mux4.scala 27:11]
    node _mB_io_sel_T = bits(io.sw, 4, 4) @[\\src\\main\\scala\\Mux4.scala 28:21]
    mB.io.sel <= _mB_io_sel_T @[\\src\\main\\scala\\Mux4.scala 28:13]
    mOut.io.a <= mA.io.y @[\\src\\main\\scala\\Mux4.scala 31:13]
    mOut.io.b <= mB.io.y @[\\src\\main\\scala\\Mux4.scala 32:13]
    node _mOut_io_sel_T = bits(io.sw, 5, 5) @[\\src\\main\\scala\\Mux4.scala 33:23]
    mOut.io.sel <= _mOut_io_sel_T @[\\src\\main\\scala\\Mux4.scala 33:15]
    io.led <= mOut.io.y @[\\src\\main\\scala\\Mux4.scala 35:10]

