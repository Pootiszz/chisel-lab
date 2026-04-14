error id: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/vending/src/main/scala/VendingMachine.scala:_empty_/VendingMachine#sevSeg.
file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/vending/src/main/scala/VendingMachine.scala
empty definition using pc, found symbol in pc: 
found definition using semanticdb; symbol _empty_/VendingMachine#sevSeg.
empty definition using fallback
non-local guesses:

offset: 780
uri: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/vending/src/main/scala/VendingMachine.scala
text:
```scala
import chisel3._
import chisel3.util._

class VendingMachine(maxCount: Int) extends Module {
  val io = IO(new Bundle {
    val price = Input(UInt(5.W))
    val coin2 = Input(Bool())
    val coin5 = Input(Bool())
    val buy = Input(Bool())
    val releaseCan = Output(Bool())
    val alarm = Output(Bool())
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  /////# DATAPATH LOGIC #/////
  // MONEY REGISTERS & LOGIC //
  val totalMoney = RegInit(0.U(8.W)) // 8 bits, 0 to 99
  val onesDigit = totalMoney % 10.U // right digit
  val tensDigit = (totalMoney / 10.U) % 10.U // left digit
  

  // Timing Registers //
  val blinkFreq = 25000000.U
  val blinkCounter = RegInit(0.U(32.W))
  val blinkReg = RegInit(false.B)


  val sevSeg@@ = WireDefault("b1111111".U(7.W))
  val sevSegDecoder = Module(new SevenSegDec())
  val activeDigit = Wire(UInt(4.W))
  val select = WireDefault("b0001".U(4.W))
  val cntMAX = (100000000 / 1000 - 1).U
  val cntReg = RegInit(0.U(32.W))
  val selReg = RegInit(false.B)

  // EDGE DETECTORS //
  val coin2Edge = io.coin2 && !RegNext(io.coin2)
  val coin5Edge = io.coin5 && !RegNext(io.coin5)
  val buyEdge   = io.buy   && !RegNext(io.buy)





 /////# FSM LOGIC #/////

  val isError = (totalMoney < io.price) && io.buy
 
  when (coin2Edge) {
    totalMoney := totalMoney + 2.U
  } .elsewhen (coin5Edge) {
    totalMoney := totalMoney + 5.U
  }

  when(buyEdge && (totalMoney >= io.price)) {
    totalMoney := totalMoney - io.price
  }

  blinkCounter := blinkCounter + 1.U
  when(blinkCounter === blinkFreq) {
    blinkCounter := 0.U
    blinkReg := !blinkReg
  }

  io.alarm := isError && blinkReg

  ///// DISPLAY LOGIC ////


  cntReg := cntReg + 1.U
  when(cntReg === cntMAX) {
    cntReg := 0.U
    selReg := !selReg
  }
 
  when(selReg) {
    activeDigit := "b0111".U
    sevSegDecoder.io.in := tensDigit
  } .otherwise {
    activeDigit := "b1011".U
    sevSegDecoder.io.in := onesDigit
  }

  ///// CAN RELEASE LOGIC /////
  io.releaseCan := (totalMoney >= io.price) && io.buy


  ///// OUTPUT ASSIGNMENTS /////
  io.seg := ~sevSegDecoder.io.out      
  io.an  := activeDigit     
}

// generate Verilog
object VendingMachine extends App {
  emitVerilog(new VendingMachine(100000))
}



```


#### Short summary: 

empty definition using pc, found symbol in pc: 