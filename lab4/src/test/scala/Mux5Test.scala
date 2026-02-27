import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class Mux5Test extends AnyFlatSpec with ChiselScalatestTester {
  "Mux5" should "correctly select the input based on sel" in {
    test(new Mux5()) { dut =>
      // Sig, at man skal tjekke ved a, b, c osv, og så kalder jeg dem bare 1,2,4 osv.
      // vi finder outputs af a,b,c,d,e.
      dut.io.a.poke(1.U)
      dut.io.b.poke(2.U)
      dut.io.c.poke(4.U)
      dut.io.d.poke(8.U)
      dut.io.e.poke(16.U)

      // 2. Test nu om vores sel passer til hver værdi, altså vi poker for værdien sel = 0 og får svaret,
      // og så ser vi hvad de er sammenlignet med hvad vi fik før, ellers send en fejl.
      
      dut.io.sel.poke(0.U)
      dut.io.y.expect(1.U, "Failed at sel=0")

      dut.io.sel.poke(1.U)
      dut.io.y.expect(2.U, "Failed at sel=1")

      dut.io.sel.poke(2.U)
      dut.io.y.expect(4.U, "Failed at sel=2")

      dut.io.sel.poke(3.U)
      dut.io.y.expect(8.U, "Failed at sel=3")

      dut.io.sel.poke(4.U)
      dut.io.y.expect(16.U, "Failed at sel=4")
    }
  }
}