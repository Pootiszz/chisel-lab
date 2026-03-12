FIRRTL version 1.2.0
circuit CountSevenSeg :
  module CountSevenSeg :
    input clock : Clock
    input reset : UInt<1>
    output io_seg : UInt<7> @[\\src\\main\\scala\\CountSevenSeg.scala 4:14]
    output io_an : UInt<4> @[\\src\\main\\scala\\CountSevenSeg.scala 4:14]

    node sevSeg = UInt<7>("h7f") @[\\src\\main\\scala\\CountSevenSeg.scala 9:{27,27}]
    io_seg <= sevSeg @[\\src\\main\\scala\\CountSevenSeg.scala 16:10]
    io_an <= UInt<4>("he") @[\\src\\main\\scala\\CountSevenSeg.scala 17:9]
