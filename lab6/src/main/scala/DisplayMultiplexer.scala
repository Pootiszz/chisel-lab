import chisel3._
import chisel3.util._

class DisplayMultiplexer(maxCount: Int) extends Module {
  val io = IO(new Bundle {
    val sum = Input(UInt(8.W))
    val price = Input(UInt(8.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSeg = WireDefault("b1111111".U(7.W))
  val select = WireDefault("b0001".U(4.W))

  // *** your code starts here
  //Counter 1kHz
  val cntMAX = (100000000 / 1000 - 1).U
  val cntReg = RegInit(0.U(32.W))
  val selReg = RegInit(0.U(2.W))
  cntReg := cntReg + 1.U
  when(cntReg === cntMAX) {
    cntReg := 0.U
    selReg := selReg + 1.U
  }
  //Switch display 
  switch(selReg){
    is(0.U){select := "b0001".U}
    is(1.U){select := "b0010".U}
    is(2.U){select := "b0100".U}
    is(3.U){select := "b1000".U}
  }
  val sevSegDecoder = Module(new SevenSegDec())

  //Saves 16 inputs
  val numReg1 = RegInit(0.U(8.W))
  val numReg2 = RegInit(0.U(8.W))
  val priceW = WireDefault("b00000000".U(8.W))
  val sumW = WireDefault("b00000000".U(8.W))
  priceW := io.price
  sumW := io.sum

  numReg1 := priceW
  numReg2 := sumW
  val displayNum = WireDefault(0.U(4.W))
  val out1 = WireDefault("b0000".U(8.W))
  val out2 = WireDefault("b0000".U(8.W))


  out1 := numReg1
  out2 := numReg2

  //Switches between 4 hex numbers
  switch (selReg){
    is(0.U){displayNum := out1(3,0)}
    is(1.U){displayNum := out1(7,4)}
    is(2.U){displayNum := out2(3,0)}
    is(3.U){displayNum := out2(7,4)}
  }
  sevSegDecoder.io.in := displayNum
  sevSeg := sevSegDecoder.io.out
  

  // *** your code ends here

  io.seg := ~sevSeg
  io.an := ~select
}