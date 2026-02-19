import chisel3._

/**
  * Use Mux2 components to build a 4:1 multiplexer
  */

class Mux4 extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(1.W))
    val b = Input(UInt(1.W))
    val c = Input(UInt(1.W))
    val d = Input(UInt(1.W))
    val sel = Input(UInt(2.W))
    val y = Output(UInt(1.W))
  })

  // ***** your code starts here *****

  // create a Mux4 component out of Mux2 components
  // and connect the input and output ports.

  val mA = Module(new Mux2()) // 00, 01
  val mB = Module(new Mux2()) // 10, 11
  val mOut = Module (new Mux2()) // Vælg om det er "1"0 eller "0"0 osv.

  mA.io.a := io.a
  mA.io.b := io.b
  mA.io.sel := io.sel(0)

  mB.io.a := io.c
  mB.io.b := io.d
  mB.io.sel := io.sel(0)


  mOut.io.a := mA.io.y
  mOut.io.b := mB.io.y
  mOut.io.sel := io.sel(1)

  io.y := mOut.io.y

  // ***** your code ends here *****
}