error id: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab3/src/main/scala/Delay.scala:local6
file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab3/src/main/scala/Delay.scala
empty definition using pc, found symbol in pc: 
empty definition using semanticdb
empty definition using fallback
non-local guesses:
	 -chisel3/io/din.
	 -chisel3/io/din#
	 -chisel3/io/din().
	 -io/din.
	 -io/din#
	 -io/din().
	 -scala/Predef.io.din.
	 -scala/Predef.io.din#
	 -scala/Predef.io.din().
offset: 246
uri: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab3/src/main/scala/Delay.scala
text:
```scala
import chisel3._

class Delay extends Module {
  val io = IO(new Bundle {
    val din = Input(UInt(8.W))
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())

  // ***** your code starts here *****

  val reg1 = RegNext(io.@@din)
  val reg2 = RegNext(reg1)

  res := reg2


  // ***** your code ends here *****

  io.dout := res
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: 