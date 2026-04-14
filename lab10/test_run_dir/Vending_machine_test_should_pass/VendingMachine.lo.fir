FIRRTL version 1.2.0
circuit VendingMachine :
  extmodule BlackVendingB : @[\\src\\main\\scala\\VendingMachine.scala 18:7]
    input price : UInt<5>
    input coin2 : UInt<1>
    input coin5 : UInt<1>
    input buy : UInt<1>
    output releaseCan : UInt<1>
    output alarm : UInt<1>
    output seg : UInt<7>
    output an : UInt<4>
    defname = BlackVendingB

  module VendingMachine : @[\\src\\main\\scala\\VendingMachine.scala 33:7]
    input clock : Clock @[\\src\\main\\scala\\VendingMachine.scala 33:7]
    input reset : UInt<1> @[\\src\\main\\scala\\VendingMachine.scala 33:7]
    input io_price : UInt<5> @[\\src\\main\\scala\\VendingMachine.scala 34:14]
    input io_coin2 : UInt<1> @[\\src\\main\\scala\\VendingMachine.scala 34:14]
    input io_coin5 : UInt<1> @[\\src\\main\\scala\\VendingMachine.scala 34:14]
    input io_buy : UInt<1> @[\\src\\main\\scala\\VendingMachine.scala 34:14]
    output io_releaseCan : UInt<1> @[\\src\\main\\scala\\VendingMachine.scala 34:14]
    output io_alarm : UInt<1> @[\\src\\main\\scala\\VendingMachine.scala 34:14]
    output io_seg : UInt<7> @[\\src\\main\\scala\\VendingMachine.scala 34:14]
    output io_an : UInt<4> @[\\src\\main\\scala\\VendingMachine.scala 34:14]

    inst vending of BlackVendingB @[\\src\\main\\scala\\VendingMachine.scala 47:24]
    io_releaseCan <= vending.releaseCan @[\\src\\main\\scala\\VendingMachine.scala 48:14]
    io_alarm <= vending.alarm @[\\src\\main\\scala\\VendingMachine.scala 48:14]
    io_seg <= vending.seg @[\\src\\main\\scala\\VendingMachine.scala 48:14]
    io_an <= vending.an @[\\src\\main\\scala\\VendingMachine.scala 48:14]
    vending.price <= io_price @[\\src\\main\\scala\\VendingMachine.scala 48:14]
    vending.coin2 <= io_coin2 @[\\src\\main\\scala\\VendingMachine.scala 48:14]
    vending.coin5 <= io_coin5 @[\\src\\main\\scala\\VendingMachine.scala 48:14]
    vending.buy <= io_buy @[\\src\\main\\scala\\VendingMachine.scala 48:14]
