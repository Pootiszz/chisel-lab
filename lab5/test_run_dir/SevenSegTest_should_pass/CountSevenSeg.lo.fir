FIRRTL version 1.2.0
circuit CountSevenSeg :
  module SevenSegDecoder :
    input clock : Clock
    input reset : UInt<1>
    input io_sw : UInt<4> @[\\src\\main\\scala\\SevenSegDecoder.scala 5:14]
    output io_seg : UInt<7> @[\\src\\main\\scala\\SevenSegDecoder.scala 5:14]
    output io_an : UInt<4> @[\\src\\main\\scala\\SevenSegDecoder.scala 5:14]

    node _T = eq(UInt<1>("h0"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_1 = eq(UInt<1>("h1"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_2 = eq(UInt<2>("h2"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_3 = eq(UInt<2>("h3"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_4 = eq(UInt<3>("h4"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_5 = eq(UInt<3>("h5"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_6 = eq(UInt<3>("h6"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_7 = eq(UInt<3>("h7"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_8 = eq(UInt<4>("h8"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_9 = eq(UInt<4>("h9"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_10 = eq(UInt<4>("ha"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_11 = eq(UInt<4>("hb"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_12 = eq(UInt<4>("hc"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_13 = eq(UInt<4>("hd"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_14 = eq(UInt<4>("he"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _T_15 = eq(UInt<4>("hf"), io_sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    node _GEN_0 = mux(_T_15, UInt<7>("h71"), UInt<7>("h0")) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 30:24 11:27]
    node _GEN_1 = mux(_T_14, UInt<7>("h79"), _GEN_0) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 29:24]
    node _GEN_2 = mux(_T_13, UInt<7>("h5e"), _GEN_1) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 28:24]
    node _GEN_3 = mux(_T_12, UInt<6>("h39"), _GEN_2) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 27:24]
    node _GEN_4 = mux(_T_11, UInt<7>("h7c"), _GEN_3) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 26:24]
    node _GEN_5 = mux(_T_10, UInt<7>("h77"), _GEN_4) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 25:24]
    node _GEN_6 = mux(_T_9, UInt<7>("h6f"), _GEN_5) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 24:23]
    node _GEN_7 = mux(_T_8, UInt<7>("h7f"), _GEN_6) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 23:23]
    node _GEN_8 = mux(_T_7, UInt<3>("h7"), _GEN_7) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 22:23]
    node _GEN_9 = mux(_T_6, UInt<7>("h7d"), _GEN_8) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 21:23]
    node _GEN_10 = mux(_T_5, UInt<7>("h6d"), _GEN_9) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 20:23]
    node _GEN_11 = mux(_T_4, UInt<7>("h66"), _GEN_10) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 19:23]
    node _GEN_12 = mux(_T_3, UInt<7>("h4f"), _GEN_11) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 18:23]
    node _GEN_13 = mux(_T_2, UInt<7>("h5b"), _GEN_12) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 17:23]
    node _GEN_14 = mux(_T_1, UInt<3>("h6"), _GEN_13) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 16:23]
    node _GEN_15 = mux(_T, UInt<6>("h3f"), _GEN_14) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17 15:23]
    node sevSeg = _GEN_15 @[\\src\\main\\scala\\SevenSegDecoder.scala 11:27]
    node _io_seg_T = not(sevSeg) @[\\src\\main\\scala\\SevenSegDecoder.scala 36:13]
    io_seg <= _io_seg_T @[\\src\\main\\scala\\SevenSegDecoder.scala 36:10]
    io_an <= UInt<4>("he") @[\\src\\main\\scala\\SevenSegDecoder.scala 37:9]

  module CountSevenSeg :
    input clock : Clock
    input reset : UInt<1>
    output io_seg : UInt<7> @[\\src\\main\\scala\\CountSevenSeg.scala 5:14]
    output io_an : UInt<4> @[\\src\\main\\scala\\CountSevenSeg.scala 5:14]

    inst sevSegDecoder of SevenSegDecoder @[\\src\\main\\scala\\CountSevenSeg.scala 26:29]
    reg cntReg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), cntReg) @[\\src\\main\\scala\\CountSevenSeg.scala 16:23]
    reg blkReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), blkReg) @[\\src\\main\\scala\\CountSevenSeg.scala 17:23]
    node _cntReg_T = add(cntReg, UInt<1>("h1")) @[\\src\\main\\scala\\CountSevenSeg.scala 19:20]
    node _cntReg_T_1 = tail(_cntReg_T, 1) @[\\src\\main\\scala\\CountSevenSeg.scala 19:20]
    node _T = eq(cntReg, UInt<26>("h2faf07f")) @[\\src\\main\\scala\\CountSevenSeg.scala 20:15]
    node _blkReg_T = add(blkReg, UInt<1>("h1")) @[\\src\\main\\scala\\CountSevenSeg.scala 22:22]
    node _blkReg_T_1 = tail(_blkReg_T, 1) @[\\src\\main\\scala\\CountSevenSeg.scala 22:22]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _cntReg_T_1) @[\\src\\main\\scala\\CountSevenSeg.scala 19:10 20:28 21:12]
    node _GEN_1 = mux(_T, _blkReg_T_1, blkReg) @[\\src\\main\\scala\\CountSevenSeg.scala 20:28 22:12 17:23]
    node sevSeg = sevSegDecoder.io_seg @[\\src\\main\\scala\\CountSevenSeg.scala 10:27 28:10]
    io_seg <= sevSegDecoder.io_seg @[\\src\\main\\scala\\CountSevenSeg.scala 32:10]
    io_an <= sevSegDecoder.io_an @[\\src\\main\\scala\\CountSevenSeg.scala 33:9]
    cntReg <= mux(reset, UInt<32>("h0"), _GEN_0) @[\\src\\main\\scala\\CountSevenSeg.scala 16:{23,23}]
    blkReg <= mux(reset, UInt<4>("h0"), _GEN_1) @[\\src\\main\\scala\\CountSevenSeg.scala 17:{23,23}]
    sevSegDecoder.clock <= clock
    sevSegDecoder.reset <= reset
    sevSegDecoder.io_sw <= blkReg @[\\src\\main\\scala\\CountSevenSeg.scala 27:23]
