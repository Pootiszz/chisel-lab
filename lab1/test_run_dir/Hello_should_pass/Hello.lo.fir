FIRRTL version 1.2.0
circuit Hello :
  module Hello :
    input clock : Clock
    input reset : UInt<1>
    output io_led : UInt<1> @[\\src\\main\\scala\\Hello.scala 12:14]

    reg cntReg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), cntReg) @[\\src\\main\\scala\\Hello.scala 17:23]
    reg blkReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), blkReg) @[\\src\\main\\scala\\Hello.scala 18:23]
    node _cntReg_T = add(cntReg, UInt<1>("h1")) @[\\src\\main\\scala\\Hello.scala 20:20]
    node _cntReg_T_1 = tail(_cntReg_T, 1) @[\\src\\main\\scala\\Hello.scala 20:20]
    node _T = eq(cntReg, UInt<15>("h61a7")) @[\\src\\main\\scala\\Hello.scala 21:15]
    node _blkReg_T = not(blkReg) @[\\src\\main\\scala\\Hello.scala 23:15]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _cntReg_T_1) @[\\src\\main\\scala\\Hello.scala 20:10 21:28 22:12]
    node _GEN_1 = mux(_T, _blkReg_T, blkReg) @[\\src\\main\\scala\\Hello.scala 21:28 23:12 18:23]
    io_led <= blkReg @[\\src\\main\\scala\\Hello.scala 25:10]
    cntReg <= mux(reset, UInt<32>("h0"), _GEN_0) @[\\src\\main\\scala\\Hello.scala 17:{23,23}]
    blkReg <= mux(reset, UInt<1>("h0"), _GEN_1) @[\\src\\main\\scala\\Hello.scala 18:{23,23}]
