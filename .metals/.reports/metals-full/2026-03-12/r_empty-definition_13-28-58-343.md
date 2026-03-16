error id: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab1/src/main/scala/Hello.scala:`<error>`#`<error>`.
file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab1/src/main/scala/Hello.scala
empty definition using pc, found symbol in pc: 
empty definition using semanticdb

found definition using fallback; symbol RegInit
offset: 403
uri: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab1/src/main/scala/Hello.scala
text:
```scala
/*
 * Blinking LED: the hardware version of Hello World
 *
 * Copyright: 2013, Technical University of Denmark, DTU Compute
 * Author: Martin Schoeberl (martin@jopdesign.com)
 * 
 */

import chisel3._

class Hello extends Module {
  val io = IO(new Bundle {
    val led = Output(UInt(1.W))
  })
  val CNT_MAX = (100000000 / 2 - 1).U;
  
  val cntReg = RegInit(0.U(32.W))
  val blkReg = @@RegInit(0.U(1.W))

  cntReg := cntReg + 1.U
  when(cntReg === CNT_MAX) {
    cntReg := 0.U
    blkReg := ~blkReg
  }
  io.led := blkReg
}

/**
 * An object extending App to generate the Verilog code.
 */
object HelloMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  emitVerilog(new Hello())
}

```


#### Short summary: 

empty definition using pc, found symbol in pc: 