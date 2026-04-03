error id: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab7/src/main/scala/SerialPort.scala:
file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab7/src/main/scala/SerialPort.scala
empty definition using pc, found symbol in pc: 
empty definition using semanticdb
empty definition using fallback
non-local guesses:
	 -chisel3/io/led.
	 -chisel3/io/led#
	 -chisel3/io/led().
	 -chisel3/util/io/led.
	 -chisel3/util/io/led#
	 -chisel3/util/io/led().
	 -chisel/lib/uart/io/led.
	 -chisel/lib/uart/io/led#
	 -chisel/lib/uart/io/led().
	 -io/led.
	 -io/led#
	 -io/led().
	 -scala/Predef.io.led.
	 -scala/Predef.io.led#
	 -scala/Predef.io.led().
offset: 321
uri: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab7/src/main/scala/SerialPort.scala
text:
```scala
import chisel3._
import chisel3.util._
import chisel.lib.uart._

/**
  * This is the top level to for the UART output and a test blinking LED.
  */
class SerialPort(frequ: Int) extends Module {
  val io = IO(new Bundle {
    val tx = Output(Bool())
    val led = Output(Bool())
  })
  io.tx := true.B
  io.le@@d := true.B

val hello = VecInit('H'.U, 'e'.U, 'l'.U, ...)


  
}





// generate Verilog
object SerialPort extends App {
  emitVerilog(new SerialPort(100000000))
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: 