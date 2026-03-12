FIRRTL version 1.2.0
circuit SevenSegDecoder :
  module SevenSegDecoder :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sw : UInt<4>, seg : UInt<7>, an : UInt<4>} @[\\src\\main\\scala\\SevenSegDecoder.scala 5:14]

    wire sevSeg : UInt<7> @[\\src\\main\\scala\\SevenSegDecoder.scala 11:27]
    sevSeg <= UInt<7>("h0") @[\\src\\main\\scala\\SevenSegDecoder.scala 11:27]
    node _T = eq(UInt<1>("h0"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
    when _T : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
      sevSeg <= UInt<6>("h3f") @[\\src\\main\\scala\\SevenSegDecoder.scala 15:23]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
      when _T_1 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
        sevSeg <= UInt<3>("h6") @[\\src\\main\\scala\\SevenSegDecoder.scala 16:23]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
        when _T_2 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
          sevSeg <= UInt<7>("h5b") @[\\src\\main\\scala\\SevenSegDecoder.scala 17:23]
        else :
          node _T_3 = eq(UInt<2>("h3"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
          when _T_3 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
            sevSeg <= UInt<7>("h4f") @[\\src\\main\\scala\\SevenSegDecoder.scala 18:23]
          else :
            node _T_4 = eq(UInt<3>("h4"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
            when _T_4 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
              sevSeg <= UInt<7>("h66") @[\\src\\main\\scala\\SevenSegDecoder.scala 19:23]
            else :
              node _T_5 = eq(UInt<3>("h5"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
              when _T_5 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                sevSeg <= UInt<7>("h6d") @[\\src\\main\\scala\\SevenSegDecoder.scala 20:23]
              else :
                node _T_6 = eq(UInt<3>("h6"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                when _T_6 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                  sevSeg <= UInt<7>("h7d") @[\\src\\main\\scala\\SevenSegDecoder.scala 21:23]
                else :
                  node _T_7 = eq(UInt<3>("h7"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                  when _T_7 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                    sevSeg <= UInt<3>("h7") @[\\src\\main\\scala\\SevenSegDecoder.scala 22:23]
                  else :
                    node _T_8 = eq(UInt<4>("h8"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                    when _T_8 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                      sevSeg <= UInt<7>("h7f") @[\\src\\main\\scala\\SevenSegDecoder.scala 23:23]
                    else :
                      node _T_9 = eq(UInt<4>("h9"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                      when _T_9 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                        sevSeg <= UInt<7>("h6f") @[\\src\\main\\scala\\SevenSegDecoder.scala 24:23]
                      else :
                        node _T_10 = eq(UInt<4>("ha"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                        when _T_10 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                          sevSeg <= UInt<7>("h77") @[\\src\\main\\scala\\SevenSegDecoder.scala 25:24]
                        else :
                          node _T_11 = eq(UInt<4>("hb"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                          when _T_11 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                            sevSeg <= UInt<7>("h7c") @[\\src\\main\\scala\\SevenSegDecoder.scala 26:24]
                          else :
                            node _T_12 = eq(UInt<4>("hc"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                            when _T_12 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                              sevSeg <= UInt<6>("h39") @[\\src\\main\\scala\\SevenSegDecoder.scala 27:24]
                            else :
                              node _T_13 = eq(UInt<4>("hd"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                              when _T_13 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                                sevSeg <= UInt<7>("h5e") @[\\src\\main\\scala\\SevenSegDecoder.scala 28:24]
                              else :
                                node _T_14 = eq(UInt<4>("he"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                                when _T_14 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                                  sevSeg <= UInt<7>("h79") @[\\src\\main\\scala\\SevenSegDecoder.scala 29:24]
                                else :
                                  node _T_15 = eq(UInt<4>("hf"), io.sw) @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                                  when _T_15 : @[\\src\\main\\scala\\SevenSegDecoder.scala 14:17]
                                    sevSeg <= UInt<7>("h71") @[\\src\\main\\scala\\SevenSegDecoder.scala 30:24]
    node _io_seg_T = not(sevSeg) @[\\src\\main\\scala\\SevenSegDecoder.scala 36:13]
    io.seg <= _io_seg_T @[\\src\\main\\scala\\SevenSegDecoder.scala 36:10]
    io.an <= UInt<4>("he") @[\\src\\main\\scala\\SevenSegDecoder.scala 37:9]

