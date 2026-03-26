FIRRTL version 1.2.0
circuit Display :
  module SevenSegDec :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4> @[\\src\\main\\scala\\SevenSegDec.scala 5:14]
    output io_out : UInt<7> @[\\src\\main\\scala\\SevenSegDec.scala 5:14]

    node _T = eq(UInt<1>("h0"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_1 = eq(UInt<1>("h1"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_2 = eq(UInt<2>("h2"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_3 = eq(UInt<2>("h3"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_4 = eq(UInt<3>("h4"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_5 = eq(UInt<3>("h5"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_6 = eq(UInt<3>("h6"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_7 = eq(UInt<3>("h7"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_8 = eq(UInt<4>("h8"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_9 = eq(UInt<4>("h9"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_10 = eq(UInt<4>("ha"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_11 = eq(UInt<4>("hb"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_12 = eq(UInt<4>("hc"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_13 = eq(UInt<4>("hd"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_14 = eq(UInt<4>("he"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _T_15 = eq(UInt<4>("hf"), io_in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    node _GEN_0 = mux(_T_15, UInt<7>("h71"), UInt<1>("h0")) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 30:24 10:27]
    node _GEN_1 = mux(_T_14, UInt<7>("h79"), _GEN_0) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 29:24]
    node _GEN_2 = mux(_T_13, UInt<7>("h5e"), _GEN_1) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 28:24]
    node _GEN_3 = mux(_T_12, UInt<6>("h39"), _GEN_2) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 27:24]
    node _GEN_4 = mux(_T_11, UInt<7>("h7c"), _GEN_3) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 26:24]
    node _GEN_5 = mux(_T_10, UInt<7>("h77"), _GEN_4) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 25:24]
    node _GEN_6 = mux(_T_9, UInt<7>("h6f"), _GEN_5) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 24:23]
    node _GEN_7 = mux(_T_8, UInt<7>("h7f"), _GEN_6) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 23:23]
    node _GEN_8 = mux(_T_7, UInt<3>("h7"), _GEN_7) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 22:23]
    node _GEN_9 = mux(_T_6, UInt<7>("h7d"), _GEN_8) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 21:23]
    node _GEN_10 = mux(_T_5, UInt<7>("h6d"), _GEN_9) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 20:23]
    node _GEN_11 = mux(_T_4, UInt<7>("h66"), _GEN_10) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 19:23]
    node _GEN_12 = mux(_T_3, UInt<7>("h4f"), _GEN_11) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 18:23]
    node _GEN_13 = mux(_T_2, UInt<7>("h5b"), _GEN_12) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 17:23]
    node _GEN_14 = mux(_T_1, UInt<3>("h6"), _GEN_13) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 16:23]
    node _GEN_15 = mux(_T, UInt<6>("h3f"), _GEN_14) @[\\src\\main\\scala\\SevenSegDec.scala 14:17 15:23]
    node sevSeg = _GEN_15 @[\\src\\main\\scala\\SevenSegDec.scala 10:27]
    io_out <= sevSeg @[\\src\\main\\scala\\SevenSegDec.scala 36:10]

  module DisplayMultiplexer :
    input clock : Clock
    input reset : UInt<1>
    input io_sum : UInt<8> @[\\src\\main\\scala\\DisplayMultiplexer.scala 6:14]
    input io_price : UInt<8> @[\\src\\main\\scala\\DisplayMultiplexer.scala 6:14]
    output io_seg : UInt<7> @[\\src\\main\\scala\\DisplayMultiplexer.scala 6:14]
    output io_an : UInt<4> @[\\src\\main\\scala\\DisplayMultiplexer.scala 6:14]

    inst decoder of SevenSegDec @[\\src\\main\\scala\\DisplayMultiplexer.scala 47:23]
    reg displayReg : UInt<18>, clock with :
      reset => (UInt<1>("h0"), displayReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 18:28]
    reg countReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), countReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 19:25]
    node _displayReg_T = eq(displayReg, UInt<5>("h13")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 22:32]
    node _displayReg_T_1 = add(displayReg, UInt<1>("h1")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 22:70]
    node _displayReg_T_2 = tail(_displayReg_T_1, 1) @[\\src\\main\\scala\\DisplayMultiplexer.scala 22:70]
    node _displayReg_T_3 = mux(_displayReg_T, UInt<1>("h0"), _displayReg_T_2) @[\\src\\main\\scala\\DisplayMultiplexer.scala 22:20]
    node _T = eq(displayReg, UInt<1>("h0")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 24:19]
    node _countReg_T = add(countReg, UInt<1>("h1")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 25:26]
    node _countReg_T_1 = tail(_countReg_T, 1) @[\\src\\main\\scala\\DisplayMultiplexer.scala 25:26]
    node _GEN_0 = mux(_T, _countReg_T_1, countReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 24:28 25:14 19:25]
    node _T_1 = eq(UInt<1>("h0"), countReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20]
    node _input_T = bits(io_price, 3, 0) @[\\src\\main\\scala\\DisplayMultiplexer.scala 31:25]
    node _T_2 = eq(UInt<1>("h1"), countReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20]
    node _input_T_1 = bits(io_price, 7, 4) @[\\src\\main\\scala\\DisplayMultiplexer.scala 35:25]
    node _T_3 = eq(UInt<2>("h2"), countReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20]
    node _input_T_2 = bits(io_sum, 3, 0) @[\\src\\main\\scala\\DisplayMultiplexer.scala 39:23]
    node _T_4 = eq(UInt<2>("h3"), countReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20]
    node _input_T_3 = bits(io_sum, 7, 4) @[\\src\\main\\scala\\DisplayMultiplexer.scala 43:23]
    node _GEN_1 = mux(_T_4, UInt<4>("h8"), UInt<4>("h1")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20 42:14 14:27]
    node _GEN_2 = mux(_T_4, _input_T_3, UInt<4>("h0")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20 43:14 20:26]
    node _GEN_3 = mux(_T_3, UInt<3>("h4"), _GEN_1) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20 38:14]
    node _GEN_4 = mux(_T_3, _input_T_2, _GEN_2) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20 39:14]
    node _GEN_5 = mux(_T_2, UInt<2>("h2"), _GEN_3) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20 34:14]
    node _GEN_6 = mux(_T_2, _input_T_1, _GEN_4) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20 35:14]
    node _GEN_7 = mux(_T_1, UInt<1>("h1"), _GEN_5) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20 30:14]
    node _GEN_8 = mux(_T_1, _input_T, _GEN_6) @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20 31:14]
    node sevSeg = decoder.io_out @[\\src\\main\\scala\\DisplayMultiplexer.scala 13:27 49:10]
    node _io_seg_T = not(sevSeg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:13]
    node select = _GEN_7 @[\\src\\main\\scala\\DisplayMultiplexer.scala 14:27]
    node _io_an_T = not(select) @[\\src\\main\\scala\\DisplayMultiplexer.scala 54:12]
    node input = _GEN_8 @[\\src\\main\\scala\\DisplayMultiplexer.scala 20:26]
    io_seg <= _io_seg_T @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:10]
    io_an <= _io_an_T @[\\src\\main\\scala\\DisplayMultiplexer.scala 54:9]
    displayReg <= mux(reset, UInt<18>("h0"), _displayReg_T_3) @[\\src\\main\\scala\\DisplayMultiplexer.scala 18:{28,28} 22:14]
    countReg <= mux(reset, UInt<2>("h0"), _GEN_0) @[\\src\\main\\scala\\DisplayMultiplexer.scala 19:{25,25}]
    decoder.clock <= clock
    decoder.reset <= reset
    decoder.io_in <= input @[\\src\\main\\scala\\DisplayMultiplexer.scala 48:17]

  module Display :
    input clock : Clock
    input reset : UInt<1>
    input io_sw : UInt<16> @[\\src\\main\\scala\\Display.scala 9:14]
    output io_seg : UInt<7> @[\\src\\main\\scala\\Display.scala 9:14]
    output io_an : UInt<4> @[\\src\\main\\scala\\Display.scala 9:14]

    inst dispMux of DisplayMultiplexer @[\\src\\main\\scala\\Display.scala 15:23]
    node _dispMux_io_price_T = bits(io_sw, 7, 0) @[\\src\\main\\scala\\Display.scala 18:28]
    node _dispMux_io_sum_T = bits(io_sw, 15, 8) @[\\src\\main\\scala\\Display.scala 19:26]
    io_seg <= dispMux.io_seg @[\\src\\main\\scala\\Display.scala 22:10]
    io_an <= dispMux.io_an @[\\src\\main\\scala\\Display.scala 23:9]
    dispMux.clock <= clock
    dispMux.reset <= reset
    dispMux.io_sum <= _dispMux_io_sum_T @[\\src\\main\\scala\\Display.scala 19:18]
    dispMux.io_price <= _dispMux_io_price_T @[\\src\\main\\scala\\Display.scala 18:20]
