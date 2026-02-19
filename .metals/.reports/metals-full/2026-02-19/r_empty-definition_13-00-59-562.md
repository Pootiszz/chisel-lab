error id: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab3/src/main/scala/Mux4.scala:
file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab3/src/main/scala/Mux4.scala
empty definition using pc, found symbol in pc: 
empty definition using semanticdb
empty definition using fallback
non-local guesses:
	 -chisel3/io_sw.
	 -chisel3/io_sw#
	 -chisel3/io_sw().
	 -io_sw.
	 -io_sw#
	 -io_sw().
	 -scala/Predef.io_sw.
	 -scala/Predef.io_sw#
	 -scala/Predef.io_sw().
offset: 764
uri: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab3/src/main/scala/Mux4.scala
text:
```scala
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
  mOut.io.sel := @@io.sw(0)

  io.led := mOut.io.y 

  // ***** your code ends here *****
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: 