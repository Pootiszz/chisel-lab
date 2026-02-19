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
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip c : UInt<1>, flip d : UInt<1>, flip sel : UInt<2>, y : UInt<1>} @[\\src\\main\\scala\\Mux4.scala 8:14]

    inst mA of Mux2 @[\\src\\main\\scala\\Mux4.scala 24:18]
    mA.clock <= clock
    mA.reset <= reset
    inst mB of Mux2_1 @[\\src\\main\\scala\\Mux4.scala 25:18]
    mB.clock <= clock
    mB.reset <= reset
    inst mOut of Mux2_2 @[\\src\\main\\scala\\Mux4.scala 26:21]
    mOut.clock <= clock
    mOut.reset <= reset
    mA.io.a <= io.a @[\\src\\main\\scala\\Mux4.scala 28:11]
    mA.io.b <= io.b @[\\src\\main\\scala\\Mux4.scala 29:11]
    node _mA_io_sel_T = bits(io.sel, 0, 0) @[\\src\\main\\scala\\Mux4.scala 30:22]
    mA.io.sel <= _mA_io_sel_T @[\\src\\main\\scala\\Mux4.scala 30:13]
    mB.io.a <= io.c @[\\src\\main\\scala\\Mux4.scala 32:11]
    mB.io.b <= io.d @[\\src\\main\\scala\\Mux4.scala 33:11]
    node _mB_io_sel_T = bits(io.sel, 0, 0) @[\\src\\main\\scala\\Mux4.scala 34:22]
    mB.io.sel <= _mB_io_sel_T @[\\src\\main\\scala\\Mux4.scala 34:13]
    mOut.io.a <= mA.io.y @[\\src\\main\\scala\\Mux4.scala 37:13]
    mOut.io.b <= mB.io.y @[\\src\\main\\scala\\Mux4.scala 38:13]
    node _mOut_io_sel_T = bits(io.sel, 1, 1) @[\\src\\main\\scala\\Mux4.scala 39:24]
    mOut.io.sel <= _mOut_io_sel_T @[\\src\\main\\scala\\Mux4.scala 39:15]
    io.y <= mOut.io.y @[\\src\\main\\scala\\Mux4.scala 41:8]

