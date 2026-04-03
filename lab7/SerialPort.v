module Tx(
  input        clock,
  input        reset,
  output       io_txd, // @[src/main/scala/chisel/lib/uart/Uart.scala 23:14]
  output       io_channel_ready, // @[src/main/scala/chisel/lib/uart/Uart.scala 23:14]
  input        io_channel_valid, // @[src/main/scala/chisel/lib/uart/Uart.scala 23:14]
  input  [7:0] io_channel_bits // @[src/main/scala/chisel/lib/uart/Uart.scala 23:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [10:0] shiftReg; // @[src/main/scala/chisel/lib/uart/Uart.scala 30:25]
  reg [19:0] cntReg; // @[src/main/scala/chisel/lib/uart/Uart.scala 31:23]
  reg [3:0] bitsReg; // @[src/main/scala/chisel/lib/uart/Uart.scala 32:24]
  wire  _io_channel_ready_T = cntReg == 20'h0; // @[src/main/scala/chisel/lib/uart/Uart.scala 34:31]
  wire [9:0] shift = shiftReg[10:1]; // @[src/main/scala/chisel/lib/uart/Uart.scala 41:28]
  wire [10:0] _shiftReg_T_1 = {1'h1,shift}; // @[src/main/scala/chisel/lib/uart/Uart.scala 42:22]
  wire [3:0] _bitsReg_T_1 = bitsReg - 4'h1; // @[src/main/scala/chisel/lib/uart/Uart.scala 43:26]
  wire [10:0] _shiftReg_T_3 = {2'h3,io_channel_bits,1'h0}; // @[src/main/scala/chisel/lib/uart/Uart.scala 46:24]
  wire [19:0] _cntReg_T_1 = cntReg - 20'h1; // @[src/main/scala/chisel/lib/uart/Uart.scala 54:22]
  assign io_txd = shiftReg[0]; // @[src/main/scala/chisel/lib/uart/Uart.scala 35:21]
  assign io_channel_ready = cntReg == 20'h0 & bitsReg == 4'h0; // @[src/main/scala/chisel/lib/uart/Uart.scala 34:40]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 30:25]
      shiftReg <= 11'h7ff; // @[src/main/scala/chisel/lib/uart/Uart.scala 30:25]
    end else if (_io_channel_ready_T) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 37:24]
      if (bitsReg != 4'h0) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 40:27]
        shiftReg <= _shiftReg_T_1; // @[src/main/scala/chisel/lib/uart/Uart.scala 42:16]
      end else if (io_channel_valid) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 45:30]
        shiftReg <= _shiftReg_T_3; // @[src/main/scala/chisel/lib/uart/Uart.scala 46:18]
      end else begin
        shiftReg <= 11'h7ff; // @[src/main/scala/chisel/lib/uart/Uart.scala 49:18]
      end
    end
    if (reset) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 31:23]
      cntReg <= 20'h0; // @[src/main/scala/chisel/lib/uart/Uart.scala 31:23]
    end else if (_io_channel_ready_T) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 37:24]
      cntReg <= 20'h363; // @[src/main/scala/chisel/lib/uart/Uart.scala 39:12]
    end else begin
      cntReg <= _cntReg_T_1; // @[src/main/scala/chisel/lib/uart/Uart.scala 54:12]
    end
    if (reset) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 32:24]
      bitsReg <= 4'h0; // @[src/main/scala/chisel/lib/uart/Uart.scala 32:24]
    end else if (_io_channel_ready_T) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 37:24]
      if (bitsReg != 4'h0) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 40:27]
        bitsReg <= _bitsReg_T_1; // @[src/main/scala/chisel/lib/uart/Uart.scala 43:15]
      end else if (io_channel_valid) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 45:30]
        bitsReg <= 4'hb; // @[src/main/scala/chisel/lib/uart/Uart.scala 47:17]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  shiftReg = _RAND_0[10:0];
  _RAND_1 = {1{`RANDOM}};
  cntReg = _RAND_1[19:0];
  _RAND_2 = {1{`RANDOM}};
  bitsReg = _RAND_2[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Buffer(
  input        clock,
  input        reset,
  output       io_in_ready, // @[src/main/scala/chisel/lib/uart/Uart.scala 111:14]
  input        io_in_valid, // @[src/main/scala/chisel/lib/uart/Uart.scala 111:14]
  input  [7:0] io_in_bits, // @[src/main/scala/chisel/lib/uart/Uart.scala 111:14]
  input        io_out_ready, // @[src/main/scala/chisel/lib/uart/Uart.scala 111:14]
  output       io_out_valid, // @[src/main/scala/chisel/lib/uart/Uart.scala 111:14]
  output [7:0] io_out_bits // @[src/main/scala/chisel/lib/uart/Uart.scala 111:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  stateReg; // @[src/main/scala/chisel/lib/uart/Uart.scala 117:25]
  reg [7:0] dataReg; // @[src/main/scala/chisel/lib/uart/Uart.scala 118:24]
  wire  _io_in_ready_T = ~stateReg; // @[src/main/scala/chisel/lib/uart/Uart.scala 120:27]
  wire  _GEN_1 = io_in_valid | stateReg; // @[src/main/scala/chisel/lib/uart/Uart.scala 124:23 126:16 117:25]
  assign io_in_ready = ~stateReg; // @[src/main/scala/chisel/lib/uart/Uart.scala 120:27]
  assign io_out_valid = stateReg; // @[src/main/scala/chisel/lib/uart/Uart.scala 121:28]
  assign io_out_bits = dataReg; // @[src/main/scala/chisel/lib/uart/Uart.scala 133:15]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 117:25]
      stateReg <= 1'h0; // @[src/main/scala/chisel/lib/uart/Uart.scala 117:25]
    end else if (_io_in_ready_T) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 123:28]
      stateReg <= _GEN_1;
    end else if (io_out_ready) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 129:24]
      stateReg <= 1'h0; // @[src/main/scala/chisel/lib/uart/Uart.scala 130:16]
    end
    if (reset) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 118:24]
      dataReg <= 8'h0; // @[src/main/scala/chisel/lib/uart/Uart.scala 118:24]
    end else if (_io_in_ready_T) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 123:28]
      if (io_in_valid) begin // @[src/main/scala/chisel/lib/uart/Uart.scala 124:23]
        dataReg <= io_in_bits; // @[src/main/scala/chisel/lib/uart/Uart.scala 125:15]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  stateReg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  dataReg = _RAND_1[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module BufferedTx(
  input        clock,
  input        reset,
  output       io_txd, // @[src/main/scala/chisel/lib/uart/Uart.scala 140:14]
  output       io_channel_ready, // @[src/main/scala/chisel/lib/uart/Uart.scala 140:14]
  input        io_channel_valid, // @[src/main/scala/chisel/lib/uart/Uart.scala 140:14]
  input  [7:0] io_channel_bits // @[src/main/scala/chisel/lib/uart/Uart.scala 140:14]
);
  wire  tx_clock; // @[src/main/scala/chisel/lib/uart/Uart.scala 144:18]
  wire  tx_reset; // @[src/main/scala/chisel/lib/uart/Uart.scala 144:18]
  wire  tx_io_txd; // @[src/main/scala/chisel/lib/uart/Uart.scala 144:18]
  wire  tx_io_channel_ready; // @[src/main/scala/chisel/lib/uart/Uart.scala 144:18]
  wire  tx_io_channel_valid; // @[src/main/scala/chisel/lib/uart/Uart.scala 144:18]
  wire [7:0] tx_io_channel_bits; // @[src/main/scala/chisel/lib/uart/Uart.scala 144:18]
  wire  buf__clock; // @[src/main/scala/chisel/lib/uart/Uart.scala 145:19]
  wire  buf__reset; // @[src/main/scala/chisel/lib/uart/Uart.scala 145:19]
  wire  buf__io_in_ready; // @[src/main/scala/chisel/lib/uart/Uart.scala 145:19]
  wire  buf__io_in_valid; // @[src/main/scala/chisel/lib/uart/Uart.scala 145:19]
  wire [7:0] buf__io_in_bits; // @[src/main/scala/chisel/lib/uart/Uart.scala 145:19]
  wire  buf__io_out_ready; // @[src/main/scala/chisel/lib/uart/Uart.scala 145:19]
  wire  buf__io_out_valid; // @[src/main/scala/chisel/lib/uart/Uart.scala 145:19]
  wire [7:0] buf__io_out_bits; // @[src/main/scala/chisel/lib/uart/Uart.scala 145:19]
  Tx tx ( // @[src/main/scala/chisel/lib/uart/Uart.scala 144:18]
    .clock(tx_clock),
    .reset(tx_reset),
    .io_txd(tx_io_txd),
    .io_channel_ready(tx_io_channel_ready),
    .io_channel_valid(tx_io_channel_valid),
    .io_channel_bits(tx_io_channel_bits)
  );
  Buffer buf_ ( // @[src/main/scala/chisel/lib/uart/Uart.scala 145:19]
    .clock(buf__clock),
    .reset(buf__reset),
    .io_in_ready(buf__io_in_ready),
    .io_in_valid(buf__io_in_valid),
    .io_in_bits(buf__io_in_bits),
    .io_out_ready(buf__io_out_ready),
    .io_out_valid(buf__io_out_valid),
    .io_out_bits(buf__io_out_bits)
  );
  assign io_txd = tx_io_txd; // @[src/main/scala/chisel/lib/uart/Uart.scala 149:10]
  assign io_channel_ready = buf__io_in_ready; // @[src/main/scala/chisel/lib/uart/Uart.scala 147:13]
  assign tx_clock = clock;
  assign tx_reset = reset;
  assign tx_io_channel_valid = buf__io_out_valid; // @[src/main/scala/chisel/lib/uart/Uart.scala 148:17]
  assign tx_io_channel_bits = buf__io_out_bits; // @[src/main/scala/chisel/lib/uart/Uart.scala 148:17]
  assign buf__clock = clock;
  assign buf__reset = reset;
  assign buf__io_in_valid = io_channel_valid; // @[src/main/scala/chisel/lib/uart/Uart.scala 147:13]
  assign buf__io_in_bits = io_channel_bits; // @[src/main/scala/chisel/lib/uart/Uart.scala 147:13]
  assign buf__io_out_ready = tx_io_channel_ready; // @[src/main/scala/chisel/lib/uart/Uart.scala 148:17]
endmodule
module SerialPort(
  input   clock,
  input   reset,
  output  io_tx, // @[\\src\\main\\scala\\SerialPort.scala 9:14]
  output  io_led // @[\\src\\main\\scala\\SerialPort.scala 9:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  uart_clock; // @[\\src\\main\\scala\\SerialPort.scala 26:19]
  wire  uart_reset; // @[\\src\\main\\scala\\SerialPort.scala 26:19]
  wire  uart_io_txd; // @[\\src\\main\\scala\\SerialPort.scala 26:19]
  wire  uart_io_channel_ready; // @[\\src\\main\\scala\\SerialPort.scala 26:19]
  wire  uart_io_channel_valid; // @[\\src\\main\\scala\\SerialPort.scala 26:19]
  wire [7:0] uart_io_channel_bits; // @[\\src\\main\\scala\\SerialPort.scala 26:19]
  reg [31:0] cntRegLED; // @[\\src\\main\\scala\\SerialPort.scala 15:26]
  reg  blkReg; // @[\\src\\main\\scala\\SerialPort.scala 16:23]
  wire [31:0] _cntRegLED_T_1 = cntRegLED + 32'h1; // @[\\src\\main\\scala\\SerialPort.scala 18:26]
  reg [3:0] cntReg; // @[\\src\\main\\scala\\SerialPort.scala 29:23]
  wire [6:0] _GEN_3 = 4'h1 == cntReg ? 7'h65 : 7'h48; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [6:0] _GEN_4 = 4'h2 == cntReg ? 7'h6c : _GEN_3; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [6:0] _GEN_5 = 4'h3 == cntReg ? 7'h6c : _GEN_4; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [6:0] _GEN_6 = 4'h4 == cntReg ? 7'h6f : _GEN_5; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [6:0] _GEN_7 = 4'h5 == cntReg ? 7'h20 : _GEN_6; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [6:0] _GEN_8 = 4'h6 == cntReg ? 7'h57 : _GEN_7; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [6:0] _GEN_9 = 4'h7 == cntReg ? 7'h6f : _GEN_8; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [6:0] _GEN_10 = 4'h8 == cntReg ? 7'h72 : _GEN_9; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [6:0] _GEN_11 = 4'h9 == cntReg ? 7'h6c : _GEN_10; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [6:0] _GEN_12 = 4'ha == cntReg ? 7'h64 : _GEN_11; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [6:0] _GEN_13 = 4'hb == cntReg ? 7'h21 : _GEN_12; // @[\\src\\main\\scala\\SerialPort.scala 35:{24,24}]
  wire [3:0] _cntReg_T_1 = cntReg + 4'h1; // @[\\src\\main\\scala\\SerialPort.scala 41:24]
  BufferedTx uart ( // @[\\src\\main\\scala\\SerialPort.scala 26:19]
    .clock(uart_clock),
    .reset(uart_reset),
    .io_txd(uart_io_txd),
    .io_channel_ready(uart_io_channel_ready),
    .io_channel_valid(uart_io_channel_valid),
    .io_channel_bits(uart_io_channel_bits)
  );
  assign io_tx = uart_io_txd; // @[\\src\\main\\scala\\SerialPort.scala 30:9]
  assign io_led = blkReg; // @[\\src\\main\\scala\\SerialPort.scala 23:10]
  assign uart_clock = clock;
  assign uart_reset = reset;
  assign uart_io_channel_valid = cntReg < 4'hc; // @[\\src\\main\\scala\\SerialPort.scala 38:15]
  assign uart_io_channel_bits = {{1'd0}, _GEN_13}; // @[\\src\\main\\scala\\SerialPort.scala 35:24]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\SerialPort.scala 15:26]
      cntRegLED <= 32'h0; // @[\\src\\main\\scala\\SerialPort.scala 15:26]
    end else if (cntRegLED == 32'h2faf07f) begin // @[\\src\\main\\scala\\SerialPort.scala 19:31]
      cntRegLED <= 32'h0; // @[\\src\\main\\scala\\SerialPort.scala 20:15]
    end else begin
      cntRegLED <= _cntRegLED_T_1; // @[\\src\\main\\scala\\SerialPort.scala 18:13]
    end
    if (reset) begin // @[\\src\\main\\scala\\SerialPort.scala 16:23]
      blkReg <= 1'h0; // @[\\src\\main\\scala\\SerialPort.scala 16:23]
    end else if (cntRegLED == 32'h2faf07f) begin // @[\\src\\main\\scala\\SerialPort.scala 19:31]
      blkReg <= ~blkReg; // @[\\src\\main\\scala\\SerialPort.scala 21:12]
    end
    if (reset) begin // @[\\src\\main\\scala\\SerialPort.scala 29:23]
      cntReg <= 4'h0; // @[\\src\\main\\scala\\SerialPort.scala 29:23]
    end else if (cntReg < 4'hc) begin // @[\\src\\main\\scala\\SerialPort.scala 38:23]
      if (uart_io_channel_ready) begin // @[\\src\\main\\scala\\SerialPort.scala 40:33]
        cntReg <= _cntReg_T_1; // @[\\src\\main\\scala\\SerialPort.scala 41:14]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cntRegLED = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  blkReg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  cntReg = _RAND_2[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
