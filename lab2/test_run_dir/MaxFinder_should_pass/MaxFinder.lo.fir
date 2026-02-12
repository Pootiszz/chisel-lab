FIRRTL version 1.2.0
circuit MaxFinder :
  module MaxFinder :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<4> @[\\src\\main\\scala\\MaxFinder.scala 4:14]
    input io_b : UInt<4> @[\\src\\main\\scala\\MaxFinder.scala 4:14]
    input io_c : UInt<4> @[\\src\\main\\scala\\MaxFinder.scala 4:14]
    input io_d : UInt<4> @[\\src\\main\\scala\\MaxFinder.scala 4:14]
    output io_max : UInt<4> @[\\src\\main\\scala\\MaxFinder.scala 4:14]

    node _max_T = geq(io_a, io_b) @[\\src\\main\\scala\\MaxFinder.scala 20:17]
    node _max_T_1 = geq(io_a, io_c) @[\\src\\main\\scala\\MaxFinder.scala 20:27]
    node _max_T_2 = and(_max_T, _max_T_1) @[\\src\\main\\scala\\MaxFinder.scala 20:22]
    node _max_T_3 = geq(io_a, io_d) @[\\src\\main\\scala\\MaxFinder.scala 20:37]
    node _max_T_4 = and(_max_T_2, _max_T_3) @[\\src\\main\\scala\\MaxFinder.scala 20:32]
    node _max_T_5 = geq(io_b, io_a) @[\\src\\main\\scala\\MaxFinder.scala 21:17]
    node _max_T_6 = geq(io_b, io_c) @[\\src\\main\\scala\\MaxFinder.scala 21:27]
    node _max_T_7 = and(_max_T_5, _max_T_6) @[\\src\\main\\scala\\MaxFinder.scala 21:22]
    node _max_T_8 = geq(io_b, io_d) @[\\src\\main\\scala\\MaxFinder.scala 21:37]
    node _max_T_9 = and(_max_T_7, _max_T_8) @[\\src\\main\\scala\\MaxFinder.scala 21:32]
    node _max_T_10 = geq(io_c, io_a) @[\\src\\main\\scala\\MaxFinder.scala 22:17]
    node _max_T_11 = geq(io_c, io_b) @[\\src\\main\\scala\\MaxFinder.scala 22:27]
    node _max_T_12 = and(_max_T_10, _max_T_11) @[\\src\\main\\scala\\MaxFinder.scala 22:22]
    node _max_T_13 = geq(io_c, io_d) @[\\src\\main\\scala\\MaxFinder.scala 22:37]
    node _max_T_14 = and(_max_T_12, _max_T_13) @[\\src\\main\\scala\\MaxFinder.scala 22:32]
    node _max_T_15 = mux(_max_T_14, io_c, io_d) @[\\src\\main\\scala\\MaxFinder.scala 22:14]
    node _max_T_16 = mux(_max_T_9, io_b, _max_T_15) @[\\src\\main\\scala\\MaxFinder.scala 21:14]
    node _max_T_17 = mux(_max_T_4, io_a, _max_T_16) @[\\src\\main\\scala\\MaxFinder.scala 20:14]
    node max = _max_T_17 @[\\src\\main\\scala\\MaxFinder.scala 16:24 20:7]
    io_max <= max @[\\src\\main\\scala\\MaxFinder.scala 26:10]
