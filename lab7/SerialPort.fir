FIRRTL version 1.2.0
circuit SerialPort :
  module Tx :
    input clock : Clock
    input reset : Reset
    output io : { txd : UInt<1>, flip channel : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>}} @[src/main/scala/chisel/lib/uart/Uart.scala 23:14]

    reg shiftReg : UInt, clock with :
      reset => (reset, UInt<11>("h7ff")) @[src/main/scala/chisel/lib/uart/Uart.scala 30:25]
    reg cntReg : UInt<20>, clock with :
      reset => (reset, UInt<20>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 31:23]
    reg bitsReg : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 32:24]
    node _io_channel_ready_T = eq(cntReg, UInt<1>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 34:31]
    node _io_channel_ready_T_1 = eq(bitsReg, UInt<1>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 34:52]
    node _io_channel_ready_T_2 = and(_io_channel_ready_T, _io_channel_ready_T_1) @[src/main/scala/chisel/lib/uart/Uart.scala 34:40]
    io.channel.ready <= _io_channel_ready_T_2 @[src/main/scala/chisel/lib/uart/Uart.scala 34:20]
    node _io_txd_T = bits(shiftReg, 0, 0) @[src/main/scala/chisel/lib/uart/Uart.scala 35:21]
    io.txd <= _io_txd_T @[src/main/scala/chisel/lib/uart/Uart.scala 35:10]
    node _T = eq(cntReg, UInt<1>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 37:15]
    when _T : @[src/main/scala/chisel/lib/uart/Uart.scala 37:24]
      cntReg <= UInt<10>("h363") @[src/main/scala/chisel/lib/uart/Uart.scala 39:12]
      node _T_1 = neq(bitsReg, UInt<1>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 40:18]
      when _T_1 : @[src/main/scala/chisel/lib/uart/Uart.scala 40:27]
        node shift = shr(shiftReg, 1) @[src/main/scala/chisel/lib/uart/Uart.scala 41:28]
        node _shiftReg_T = bits(shift, 9, 0) @[src/main/scala/chisel/lib/uart/Uart.scala 42:33]
        node _shiftReg_T_1 = cat(UInt<1>("h1"), _shiftReg_T) @[src/main/scala/chisel/lib/uart/Uart.scala 42:22]
        shiftReg <= _shiftReg_T_1 @[src/main/scala/chisel/lib/uart/Uart.scala 42:16]
        node _bitsReg_T = sub(bitsReg, UInt<1>("h1")) @[src/main/scala/chisel/lib/uart/Uart.scala 43:26]
        node _bitsReg_T_1 = tail(_bitsReg_T, 1) @[src/main/scala/chisel/lib/uart/Uart.scala 43:26]
        bitsReg <= _bitsReg_T_1 @[src/main/scala/chisel/lib/uart/Uart.scala 43:15]
      else :
        when io.channel.valid : @[src/main/scala/chisel/lib/uart/Uart.scala 45:30]
          node _shiftReg_T_2 = cat(UInt<2>("h3"), io.channel.bits) @[src/main/scala/chisel/lib/uart/Uart.scala 46:28]
          node _shiftReg_T_3 = cat(_shiftReg_T_2, UInt<1>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 46:24]
          shiftReg <= _shiftReg_T_3 @[src/main/scala/chisel/lib/uart/Uart.scala 46:18]
          bitsReg <= UInt<4>("hb") @[src/main/scala/chisel/lib/uart/Uart.scala 47:17]
        else :
          shiftReg <= UInt<11>("h7ff") @[src/main/scala/chisel/lib/uart/Uart.scala 49:18]
    else :
      node _cntReg_T = sub(cntReg, UInt<1>("h1")) @[src/main/scala/chisel/lib/uart/Uart.scala 54:22]
      node _cntReg_T_1 = tail(_cntReg_T, 1) @[src/main/scala/chisel/lib/uart/Uart.scala 54:22]
      cntReg <= _cntReg_T_1 @[src/main/scala/chisel/lib/uart/Uart.scala 54:12]


  module Buffer :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>}, out : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>}} @[src/main/scala/chisel/lib/uart/Uart.scala 111:14]

    reg stateReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 117:25]
    reg dataReg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 118:24]
    node _io_in_ready_T = eq(stateReg, UInt<1>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 120:27]
    io.in.ready <= _io_in_ready_T @[src/main/scala/chisel/lib/uart/Uart.scala 120:15]
    node _io_out_valid_T = eq(stateReg, UInt<1>("h1")) @[src/main/scala/chisel/lib/uart/Uart.scala 121:28]
    io.out.valid <= _io_out_valid_T @[src/main/scala/chisel/lib/uart/Uart.scala 121:16]
    node _T = eq(stateReg, UInt<1>("h0")) @[src/main/scala/chisel/lib/uart/Uart.scala 123:17]
    when _T : @[src/main/scala/chisel/lib/uart/Uart.scala 123:28]
      when io.in.valid : @[src/main/scala/chisel/lib/uart/Uart.scala 124:23]
        dataReg <= io.in.bits @[src/main/scala/chisel/lib/uart/Uart.scala 125:15]
        stateReg <= UInt<1>("h1") @[src/main/scala/chisel/lib/uart/Uart.scala 126:16]
    else :
      when io.out.ready : @[src/main/scala/chisel/lib/uart/Uart.scala 129:24]
        stateReg <= UInt<1>("h0") @[src/main/scala/chisel/lib/uart/Uart.scala 130:16]
    io.out.bits <= dataReg @[src/main/scala/chisel/lib/uart/Uart.scala 133:15]

  module BufferedTx :
    input clock : Clock
    input reset : Reset
    output io : { txd : UInt<1>, flip channel : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>}} @[src/main/scala/chisel/lib/uart/Uart.scala 140:14]

    inst tx of Tx @[src/main/scala/chisel/lib/uart/Uart.scala 144:18]
    tx.clock <= clock
    tx.reset <= reset
    inst buf of Buffer @[src/main/scala/chisel/lib/uart/Uart.scala 145:19]
    buf.clock <= clock
    buf.reset <= reset
    buf.io.in <= io.channel @[src/main/scala/chisel/lib/uart/Uart.scala 147:13]
    tx.io.channel <= buf.io.out @[src/main/scala/chisel/lib/uart/Uart.scala 148:17]
    io.txd <= tx.io.txd @[src/main/scala/chisel/lib/uart/Uart.scala 149:10]

  module SerialPort :
    input clock : Clock
    input reset : UInt<1>
    output io : { tx : UInt<1>, led : UInt<1>} @[\\src\\main\\scala\\SerialPort.scala 9:14]

    reg cntRegLED : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[\\src\\main\\scala\\SerialPort.scala 15:26]
    reg blkReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[\\src\\main\\scala\\SerialPort.scala 16:23]
    node _cntRegLED_T = add(cntRegLED, UInt<1>("h1")) @[\\src\\main\\scala\\SerialPort.scala 18:26]
    node _cntRegLED_T_1 = tail(_cntRegLED_T, 1) @[\\src\\main\\scala\\SerialPort.scala 18:26]
    cntRegLED <= _cntRegLED_T_1 @[\\src\\main\\scala\\SerialPort.scala 18:13]
    node _T = eq(cntRegLED, UInt<26>("h2faf07f")) @[\\src\\main\\scala\\SerialPort.scala 19:18]
    when _T : @[\\src\\main\\scala\\SerialPort.scala 19:31]
      cntRegLED <= UInt<1>("h0") @[\\src\\main\\scala\\SerialPort.scala 20:15]
      node _blkReg_T = eq(blkReg, UInt<1>("h0")) @[\\src\\main\\scala\\SerialPort.scala 21:15]
      blkReg <= _blkReg_T @[\\src\\main\\scala\\SerialPort.scala 21:12]
    io.led <= blkReg @[\\src\\main\\scala\\SerialPort.scala 23:10]
    inst uart of BufferedTx @[\\src\\main\\scala\\SerialPort.scala 26:19]
    uart.clock <= clock
    uart.reset <= reset
    wire hello : UInt<7>[12] @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[0] <= UInt<7>("h48") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[1] <= UInt<7>("h65") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[2] <= UInt<7>("h6c") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[3] <= UInt<7>("h6c") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[4] <= UInt<7>("h6f") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[5] <= UInt<6>("h20") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[6] <= UInt<7>("h57") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[7] <= UInt<7>("h6f") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[8] <= UInt<7>("h72") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[9] <= UInt<7>("h6c") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[10] <= UInt<7>("h64") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    hello[11] <= UInt<6>("h21") @[\\src\\main\\scala\\SerialPort.scala 28:22]
    reg cntReg : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[\\src\\main\\scala\\SerialPort.scala 29:23]
    io.tx <= uart.io.txd @[\\src\\main\\scala\\SerialPort.scala 30:9]
    uart.io.channel.valid <= UInt<1>("h0") @[\\src\\main\\scala\\SerialPort.scala 34:25]
    uart.io.channel.bits <= hello[cntReg] @[\\src\\main\\scala\\SerialPort.scala 35:24]
    node _T_1 = lt(cntReg, UInt<4>("hc")) @[\\src\\main\\scala\\SerialPort.scala 38:15]
    when _T_1 : @[\\src\\main\\scala\\SerialPort.scala 38:23]
      uart.io.channel.valid <= UInt<1>("h1") @[\\src\\main\\scala\\SerialPort.scala 39:27]
      when uart.io.channel.ready : @[\\src\\main\\scala\\SerialPort.scala 40:33]
        node _cntReg_T = add(cntReg, UInt<1>("h1")) @[\\src\\main\\scala\\SerialPort.scala 41:24]
        node _cntReg_T_1 = tail(_cntReg_T, 1) @[\\src\\main\\scala\\SerialPort.scala 41:24]
        cntReg <= _cntReg_T_1 @[\\src\\main\\scala\\SerialPort.scala 41:14]


