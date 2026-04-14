FIRRTL version 1.2.0
circuit Display :
  module SevenSegDec :
    input clock : Clock
    input reset : Reset
    output io : { flip in : UInt<4>, out : UInt<7>} @[\\src\\main\\scala\\SevenSegDec.scala 5:14]

    wire sevSeg : UInt @[\\src\\main\\scala\\SevenSegDec.scala 10:27]
    sevSeg <= UInt<1>("h0") @[\\src\\main\\scala\\SevenSegDec.scala 10:27]
    node _T = eq(UInt<1>("h0"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
    when _T : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
      sevSeg <= UInt<6>("h3f") @[\\src\\main\\scala\\SevenSegDec.scala 15:23]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
      when _T_1 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
        sevSeg <= UInt<3>("h6") @[\\src\\main\\scala\\SevenSegDec.scala 16:23]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
        when _T_2 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
          sevSeg <= UInt<7>("h5b") @[\\src\\main\\scala\\SevenSegDec.scala 17:23]
        else :
          node _T_3 = eq(UInt<2>("h3"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
          when _T_3 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
            sevSeg <= UInt<7>("h4f") @[\\src\\main\\scala\\SevenSegDec.scala 18:23]
          else :
            node _T_4 = eq(UInt<3>("h4"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
            when _T_4 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
              sevSeg <= UInt<7>("h66") @[\\src\\main\\scala\\SevenSegDec.scala 19:23]
            else :
              node _T_5 = eq(UInt<3>("h5"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
              when _T_5 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                sevSeg <= UInt<7>("h6d") @[\\src\\main\\scala\\SevenSegDec.scala 20:23]
              else :
                node _T_6 = eq(UInt<3>("h6"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                when _T_6 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                  sevSeg <= UInt<7>("h7d") @[\\src\\main\\scala\\SevenSegDec.scala 21:23]
                else :
                  node _T_7 = eq(UInt<3>("h7"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                  when _T_7 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                    sevSeg <= UInt<3>("h7") @[\\src\\main\\scala\\SevenSegDec.scala 22:23]
                  else :
                    node _T_8 = eq(UInt<4>("h8"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                    when _T_8 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                      sevSeg <= UInt<7>("h7f") @[\\src\\main\\scala\\SevenSegDec.scala 23:23]
                    else :
                      node _T_9 = eq(UInt<4>("h9"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                      when _T_9 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                        sevSeg <= UInt<7>("h6f") @[\\src\\main\\scala\\SevenSegDec.scala 24:23]
                      else :
                        node _T_10 = eq(UInt<4>("ha"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                        when _T_10 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                          sevSeg <= UInt<7>("h77") @[\\src\\main\\scala\\SevenSegDec.scala 25:24]
                        else :
                          node _T_11 = eq(UInt<4>("hb"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                          when _T_11 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                            sevSeg <= UInt<7>("h7c") @[\\src\\main\\scala\\SevenSegDec.scala 26:24]
                          else :
                            node _T_12 = eq(UInt<4>("hc"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                            when _T_12 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                              sevSeg <= UInt<6>("h39") @[\\src\\main\\scala\\SevenSegDec.scala 27:24]
                            else :
                              node _T_13 = eq(UInt<4>("hd"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                              when _T_13 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                                sevSeg <= UInt<7>("h5e") @[\\src\\main\\scala\\SevenSegDec.scala 28:24]
                              else :
                                node _T_14 = eq(UInt<4>("he"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                                when _T_14 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                                  sevSeg <= UInt<7>("h79") @[\\src\\main\\scala\\SevenSegDec.scala 29:24]
                                else :
                                  node _T_15 = eq(UInt<4>("hf"), io.in) @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                                  when _T_15 : @[\\src\\main\\scala\\SevenSegDec.scala 14:17]
                                    sevSeg <= UInt<7>("h71") @[\\src\\main\\scala\\SevenSegDec.scala 30:24]
    io.out <= sevSeg @[\\src\\main\\scala\\SevenSegDec.scala 36:10]

  module DisplayMultiplexer :
    input clock : Clock
    input reset : Reset
    output io : { flip sum : UInt<8>, flip price : UInt<8>, seg : UInt<7>, an : UInt<4>} @[\\src\\main\\scala\\DisplayMultiplexer.scala 5:14]

    wire sevSeg : UInt<7> @[\\src\\main\\scala\\DisplayMultiplexer.scala 12:27]
    sevSeg <= UInt<7>("h7f") @[\\src\\main\\scala\\DisplayMultiplexer.scala 12:27]
    wire select : UInt<4> @[\\src\\main\\scala\\DisplayMultiplexer.scala 13:27]
    select <= UInt<4>("h1") @[\\src\\main\\scala\\DisplayMultiplexer.scala 13:27]
    reg cntReg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 18:23]
    reg selReg : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 19:23]
    node _cntReg_T = add(cntReg, UInt<1>("h1")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 20:20]
    node _cntReg_T_1 = tail(_cntReg_T, 1) @[\\src\\main\\scala\\DisplayMultiplexer.scala 20:20]
    cntReg <= _cntReg_T_1 @[\\src\\main\\scala\\DisplayMultiplexer.scala 20:10]
    node _T = eq(cntReg, UInt<17>("h1869f")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 21:15]
    when _T : @[\\src\\main\\scala\\DisplayMultiplexer.scala 21:27]
      cntReg <= UInt<1>("h0") @[\\src\\main\\scala\\DisplayMultiplexer.scala 22:12]
      node _selReg_T = add(selReg, UInt<1>("h1")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 23:22]
      node _selReg_T_1 = tail(_selReg_T, 1) @[\\src\\main\\scala\\DisplayMultiplexer.scala 23:22]
      selReg <= _selReg_T_1 @[\\src\\main\\scala\\DisplayMultiplexer.scala 23:12]
    node _T_1 = eq(UInt<1>("h0"), selReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
    when _T_1 : @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
      select <= UInt<1>("h1") @[\\src\\main\\scala\\DisplayMultiplexer.scala 27:20]
    else :
      node _T_2 = eq(UInt<1>("h1"), selReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
      when _T_2 : @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
        select <= UInt<2>("h2") @[\\src\\main\\scala\\DisplayMultiplexer.scala 28:20]
      else :
        node _T_3 = eq(UInt<2>("h2"), selReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
        when _T_3 : @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
          select <= UInt<3>("h4") @[\\src\\main\\scala\\DisplayMultiplexer.scala 29:20]
        else :
          node _T_4 = eq(UInt<2>("h3"), selReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
          when _T_4 : @[\\src\\main\\scala\\DisplayMultiplexer.scala 26:17]
            select <= UInt<4>("h8") @[\\src\\main\\scala\\DisplayMultiplexer.scala 30:20]
    inst sevSegDecoder of SevenSegDec @[\\src\\main\\scala\\DisplayMultiplexer.scala 32:29]
    sevSegDecoder.clock <= clock
    sevSegDecoder.reset <= reset
    reg numReg1 : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 35:24]
    reg numReg2 : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[\\src\\main\\scala\\DisplayMultiplexer.scala 36:24]
    wire priceW : UInt<8> @[\\src\\main\\scala\\DisplayMultiplexer.scala 37:27]
    priceW <= UInt<8>("h0") @[\\src\\main\\scala\\DisplayMultiplexer.scala 37:27]
    wire sumW : UInt<8> @[\\src\\main\\scala\\DisplayMultiplexer.scala 38:25]
    sumW <= UInt<8>("h0") @[\\src\\main\\scala\\DisplayMultiplexer.scala 38:25]
    priceW <= io.price @[\\src\\main\\scala\\DisplayMultiplexer.scala 39:10]
    sumW <= io.sum @[\\src\\main\\scala\\DisplayMultiplexer.scala 40:8]
    numReg1 <= priceW @[\\src\\main\\scala\\DisplayMultiplexer.scala 42:11]
    numReg2 <= sumW @[\\src\\main\\scala\\DisplayMultiplexer.scala 43:11]
    wire displayNum : UInt<4> @[\\src\\main\\scala\\DisplayMultiplexer.scala 44:31]
    displayNum <= UInt<4>("h0") @[\\src\\main\\scala\\DisplayMultiplexer.scala 44:31]
    wire out1 : UInt<8> @[\\src\\main\\scala\\DisplayMultiplexer.scala 45:25]
    out1 <= UInt<8>("h0") @[\\src\\main\\scala\\DisplayMultiplexer.scala 45:25]
    wire out2 : UInt<8> @[\\src\\main\\scala\\DisplayMultiplexer.scala 46:25]
    out2 <= UInt<8>("h0") @[\\src\\main\\scala\\DisplayMultiplexer.scala 46:25]
    out1 <= numReg1 @[\\src\\main\\scala\\DisplayMultiplexer.scala 49:8]
    out2 <= numReg2 @[\\src\\main\\scala\\DisplayMultiplexer.scala 50:8]
    node _T_5 = eq(UInt<1>("h0"), selReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18]
    when _T_5 : @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18]
      node _displayNum_T = bits(out1, 3, 0) @[\\src\\main\\scala\\DisplayMultiplexer.scala 54:31]
      displayNum <= _displayNum_T @[\\src\\main\\scala\\DisplayMultiplexer.scala 54:24]
    else :
      node _T_6 = eq(UInt<1>("h1"), selReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18]
      when _T_6 : @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18]
        node _displayNum_T_1 = bits(out1, 7, 4) @[\\src\\main\\scala\\DisplayMultiplexer.scala 55:31]
        displayNum <= _displayNum_T_1 @[\\src\\main\\scala\\DisplayMultiplexer.scala 55:24]
      else :
        node _T_7 = eq(UInt<2>("h2"), selReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18]
        when _T_7 : @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18]
          node _displayNum_T_2 = bits(out2, 3, 0) @[\\src\\main\\scala\\DisplayMultiplexer.scala 56:31]
          displayNum <= _displayNum_T_2 @[\\src\\main\\scala\\DisplayMultiplexer.scala 56:24]
        else :
          node _T_8 = eq(UInt<2>("h3"), selReg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18]
          when _T_8 : @[\\src\\main\\scala\\DisplayMultiplexer.scala 53:18]
            node _displayNum_T_3 = bits(out2, 7, 4) @[\\src\\main\\scala\\DisplayMultiplexer.scala 57:31]
            displayNum <= _displayNum_T_3 @[\\src\\main\\scala\\DisplayMultiplexer.scala 57:24]
    sevSegDecoder.io.in <= displayNum @[\\src\\main\\scala\\DisplayMultiplexer.scala 59:23]
    sevSeg <= sevSegDecoder.io.out @[\\src\\main\\scala\\DisplayMultiplexer.scala 60:10]
    node _io_seg_T = not(sevSeg) @[\\src\\main\\scala\\DisplayMultiplexer.scala 65:13]
    io.seg <= _io_seg_T @[\\src\\main\\scala\\DisplayMultiplexer.scala 65:10]
    node _io_an_T = not(select) @[\\src\\main\\scala\\DisplayMultiplexer.scala 66:12]
    io.an <= _io_an_T @[\\src\\main\\scala\\DisplayMultiplexer.scala 66:9]

  module Display :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sw : UInt<16>, seg : UInt<7>, an : UInt<4>} @[\\src\\main\\scala\\Display.scala 9:14]

    inst dispMux of DisplayMultiplexer @[\\src\\main\\scala\\Display.scala 15:23]
    dispMux.clock <= clock
    dispMux.reset <= reset
    node _dispMux_io_price_T = bits(io.sw, 7, 0) @[\\src\\main\\scala\\Display.scala 18:28]
    dispMux.io.price <= _dispMux_io_price_T @[\\src\\main\\scala\\Display.scala 18:20]
    node _dispMux_io_sum_T = bits(io.sw, 15, 8) @[\\src\\main\\scala\\Display.scala 19:26]
    dispMux.io.sum <= _dispMux_io_sum_T @[\\src\\main\\scala\\Display.scala 19:18]
    io.seg <= dispMux.io.seg @[\\src\\main\\scala\\Display.scala 22:10]
    io.an <= dispMux.io.an @[\\src\\main\\scala\\Display.scala 23:9]

