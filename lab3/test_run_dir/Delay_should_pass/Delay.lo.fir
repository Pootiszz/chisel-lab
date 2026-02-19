FIRRTL version 1.2.0
circuit Delay :
  module Delay :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8> @[\\src\\main\\scala\\Delay.scala 4:14]
    output io_dout : UInt<8> @[\\src\\main\\scala\\Delay.scala 4:14]

    reg reg1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg1) @[\\src\\main\\scala\\Delay.scala 13:21]
    reg reg2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg2) @[\\src\\main\\scala\\Delay.scala 14:21]
    node res = reg2 @[\\src\\main\\scala\\Delay.scala 9:17 16:7]
    io_dout <= res @[\\src\\main\\scala\\Delay.scala 21:11]
    reg1 <= io_din @[\\src\\main\\scala\\Delay.scala 13:21]
    reg2 <= reg1 @[\\src\\main\\scala\\Delay.scala 14:21]
