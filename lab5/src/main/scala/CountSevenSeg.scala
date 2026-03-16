import chisel3._
import chisel3.util._

class CountSevenSeg extends Module {
  val io = IO(new Bundle {
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSeg = WireDefault("b1111111".U(7.W))

  // *** your code starts here
  // Timing
  val CNT_MAX = (100000000 / 2 - 1).U;
  
  val cntReg = RegInit(0.U(32.W))
  val blkReg = RegInit(0.U(4.W))

  cntReg := cntReg + 1.U
  when(cntReg === CNT_MAX) {
    cntReg := 0.U
    blkReg := blkReg + 1.U
  }

  // Seven segment decoder
  val sevSegDecoder = Module(new SevenSegDecoder())
  sevSegDecoder.io.sw := blkReg
  sevSeg := sevSegDecoder.io.seg

  // *** your code ends here

  io.seg := sevSegDecoder.io.seg
  io.an := sevSegDecoder.io.an
}

// generate Verilog
object CountSevenSeg extends App {
  emitVerilog(new CountSevenSeg())
}
