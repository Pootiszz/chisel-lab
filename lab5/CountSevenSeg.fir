FIRRTL version 1.2.0
circuit CountSevenSeg :
  module CountSevenSeg :
    input clock : Clock
    input reset : UInt<1>
    output io : { seg : UInt<7>, an : UInt<4>} @[\\src\\main\\scala\\CountSevenSeg.scala 4:14]

    wire sevSeg : UInt<7> @[\\src\\main\\scala\\CountSevenSeg.scala 9:27]
    sevSeg <= UInt<7>("h7f") @[\\src\\main\\scala\\CountSevenSeg.scala 9:27]
    io.seg <= sevSeg @[\\src\\main\\scala\\CountSevenSeg.scala 16:10]
    io.an <= UInt<4>("he") @[\\src\\main\\scala\\CountSevenSeg.scala 17:9]

