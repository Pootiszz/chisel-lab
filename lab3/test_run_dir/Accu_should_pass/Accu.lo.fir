FIRRTL version 1.2.0
circuit Accu :
  module Accu :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8> @[\\src\\main\\scala\\Accu.scala 4:14]
    input io_setZero : UInt<1> @[\\src\\main\\scala\\Accu.scala 4:14]
    output io_dout : UInt<8> @[\\src\\main\\scala\\Accu.scala 4:14]

    reg valReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), valReg) @[\\src\\main\\scala\\Accu.scala 14:24]
    node _valReg_T = add(valReg, io_din) @[\\src\\main\\scala\\Accu.scala 17:41]
    node _valReg_T_1 = tail(_valReg_T, 1) @[\\src\\main\\scala\\Accu.scala 17:41]
    node _valReg_T_2 = mux(io_setZero, UInt<1>("h0"), _valReg_T_1) @[\\src\\main\\scala\\Accu.scala 17:16]
    node res = valReg @[\\src\\main\\scala\\Accu.scala 10:17 19:7]
    io_dout <= pad(res, 8) @[\\src\\main\\scala\\Accu.scala 23:11]
    valReg <= bits(mux(reset, UInt<4>("h0"), _valReg_T_2), 3, 0) @[\\src\\main\\scala\\Accu.scala 14:{24,24} 17:10]
