import chisel3._

class Accu extends Module {
  val io = IO(new Bundle {
    val din = Input(UInt(8.W))
    val setZero = Input(Bool())
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())

  // ***** your code starts here *****
  // lav registrer
  val valReg = RegInit (0.U(4.W))

 // hvis den skal sættes til 0, altså input setzero er 1, så sæt den til 0
  valReg := Mux(io.setZero, 0.U, valReg + io.din)

  res := valReg

  // ***** your code ends here *****

  io.dout := res
}