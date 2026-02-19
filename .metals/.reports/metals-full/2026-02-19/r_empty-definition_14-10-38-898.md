error id: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab3/src/main/scala/UseMux2.scala:`<error>`#`<error>`.
file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab3/src/main/scala/UseMux2.scala
empty definition using pc, found symbol in pc: 
empty definition using semanticdb

found definition using fallback; symbol UInt
offset: 103
uri: file:///C:/Users/mikke/OneDrive/Desktop/DTU/02139%20Digital%20Electronics%202/chisel-lab/lab3/src/main/scala/UseMux2.scala
text:
```scala
import chisel3._

class UseMux2 extends Module {
  val io = IO(new Bundle {
    val sel = Input(UIn@@t(1.W))
    val dout = Output(UInt(1.W))
  })

  val a = 1.U
  val b = 0.U
  val sel = io.sel
  val res = Wire(UInt())

  // ***** your code starts here *****

  // create a Mux2 component and connect it to a, b, sel, and res

  val mux2 = Module(new Mux2()) 
  mux2.io.sel := sel            
  mux2.io.a := a
  mux2.io.b := b
  res := mux2.io.y
  

  // ***** your code ends here *****

  io.dout := res
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: 