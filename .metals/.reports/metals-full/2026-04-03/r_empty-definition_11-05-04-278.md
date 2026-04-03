error id: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab7/src/main/scala/SerialPort.scala:`<error>`#`<error>`.
file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab7/src/main/scala/SerialPort.scala
empty definition using pc, found symbol in pc: 
empty definition using semanticdb
empty definition using fallback
non-local guesses:
	 -chisel3/frequ.
	 -chisel3/frequ#
	 -chisel3/frequ().
	 -chisel3/util/frequ.
	 -chisel3/util/frequ#
	 -chisel3/util/frequ().
	 -chisel/lib/uart/frequ.
	 -chisel/lib/uart/frequ#
	 -chisel/lib/uart/frequ().
	 -frequ.
	 -frequ#
	 -frequ().
	 -scala/Predef.frequ.
	 -scala/Predef.frequ#
	 -scala/Predef.frequ().
offset: 1262
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
//LED tjek
  val CNT_MAX = (frequ / 2 - 1).U;
  val cntRegLED = RegInit(0.U(32.W))
  val blkReg = RegInit(false.B)

  cntRegLED := cntRegLED + 1.U
  when(cntRegLED === CNT_MAX) {
    cntRegLED := 0.U
    blkReg := !blkReg
  }
  io.led := blkReg


 val uart = Module(new BufferedTx(frequ, 115200))

  val hello = VecInit('H'.U, 'e'.U, 'l'.U, 'l'.U, 'o'.U, ' '.U, 'W'.U, 'o'.U, 'r'.U, 'l'.U, 'd'.U, '!'.U)
  val cntReg = RegInit(0.U(4.W)) // hello world er 12 tegn så 16 bits
  io.tx := uart.io.txd


  // slukket inden den er klar og kører på hello(cntReg)
  uart.io.channel.valid := false.B
  uart.io.channel.bits := hello(cntReg)

// husk at gøre den ready når den er valid inden man sender
  when(cntReg < 12.U) { 
    uart.io.channel.valid := true.B
    when(uart.io.channel.ready) {
      cntReg := cntReg + 1.U
    }
  } 
}

// generate Verilog
object SerialPort extends App {
  println(s"Generating the Verilog file for $frequ@@$ Hz")
  emitVerilog(new SerialPort(100000000))
  println("Done!")
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: 