import chisel3._

/**
  * Use Mux2 components to build a 4:1 multiplexer
  */

class Mux4 extends Module {
  val io = IO(new Bundle {
    val sw  = Input(UInt(16.W))  // Map to io_sw
    val led = Output(UInt(16.W)) // Map to io_led
  })

  // ***** your code starts here *****

  // create a Mux4 component out of Mux2 components
  // and connect the input and output ports.

  val mA = Module(new Mux2()) // 00, 01
  val mB = Module(new Mux2()) // 10, 11
  val mOut = Module (new Mux2()) // Vælg om det er "1"0 eller "0"0 osv.

  mA.io.a := io.sw(0)
  mA.io.b := io.sw(1)
  mA.io.sel := io.sw(4)

  mB.io.a := io.sw(2)
  mB.io.b := io.sw(3)
  mB.io.sel := io.sw(4)


  mOut.io.a := mA.io.y
  mOut.io.b := mB.io.y
  mOut.io.sel := io.sw(5)

  io.led := mOut.io.y 

  // ***** your code ends here *****
}