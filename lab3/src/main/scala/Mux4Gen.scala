import chisel3._
import chisel3.util._

object Mux4Main extends App {
  emitVerilog(new Mux4())
}