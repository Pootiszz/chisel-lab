FIRRTL version 1.2.0
circuit TestHeap :
  module Fetcher :
    input clock : Clock
    input reset : UInt<1>
    input io_req_index : UInt<4> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    input io_req_size : UInt<4> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    input io_req_valid : UInt<1> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_res_parent_item : UInt<8> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_res_parent_index : UInt<4> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_res_children_0_valid : UInt<1> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_res_children_0_data_item : UInt<8> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_res_children_0_data_index : UInt<4> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_res_children_1_valid : UInt<1> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_res_children_1_data_item : UInt<8> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_res_children_1_data_index : UInt<4> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_res_valid : UInt<1> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_mem_index : UInt<4> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    output io_mem_withSiblings : UInt<1> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    input io_mem_values_0 : UInt<8> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]
    input io_mem_values_1 : UInt<8> @[\\src\\main\\scala\\heap\\Fetcher.scala 29:14]

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 35:25]
    reg validReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), validReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 36:25]
    reg sizeReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sizeReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 38:24]
    reg parentIndexReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), parentIndexReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 40:31]
    reg childIndexReg_0 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), childIndexReg_0) @[\\src\\main\\scala\\heap\\Fetcher.scala 41:30]
    reg childIndexReg_1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), childIndexReg_1) @[\\src\\main\\scala\\heap\\Fetcher.scala 41:30]
    reg parentReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), parentReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 42:26]
    reg childrenReg_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), childrenReg_0) @[\\src\\main\\scala\\heap\\Fetcher.scala 43:28]
    reg childrenReg_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), childrenReg_1) @[\\src\\main\\scala\\heap\\Fetcher.scala 43:28]
    reg maskReg_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maskReg_0) @[\\src\\main\\scala\\heap\\Fetcher.scala 44:24]
    reg maskReg_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maskReg_1) @[\\src\\main\\scala\\heap\\Fetcher.scala 44:24]
    node _T = asUInt(UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_1 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_2 = eq(_T, _T_1) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _stateReg_T = mux(io_req_valid, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Fetcher.scala 57:22]
    node _T_3 = asUInt(UInt<1>("h1")) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_4 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_5 = eq(_T_3, _T_4) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_6 = shl(parentIndexReg, 1) @[\\src\\main\\scala\\heap\\Fetcher.scala 67:70]
    node _T_7 = add(_T_6, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\Fetcher.scala 67:93]
    node _T_8 = tail(_T_7, 1) @[\\src\\main\\scala\\heap\\Fetcher.scala 67:93]
    node _T_9 = shl(parentIndexReg, 1) @[\\src\\main\\scala\\heap\\Fetcher.scala 67:70]
    node _T_10 = add(_T_9, UInt<2>("h2")) @[\\src\\main\\scala\\heap\\Fetcher.scala 67:93]
    node _T_11 = tail(_T_10, 1) @[\\src\\main\\scala\\heap\\Fetcher.scala 67:93]
    node _T_12 = asUInt(UInt<2>("h2")) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_13 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_14 = eq(_T_12, _T_13) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_15 = asUInt(UInt<2>("h3")) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_16 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_17 = eq(_T_15, _T_16) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20]
    node _T_18 = lt(childIndexReg_0, sizeReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 83:46]
    node _T_19 = lt(childIndexReg_1, sizeReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 83:46]
    node _GEN_0 = mux(_T_17, UInt<1>("h0"), stateReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 80:16 35:25]
    node _GEN_1 = mux(_T_17, io_mem_values_0, childrenReg_0) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 82:19 43:28]
    node _GEN_2 = mux(_T_17, io_mem_values_1, childrenReg_1) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 82:19 43:28]
    node _WIRE_1_0 = _T_18 @[\\src\\main\\scala\\heap\\Fetcher.scala 83:{25,25}]
    node _GEN_3 = mux(_T_17, _WIRE_1_0, maskReg_0) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 83:15 44:24]
    node _WIRE_1_1 = _T_19 @[\\src\\main\\scala\\heap\\Fetcher.scala 83:{25,25}]
    node _GEN_4 = mux(_T_17, _WIRE_1_1, maskReg_1) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 83:15 44:24]
    node _GEN_5 = mux(_T_17, UInt<1>("h1"), validReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 85:16 36:25]
    node _GEN_6 = mux(_T_14, UInt<2>("h3"), _GEN_0) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 72:16]
    node _GEN_7 = mux(_T_14, io_mem_values_0, parentReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 74:17 42:26]
    node _GEN_8 = mux(_T_14, childIndexReg_0, parentIndexReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 53:16 55:20 76:20]
    node _GEN_9 = mux(_T_14, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 52:23 77:27]
    node _GEN_10 = mux(_T_14, childrenReg_0, _GEN_1) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 43:28]
    node _GEN_11 = mux(_T_14, childrenReg_1, _GEN_2) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 43:28]
    node _GEN_12 = mux(_T_14, maskReg_0, _GEN_3) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 44:24]
    node _GEN_13 = mux(_T_14, maskReg_1, _GEN_4) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 44:24]
    node _GEN_14 = mux(_T_14, validReg, _GEN_5) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 36:25]
    node _GEN_15 = mux(_T_5, UInt<2>("h2"), _GEN_6) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 65:16]
    node _WIRE__0 = _T_8 @[\\src\\main\\scala\\heap\\Fetcher.scala 67:{31,31}]
    node _GEN_16 = mux(_T_5, _WIRE__0, childIndexReg_0) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 67:21 41:30]
    node _WIRE__1 = _T_11 @[\\src\\main\\scala\\heap\\Fetcher.scala 67:{31,31}]
    node _GEN_17 = mux(_T_5, _WIRE__1, childIndexReg_1) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 67:21 41:30]
    node _GEN_18 = mux(_T_5, parentIndexReg, _GEN_8) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 69:20]
    node _GEN_19 = mux(_T_5, parentReg, _GEN_7) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 42:26]
    node _GEN_20 = mux(_T_5, UInt<1>("h0"), _GEN_9) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 52:23]
    node _GEN_21 = mux(_T_5, childrenReg_0, _GEN_10) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 43:28]
    node _GEN_22 = mux(_T_5, childrenReg_1, _GEN_11) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 43:28]
    node _GEN_23 = mux(_T_5, maskReg_0, _GEN_12) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 44:24]
    node _GEN_24 = mux(_T_5, maskReg_1, _GEN_13) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 44:24]
    node _GEN_25 = mux(_T_5, validReg, _GEN_14) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 36:25]
    node _GEN_26 = mux(_T_2, _stateReg_T, _GEN_15) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 57:16]
    node _GEN_27 = mux(_T_2, io_req_index, parentIndexReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 59:22 40:31]
    node _GEN_28 = mux(_T_2, io_req_size, sizeReg) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 60:15 38:24]
    node _GEN_29 = mux(_T_2, validReg, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Fetcher.scala 51:16 55:20 62:20]
    node _GEN_30 = mux(_T_2, childIndexReg_0, _GEN_16) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 41:30]
    node _GEN_31 = mux(_T_2, childIndexReg_1, _GEN_17) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 41:30]
    node _GEN_32 = mux(_T_2, parentIndexReg, _GEN_18) @[\\src\\main\\scala\\heap\\Fetcher.scala 53:16 55:20]
    node _GEN_33 = mux(_T_2, parentReg, _GEN_19) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 42:26]
    node _GEN_34 = mux(_T_2, UInt<1>("h0"), _GEN_20) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 52:23]
    node _GEN_35 = mux(_T_2, childrenReg_0, _GEN_21) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 43:28]
    node _GEN_36 = mux(_T_2, childrenReg_1, _GEN_22) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 43:28]
    node _GEN_37 = mux(_T_2, maskReg_0, _GEN_23) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 44:24]
    node _GEN_38 = mux(_T_2, maskReg_1, _GEN_24) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 44:24]
    node _GEN_39 = mux(_T_2, validReg, _GEN_25) @[\\src\\main\\scala\\heap\\Fetcher.scala 55:20 36:25]
    node _childIndexReg_WIRE_0 = UInt<4>("h0") @[\\src\\main\\scala\\heap\\Fetcher.scala 41:{38,38}]
    node _childIndexReg_WIRE_1 = UInt<4>("h0") @[\\src\\main\\scala\\heap\\Fetcher.scala 41:{38,38}]
    node _childrenReg_WIRE_0 = UInt<8>("h0") @[\\src\\main\\scala\\heap\\Fetcher.scala 43:{36,36}]
    node _childrenReg_WIRE_1 = UInt<8>("h0") @[\\src\\main\\scala\\heap\\Fetcher.scala 43:{36,36}]
    node _maskReg_WIRE_0 = UInt<1>("h0") @[\\src\\main\\scala\\heap\\Fetcher.scala 44:{32,32}]
    node _maskReg_WIRE_1 = UInt<1>("h0") @[\\src\\main\\scala\\heap\\Fetcher.scala 44:{32,32}]
    node io_res_parent_w_item = parentReg @[\\src\\main\\scala\\heap\\package.scala 19:19 20:14]
    node io_res_parent_w_index = parentIndexReg @[\\src\\main\\scala\\heap\\package.scala 19:19 21:15]
    node w_item = childrenReg_0 @[\\src\\main\\scala\\heap\\package.scala 19:19 20:14]
    node w_index = childIndexReg_0 @[\\src\\main\\scala\\heap\\package.scala 19:19 21:15]
    node v_valid = maskReg_0 @[\\src\\main\\scala\\heap\\package.scala 37:19 38:15]
    node v_data_item = w_item @[\\src\\main\\scala\\heap\\package.scala 37:19 39:14]
    node v_data_index = w_index @[\\src\\main\\scala\\heap\\package.scala 37:19 39:14]
    node w_1_item = childrenReg_1 @[\\src\\main\\scala\\heap\\package.scala 19:19 20:14]
    node w_1_index = childIndexReg_1 @[\\src\\main\\scala\\heap\\package.scala 19:19 21:15]
    node v_1_valid = maskReg_1 @[\\src\\main\\scala\\heap\\package.scala 37:19 38:15]
    node v_1_data_item = w_1_item @[\\src\\main\\scala\\heap\\package.scala 37:19 39:14]
    node v_1_data_index = w_1_index @[\\src\\main\\scala\\heap\\package.scala 37:19 39:14]
    io_res_parent_item <= io_res_parent_w_item @[\\src\\main\\scala\\heap\\Fetcher.scala 45:17]
    io_res_parent_index <= io_res_parent_w_index @[\\src\\main\\scala\\heap\\Fetcher.scala 45:17]
    io_res_children_0_valid <= v_valid @[\\src\\main\\scala\\heap\\Fetcher.scala 47:19]
    io_res_children_0_data_item <= v_data_item @[\\src\\main\\scala\\heap\\Fetcher.scala 47:19]
    io_res_children_0_data_index <= v_data_index @[\\src\\main\\scala\\heap\\Fetcher.scala 47:19]
    io_res_children_1_valid <= v_1_valid @[\\src\\main\\scala\\heap\\Fetcher.scala 47:19]
    io_res_children_1_data_item <= v_1_data_item @[\\src\\main\\scala\\heap\\Fetcher.scala 47:19]
    io_res_children_1_data_index <= v_1_data_index @[\\src\\main\\scala\\heap\\Fetcher.scala 47:19]
    io_res_valid <= _GEN_29
    io_mem_index <= _GEN_32
    io_mem_withSiblings <= _GEN_34
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_26) @[\\src\\main\\scala\\heap\\Fetcher.scala 35:{25,25}]
    validReg <= mux(reset, UInt<1>("h0"), _GEN_39) @[\\src\\main\\scala\\heap\\Fetcher.scala 36:{25,25}]
    sizeReg <= mux(reset, UInt<4>("h0"), _GEN_28) @[\\src\\main\\scala\\heap\\Fetcher.scala 38:{24,24}]
    parentIndexReg <= mux(reset, UInt<4>("h0"), _GEN_27) @[\\src\\main\\scala\\heap\\Fetcher.scala 40:{31,31}]
    childIndexReg_0 <= bits(mux(reset, _childIndexReg_WIRE_0, _GEN_30), 3, 0) @[\\src\\main\\scala\\heap\\Fetcher.scala 41:{30,30}]
    childIndexReg_1 <= bits(mux(reset, _childIndexReg_WIRE_1, _GEN_31), 3, 0) @[\\src\\main\\scala\\heap\\Fetcher.scala 41:{30,30}]
    parentReg <= mux(reset, UInt<8>("h0"), _GEN_33) @[\\src\\main\\scala\\heap\\Fetcher.scala 42:{26,26}]
    childrenReg_0 <= mux(reset, _childrenReg_WIRE_0, _GEN_35) @[\\src\\main\\scala\\heap\\Fetcher.scala 43:{28,28}]
    childrenReg_1 <= mux(reset, _childrenReg_WIRE_1, _GEN_36) @[\\src\\main\\scala\\heap\\Fetcher.scala 43:{28,28}]
    maskReg_0 <= mux(reset, _maskReg_WIRE_0, _GEN_37) @[\\src\\main\\scala\\heap\\Fetcher.scala 44:{24,24}]
    maskReg_1 <= mux(reset, _maskReg_WIRE_1, _GEN_38) @[\\src\\main\\scala\\heap\\Fetcher.scala 44:{24,24}]

  module Swapper :
    input clock : Clock
    input reset : UInt<1>
    input io_req_values_0_item : UInt<8> @[\\src\\main\\scala\\heap\\Swapper.scala 24:14]
    input io_req_values_0_index : UInt<4> @[\\src\\main\\scala\\heap\\Swapper.scala 24:14]
    input io_req_values_1_item : UInt<8> @[\\src\\main\\scala\\heap\\Swapper.scala 24:14]
    input io_req_values_1_index : UInt<4> @[\\src\\main\\scala\\heap\\Swapper.scala 24:14]
    input io_req_valid : UInt<1> @[\\src\\main\\scala\\heap\\Swapper.scala 24:14]
    output io_req_ready : UInt<1> @[\\src\\main\\scala\\heap\\Swapper.scala 24:14]
    output io_mem_index : UInt<4> @[\\src\\main\\scala\\heap\\Swapper.scala 24:14]
    output io_mem_value : UInt<8> @[\\src\\main\\scala\\heap\\Swapper.scala 24:14]
    output io_mem_valid : UInt<1> @[\\src\\main\\scala\\heap\\Swapper.scala 24:14]

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[\\src\\main\\scala\\heap\\Swapper.scala 29:25]
    reg valuesReg_0_item : UInt<8>, clock with :
      reset => (UInt<1>("h0"), valuesReg_0_item) @[\\src\\main\\scala\\heap\\Swapper.scala 30:22]
    reg valuesReg_0_index : UInt<4>, clock with :
      reset => (UInt<1>("h0"), valuesReg_0_index) @[\\src\\main\\scala\\heap\\Swapper.scala 30:22]
    reg valuesReg_1_item : UInt<8>, clock with :
      reset => (UInt<1>("h0"), valuesReg_1_item) @[\\src\\main\\scala\\heap\\Swapper.scala 30:22]
    reg valuesReg_1_index : UInt<4>, clock with :
      reset => (UInt<1>("h0"), valuesReg_1_index) @[\\src\\main\\scala\\heap\\Swapper.scala 30:22]
    node _T = asUInt(UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _T_1 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _T_2 = eq(_T, _T_1) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _stateReg_T = mux(io_req_valid, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Swapper.scala 38:22]
    node _T_3 = asUInt(UInt<1>("h1")) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _T_4 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _T_5 = eq(_T_3, _T_4) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _T_6 = asUInt(UInt<2>("h2")) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _T_7 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _T_8 = eq(_T_6, _T_7) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _GEN_0 = mux(_T_8, UInt<1>("h0"), stateReg) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 50:16 29:25]
    node _GEN_1 = validif(_T_8, valuesReg_1_index) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 52:20]
    node _GEN_2 = validif(_T_8, valuesReg_0_item) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 53:20]
    node _GEN_3 = mux(_T_8, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Swapper.scala 34:16 36:20 54:20]
    node _GEN_4 = mux(_T_5, UInt<2>("h2"), _GEN_0) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 43:16]
    node _GEN_5 = mux(_T_5, valuesReg_0_index, _GEN_1) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 45:20]
    node _GEN_6 = mux(_T_5, valuesReg_1_item, _GEN_2) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 46:20]
    node _GEN_7 = mux(_T_5, UInt<1>("h1"), _GEN_3) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 47:20]
    node _GEN_8 = mux(_T_2, _stateReg_T, _GEN_4) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 38:16]
    node _GEN_9 = mux(_T_2, io_req_values_0_item, valuesReg_0_item) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 39:17 30:22]
    node _GEN_10 = mux(_T_2, io_req_values_0_index, valuesReg_0_index) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 39:17 30:22]
    node _GEN_11 = mux(_T_2, io_req_values_1_item, valuesReg_1_item) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 39:17 30:22]
    node _GEN_12 = mux(_T_2, io_req_values_1_index, valuesReg_1_index) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20 39:17 30:22]
    node _GEN_13 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Swapper.scala 32:16 36:20 40:20]
    node _GEN_14 = validif(eq(_T_2, UInt<1>("h0")), _GEN_5) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _GEN_15 = validif(eq(_T_2, UInt<1>("h0")), _GEN_6) @[\\src\\main\\scala\\heap\\Swapper.scala 36:20]
    node _GEN_16 = mux(_T_2, UInt<1>("h0"), _GEN_7) @[\\src\\main\\scala\\heap\\Swapper.scala 34:16 36:20]
    io_req_ready <= _GEN_13
    io_mem_index <= _GEN_14
    io_mem_value <= _GEN_15
    io_mem_valid <= _GEN_16
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_8) @[\\src\\main\\scala\\heap\\Swapper.scala 29:{25,25}]
    valuesReg_0_item <= _GEN_9
    valuesReg_0_index <= _GEN_10
    valuesReg_1_item <= _GEN_11
    valuesReg_1_index <= _GEN_12

  module HeapMemory :
    input clock : Clock
    input reset : UInt<1>
    input io_read_index : UInt<4> @[\\src\\main\\scala\\heap\\HeapMemory.scala 32:14]
    input io_read_withSiblings : UInt<1> @[\\src\\main\\scala\\heap\\HeapMemory.scala 32:14]
    output io_read_values_0 : UInt<8> @[\\src\\main\\scala\\heap\\HeapMemory.scala 32:14]
    output io_read_values_1 : UInt<8> @[\\src\\main\\scala\\heap\\HeapMemory.scala 32:14]
    input io_write_index : UInt<4> @[\\src\\main\\scala\\heap\\HeapMemory.scala 32:14]
    input io_write_value : UInt<8> @[\\src\\main\\scala\\heap\\HeapMemory.scala 32:14]
    input io_write_valid : UInt<1> @[\\src\\main\\scala\\heap\\HeapMemory.scala 32:14]
    output io_root : UInt<8> @[\\src\\main\\scala\\heap\\HeapMemory.scala 32:14]

    mem banks_0 : @[\\src\\main\\scala\\heap\\HeapMemory.scala 38:38]
      data-type => UInt<8>
      depth => 4
      read-latency => 1
      write-latency => 1
      reader => readValues_MPORT
      writer => MPORT
      read-under-write => undefined
    mem banks_1 : @[\\src\\main\\scala\\heap\\HeapMemory.scala 38:38]
      data-type => UInt<8>
      depth => 4
      read-latency => 1
      write-latency => 1
      reader => readValues_MPORT_1
      writer => MPORT_1
      read-under-write => undefined
    reg rootReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), rootReg) @[\\src\\main\\scala\\heap\\HeapMemory.scala 39:24]
    node _T = sub(io_read_index, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 42:51]
    node _T_1 = tail(_T, 1) @[\\src\\main\\scala\\heap\\HeapMemory.scala 42:51]
    node readRow = bits(_T_1, 3, 1) @[\\src\\main\\scala\\heap\\HeapMemory.scala 23:55]
    node readColumn = bits(_T_1, 0, 0) @[\\src\\main\\scala\\heap\\HeapMemory.scala 23:88]
    node _GEN_0 = validif(UInt<1>("h1"), readRow) @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:{44,44}]
    node _readValues_WIRE = _GEN_0 @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:44]
    node _readValues_T = or(_readValues_WIRE, UInt<2>("h0")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:44]
    node _readValues_T_1 = bits(_readValues_T, 1, 0) @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:44]
    node _GEN_1 = mux(UInt<1>("h1"), UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 38:38 43:{44,44}]
    node _GEN_2 = validif(UInt<1>("h1"), _readValues_T_1) @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:{44,44}]
    node _GEN_3 = validif(UInt<1>("h1"), clock) @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:{44,44}]
    node _readValues_WIRE_1 = _GEN_0 @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:44]
    node _readValues_T_2 = or(_readValues_WIRE_1, UInt<2>("h0")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:44]
    node _readValues_T_3 = bits(_readValues_T_2, 1, 0) @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:44]
    node _GEN_4 = validif(UInt<1>("h1"), _readValues_T_3) @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:{44,44}]
    node readValues_0 = banks_0.readValues_MPORT.data @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:{27,27}]
    node _io_read_values_0_T = add(readValues_0, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 45:38]
    node _io_read_values_0_T_1 = tail(_io_read_values_0_T, 1) @[\\src\\main\\scala\\heap\\HeapMemory.scala 45:38]
    node _T_2 = eq(io_read_withSiblings, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 46:16]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[\\src\\main\\scala\\heap\\HeapMemory.scala 46:15]
    node _io_read_values_0_T_2 = eq(io_read_index, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 47:52]
    reg io_read_values_0_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_read_values_0_REG) @[\\src\\main\\scala\\heap\\HeapMemory.scala 47:37]
    reg io_read_values_0_REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_read_values_0_REG_1) @[\\src\\main\\scala\\heap\\HeapMemory.scala 47:89]
    node _io_read_values_0_T_3 = or(io_read_values_0_REG_1, UInt<1>("h0"))
    node _io_read_values_0_T_4 = bits(_io_read_values_0_T_3, 0, 0)
    node _GEN_5 = validif(eq(UInt<1>("h0"), _io_read_values_0_T_4), readValues_0) @[\\src\\main\\scala\\heap\\HeapMemory.scala 47:{29,29}]
    node readValues_1 = banks_1.readValues_MPORT_1.data @[\\src\\main\\scala\\heap\\HeapMemory.scala 43:{27,27}]
    node _GEN_6 = mux(eq(UInt<1>("h1"), _io_read_values_0_T_4), readValues_1, _GEN_5) @[\\src\\main\\scala\\heap\\HeapMemory.scala 47:{29,29}]
    node _readValues_io_read_values_0_T_4 = _GEN_6 @[\\src\\main\\scala\\heap\\HeapMemory.scala 47:29]
    node _io_read_values_0_T_5 = mux(io_read_values_0_REG, rootReg, _readValues_io_read_values_0_T_4) @[\\src\\main\\scala\\heap\\HeapMemory.scala 47:29]
    node _GEN_7 = mux(REG, _io_read_values_0_T_5, _io_read_values_0_T_1) @[\\src\\main\\scala\\heap\\HeapMemory.scala 45:21 46:40 47:23]
    node _T_3 = sub(io_write_index, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 50:54]
    node _T_4 = tail(_T_3, 1) @[\\src\\main\\scala\\heap\\HeapMemory.scala 50:54]
    node writeRow = bits(_T_4, 3, 1) @[\\src\\main\\scala\\heap\\HeapMemory.scala 23:55]
    node writeColumn = bits(_T_4, 0, 0) @[\\src\\main\\scala\\heap\\HeapMemory.scala 23:88]
    node _writeBankMask_T = dshl(UInt<1>("h1"), writeColumn) @[src/main/scala/chisel3/util/OneHot.scala 58:35]
    node writeBankMask_0 = bits(_writeBankMask_T, 0, 0) @[\\src\\main\\scala\\heap\\HeapMemory.scala 51:45]
    node writeBankMask_1 = bits(_writeBankMask_T, 1, 1) @[\\src\\main\\scala\\heap\\HeapMemory.scala 51:45]
    node _T_5 = eq(io_write_index, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:25]
    node _T_6 = bits(writeRow, 1, 0)
    node _GEN_8 = validif(writeBankMask_0, _T_6) @[\\src\\main\\scala\\heap\\HeapMemory.scala 57:17]
    node _GEN_9 = validif(writeBankMask_0, clock) @[\\src\\main\\scala\\heap\\HeapMemory.scala 57:17]
    node _GEN_10 = mux(writeBankMask_0, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 57:17 38:38]
    node _GEN_11 = validif(writeBankMask_0, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 57:17]
    node _GEN_12 = validif(writeBankMask_0, io_write_value) @[\\src\\main\\scala\\heap\\HeapMemory.scala 57:17]
    node _T_7 = bits(writeRow, 1, 0)
    node _GEN_13 = validif(writeBankMask_1, _T_7) @[\\src\\main\\scala\\heap\\HeapMemory.scala 57:17]
    node _GEN_14 = validif(writeBankMask_1, clock) @[\\src\\main\\scala\\heap\\HeapMemory.scala 57:17]
    node _GEN_15 = mux(writeBankMask_1, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 57:17 38:38]
    node _GEN_16 = validif(writeBankMask_1, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 57:17]
    node _GEN_17 = validif(writeBankMask_1, io_write_value) @[\\src\\main\\scala\\heap\\HeapMemory.scala 57:17]
    node _GEN_18 = mux(_T_5, io_write_value, rootReg) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34 54:15 39:24]
    node _GEN_19 = validif(eq(_T_5, UInt<1>("h0")), _GEN_8) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34]
    node _GEN_20 = validif(eq(_T_5, UInt<1>("h0")), _GEN_9) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34]
    node _GEN_21 = mux(_T_5, UInt<1>("h0"), _GEN_10) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34 38:38]
    node _GEN_22 = validif(eq(_T_5, UInt<1>("h0")), _GEN_11) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34]
    node _GEN_23 = validif(eq(_T_5, UInt<1>("h0")), _GEN_12) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34]
    node _GEN_24 = validif(eq(_T_5, UInt<1>("h0")), _GEN_13) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34]
    node _GEN_25 = validif(eq(_T_5, UInt<1>("h0")), _GEN_14) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34]
    node _GEN_26 = mux(_T_5, UInt<1>("h0"), _GEN_15) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34 38:38]
    node _GEN_27 = validif(eq(_T_5, UInt<1>("h0")), _GEN_16) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34]
    node _GEN_28 = validif(eq(_T_5, UInt<1>("h0")), _GEN_17) @[\\src\\main\\scala\\heap\\HeapMemory.scala 53:34]
    node _GEN_29 = mux(io_write_valid, _GEN_18, rootReg) @[\\src\\main\\scala\\heap\\HeapMemory.scala 39:24 52:24]
    node _GEN_30 = validif(io_write_valid, _GEN_19) @[\\src\\main\\scala\\heap\\HeapMemory.scala 52:24]
    node _GEN_31 = validif(io_write_valid, _GEN_20) @[\\src\\main\\scala\\heap\\HeapMemory.scala 52:24]
    node _GEN_32 = mux(io_write_valid, _GEN_21, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 52:24 38:38]
    node _GEN_33 = validif(io_write_valid, _GEN_22) @[\\src\\main\\scala\\heap\\HeapMemory.scala 52:24]
    node _GEN_34 = validif(io_write_valid, _GEN_23) @[\\src\\main\\scala\\heap\\HeapMemory.scala 52:24]
    node _GEN_35 = validif(io_write_valid, _GEN_24) @[\\src\\main\\scala\\heap\\HeapMemory.scala 52:24]
    node _GEN_36 = validif(io_write_valid, _GEN_25) @[\\src\\main\\scala\\heap\\HeapMemory.scala 52:24]
    node _GEN_37 = mux(io_write_valid, _GEN_26, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapMemory.scala 52:24 38:38]
    node _GEN_38 = validif(io_write_valid, _GEN_27) @[\\src\\main\\scala\\heap\\HeapMemory.scala 52:24]
    node _GEN_39 = validif(io_write_valid, _GEN_28) @[\\src\\main\\scala\\heap\\HeapMemory.scala 52:24]
    io_read_values_0 <= _GEN_7
    io_read_values_1 <= readValues_1 @[\\src\\main\\scala\\heap\\HeapMemory.scala 44:18]
    io_root <= rootReg @[\\src\\main\\scala\\heap\\HeapMemory.scala 40:11]
    banks_0.readValues_MPORT.addr <= _GEN_2
    banks_0.readValues_MPORT.en <= _GEN_1
    banks_0.readValues_MPORT.clk <= _GEN_3
    banks_0.MPORT.addr <= _GEN_30
    banks_0.MPORT.en <= _GEN_32
    banks_0.MPORT.clk <= _GEN_31
    banks_0.MPORT.data <= _GEN_34
    banks_0.MPORT.mask <= _GEN_33
    banks_1.readValues_MPORT_1.addr <= _GEN_4
    banks_1.readValues_MPORT_1.en <= _GEN_1
    banks_1.readValues_MPORT_1.clk <= _GEN_3
    banks_1.MPORT_1.addr <= _GEN_35
    banks_1.MPORT_1.en <= _GEN_37
    banks_1.MPORT_1.clk <= _GEN_36
    banks_1.MPORT_1.data <= _GEN_39
    banks_1.MPORT_1.mask <= _GEN_38
    rootReg <= mux(reset, UInt<8>("h0"), _GEN_29) @[\\src\\main\\scala\\heap\\HeapMemory.scala 39:{24,24}]
    REG <= _T_2 @[\\src\\main\\scala\\heap\\HeapMemory.scala 46:15]
    io_read_values_0_REG <= _io_read_values_0_T_2 @[\\src\\main\\scala\\heap\\HeapMemory.scala 47:37]
    io_read_values_0_REG_1 <= readColumn @[\\src\\main\\scala\\heap\\HeapMemory.scala 47:89]

  module HeapControl :
    input clock : Clock
    input reset : UInt<1>
    input io_req_op : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    input io_req_newValue : UInt<8> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_req_empty : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_req_full : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    input io_req_valid : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_req_ready : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_mem_read_index : UInt<4> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_mem_read_withSiblings : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    input io_mem_read_values_0 : UInt<8> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    input io_mem_read_values_1 : UInt<8> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_mem_write_index : UInt<4> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_mem_write_value : UInt<8> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_mem_write_valid : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_mem_requestRead : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_fetcher_index : UInt<4> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_fetcher_size : UInt<4> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    output io_fetcher_valid : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    input io_heapifier_largest : UInt<4> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    input io_heapifier_swapped : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]
    input io_heapifier_valid : UInt<1> @[\\src\\main\\scala\\heap\\HeapControl.scala 24:14]

    reg stateReg : UInt<3>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 35:25]
    reg sizeReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sizeReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 37:24]
    reg subtreeIndexReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), subtreeIndexReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 38:32]
    reg newValueReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), newValueReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 39:28]
    reg tailReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), tailReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 40:24]
    node _tailIndex_T = sub(sizeReg, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapControl.scala 46:27]
    node tailIndex = tail(_tailIndex_T, 1) @[\\src\\main\\scala\\heap\\HeapControl.scala 46:27]
    reg full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), full) @[\\src\\main\\scala\\heap\\HeapControl.scala 47:21]
    node _T = eq(sizeReg, UInt<4>("h8")) @[\\src\\main\\scala\\heap\\HeapControl.scala 48:16]
    node _GEN_0 = mux(_T, UInt<1>("h1"), full) @[\\src\\main\\scala\\heap\\HeapControl.scala 47:21 48:{25,32}]
    node _io_req_empty_T = eq(sizeReg, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 50:27]
    node _T_1 = asUInt(UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_2 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_3 = eq(_T_1, _T_2) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_4 = eq(io_req_op, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 72:24]
    node _stateReg_T = mux(full, UInt<1>("h0"), UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapControl.scala 73:26]
    node _T_5 = lt(sizeReg, UInt<2>("h2")) @[\\src\\main\\scala\\heap\\HeapControl.scala 75:24]
    node _GEN_1 = mux(_T_5, UInt<1>("h0"), sizeReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 75:31 76:21 37:24]
    node _GEN_2 = mux(_T_5, UInt<1>("h0"), UInt<3>("h4")) @[\\src\\main\\scala\\heap\\HeapControl.scala 75:31 77:22 79:22]
    node _GEN_3 = mux(_T_4, _stateReg_T, _GEN_2) @[\\src\\main\\scala\\heap\\HeapControl.scala 72:51 73:20]
    node _GEN_4 = mux(_T_4, sizeReg, _GEN_1) @[\\src\\main\\scala\\heap\\HeapControl.scala 37:24 72:51]
    node _GEN_5 = mux(io_req_valid, _GEN_3, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 71:26 83:18]
    node _GEN_6 = mux(io_req_valid, _GEN_4, sizeReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 37:24 71:26]
    node _T_6 = asUInt(UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_7 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_8 = eq(_T_6, _T_7) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _sizeReg_T = add(sizeReg, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapControl.scala 91:26]
    node _sizeReg_T_1 = tail(_sizeReg_T, 1) @[\\src\\main\\scala\\heap\\HeapControl.scala 91:26]
    node _subtreeIndexReg_T = sub(sizeReg, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapControl.scala 42:43]
    node _subtreeIndexReg_T_1 = tail(_subtreeIndexReg_T, 1) @[\\src\\main\\scala\\heap\\HeapControl.scala 42:43]
    node _subtreeIndexReg_T_2 = shr(_subtreeIndexReg_T_1, 1) @[\\src\\main\\scala\\heap\\HeapControl.scala 42:50]
    node _stateReg_T_1 = eq(sizeReg, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 94:31]
    node _stateReg_T_2 = mux(_stateReg_T_1, UInt<1>("h0"), UInt<2>("h2")) @[\\src\\main\\scala\\heap\\HeapControl.scala 94:22]
    node _T_9 = asUInt(UInt<2>("h2")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_10 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_11 = eq(_T_9, _T_10) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_12 = asUInt(UInt<2>("h3")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_13 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_14 = eq(_T_12, _T_13) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_15 = neq(subtreeIndexReg, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 103:54]
    node _T_16 = and(io_heapifier_swapped, _T_15) @[\\src\\main\\scala\\heap\\HeapControl.scala 103:35]
    node _subtreeIndexReg_T_3 = sub(subtreeIndexReg, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapControl.scala 42:43]
    node _subtreeIndexReg_T_4 = tail(_subtreeIndexReg_T_3, 1) @[\\src\\main\\scala\\heap\\HeapControl.scala 42:43]
    node _subtreeIndexReg_T_5 = shr(_subtreeIndexReg_T_4, 1) @[\\src\\main\\scala\\heap\\HeapControl.scala 42:50]
    node _GEN_7 = mux(_T_16, _subtreeIndexReg_T_5, subtreeIndexReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 103:63 104:27 38:32]
    node _GEN_8 = mux(_T_16, UInt<2>("h2"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 103:63 105:20 107:20]
    node _GEN_9 = mux(io_heapifier_valid, _GEN_7, subtreeIndexReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 102:32 38:32]
    node _GEN_10 = mux(io_heapifier_valid, _GEN_8, UInt<2>("h3")) @[\\src\\main\\scala\\heap\\HeapControl.scala 102:32 110:18]
    node _T_17 = asUInt(UInt<3>("h4")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_18 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_19 = eq(_T_17, _T_18) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_20 = asUInt(UInt<3>("h5")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_21 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_22 = eq(_T_20, _T_21) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _sizeReg_T_2 = sub(sizeReg, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapControl.scala 123:26]
    node _sizeReg_T_3 = tail(_sizeReg_T_2, 1) @[\\src\\main\\scala\\heap\\HeapControl.scala 123:26]
    node _stateReg_T_3 = eq(sizeReg, UInt<2>("h2")) @[\\src\\main\\scala\\heap\\HeapControl.scala 126:31]
    node _stateReg_T_4 = mux(_stateReg_T_3, UInt<1>("h0"), UInt<3>("h6")) @[\\src\\main\\scala\\heap\\HeapControl.scala 126:22]
    node _T_23 = asUInt(UInt<3>("h6")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_24 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_25 = eq(_T_23, _T_24) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_26 = asUInt(UInt<3>("h7")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_27 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_28 = eq(_T_26, _T_27) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _T_29 = shl(io_heapifier_largest, 1) @[\\src\\main\\scala\\heap\\HeapControl.scala 43:46]
    node _T_30 = add(_T_29, UInt<1>("h1")) @[\\src\\main\\scala\\heap\\HeapControl.scala 43:69]
    node _T_31 = tail(_T_30, 1) @[\\src\\main\\scala\\heap\\HeapControl.scala 43:69]
    node _T_32 = lt(_T_31, sizeReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 135:71]
    node _T_33 = and(io_heapifier_swapped, _T_32) @[\\src\\main\\scala\\heap\\HeapControl.scala 135:35]
    node _GEN_11 = mux(_T_33, io_heapifier_largest, subtreeIndexReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 135:82 136:27 38:32]
    node _GEN_12 = mux(_T_33, UInt<3>("h6"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 135:82 137:20 140:20]
    node _GEN_13 = mux(io_heapifier_valid, _GEN_11, subtreeIndexReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 134:32 38:32]
    node _GEN_14 = mux(io_heapifier_valid, _GEN_12, UInt<3>("h7")) @[\\src\\main\\scala\\heap\\HeapControl.scala 134:32 143:18]
    node _GEN_15 = mux(_T_28, _GEN_13, subtreeIndexReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 38:32]
    node _GEN_16 = mux(_T_28, _GEN_14, stateReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 35:25]
    node _GEN_17 = mux(_T_25, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 129:24 56:20]
    node _GEN_18 = mux(_T_25, UInt<3>("h7"), _GEN_16) @[\\src\\main\\scala\\heap\\HeapControl.scala 131:16 63:20]
    node _GEN_19 = mux(_T_25, subtreeIndexReg, _GEN_15) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 38:32]
    node _GEN_20 = validif(_T_22, tailReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 119:26]
    node _GEN_21 = validif(_T_22, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 120:26]
    node _GEN_22 = mux(_T_22, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 121:26 61:22]
    node _GEN_23 = mux(_T_22, _sizeReg_T_3, sizeReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 123:15 63:20 37:24]
    node _GEN_24 = mux(_T_22, UInt<1>("h0"), _GEN_19) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 124:23]
    node _GEN_25 = mux(_T_22, _stateReg_T_4, _GEN_18) @[\\src\\main\\scala\\heap\\HeapControl.scala 126:16 63:20]
    node _GEN_26 = mux(_T_22, UInt<1>("h0"), _GEN_17) @[\\src\\main\\scala\\heap\\HeapControl.scala 56:20 63:20]
    node _GEN_27 = mux(_T_19, io_mem_read_values_0, tailReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 114:15 63:20 40:24]
    node _GEN_28 = mux(_T_19, UInt<3>("h5"), _GEN_25) @[\\src\\main\\scala\\heap\\HeapControl.scala 116:16 63:20]
    node _GEN_29 = validif(eq(_T_19, UInt<1>("h0")), _GEN_20) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_30 = validif(eq(_T_19, UInt<1>("h0")), _GEN_21) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_31 = mux(_T_19, UInt<1>("h0"), _GEN_22) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 61:22]
    node _GEN_32 = mux(_T_19, sizeReg, _GEN_23) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 37:24]
    node _GEN_33 = mux(_T_19, subtreeIndexReg, _GEN_24) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 38:32]
    node _GEN_34 = mux(_T_19, UInt<1>("h0"), _GEN_26) @[\\src\\main\\scala\\heap\\HeapControl.scala 56:20 63:20]
    node _GEN_35 = mux(_T_14, _GEN_9, _GEN_33) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_36 = mux(_T_14, _GEN_10, _GEN_28) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_37 = mux(_T_14, tailReg, _GEN_27) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 40:24]
    node _GEN_38 = validif(eq(_T_14, UInt<1>("h0")), _GEN_29) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_39 = validif(eq(_T_14, UInt<1>("h0")), _GEN_30) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_40 = mux(_T_14, UInt<1>("h0"), _GEN_31) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 61:22]
    node _GEN_41 = mux(_T_14, sizeReg, _GEN_32) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 37:24]
    node _GEN_42 = mux(_T_14, UInt<1>("h0"), _GEN_34) @[\\src\\main\\scala\\heap\\HeapControl.scala 56:20 63:20]
    node _GEN_43 = mux(_T_11, UInt<1>("h1"), _GEN_42) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 97:24]
    node _GEN_44 = mux(_T_11, UInt<2>("h3"), _GEN_36) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 99:16]
    node _GEN_45 = mux(_T_11, subtreeIndexReg, _GEN_35) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 38:32]
    node _GEN_46 = mux(_T_11, tailReg, _GEN_37) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 40:24]
    node _GEN_47 = validif(eq(_T_11, UInt<1>("h0")), _GEN_38) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_48 = validif(eq(_T_11, UInt<1>("h0")), _GEN_39) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_49 = mux(_T_11, UInt<1>("h0"), _GEN_40) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 61:22]
    node _GEN_50 = mux(_T_11, sizeReg, _GEN_41) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 37:24]
    node _GEN_51 = mux(_T_8, newValueReg, _GEN_47) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 87:26]
    node _GEN_52 = mux(_T_8, sizeReg, _GEN_48) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 88:26]
    node _GEN_53 = mux(_T_8, UInt<1>("h1"), _GEN_49) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 89:26]
    node _GEN_54 = mux(_T_8, _sizeReg_T_1, _GEN_50) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 91:15]
    node _GEN_55 = mux(_T_8, _subtreeIndexReg_T_2, _GEN_45) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 92:23]
    node _GEN_56 = mux(_T_8, _stateReg_T_2, _GEN_44) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 94:16]
    node _GEN_57 = mux(_T_8, UInt<1>("h0"), _GEN_43) @[\\src\\main\\scala\\heap\\HeapControl.scala 56:20 63:20]
    node _GEN_58 = mux(_T_8, tailReg, _GEN_46) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 40:24]
    node _GEN_59 = mux(_T_3, io_req_newValue, newValueReg) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 65:19 39:28]
    node _GEN_60 = mux(_T_3, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\HeapControl.scala 52:16 63:20 66:20]
    node _GEN_61 = validif(_T_3, tailIndex) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 68:25]
    node _GEN_62 = mux(_T_3, _GEN_5, _GEN_56) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_63 = mux(_T_3, _GEN_6, _GEN_54) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_64 = validif(eq(_T_3, UInt<1>("h0")), _GEN_51) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_65 = validif(eq(_T_3, UInt<1>("h0")), _GEN_52) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20]
    node _GEN_66 = mux(_T_3, UInt<1>("h0"), _GEN_53) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 61:22]
    node _GEN_67 = mux(_T_3, subtreeIndexReg, _GEN_55) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 38:32]
    node _GEN_68 = mux(_T_3, UInt<1>("h0"), _GEN_57) @[\\src\\main\\scala\\heap\\HeapControl.scala 56:20 63:20]
    node _GEN_69 = mux(_T_3, tailReg, _GEN_58) @[\\src\\main\\scala\\heap\\HeapControl.scala 63:20 40:24]
    io_req_empty <= _io_req_empty_T @[\\src\\main\\scala\\heap\\HeapControl.scala 50:16]
    io_req_full <= full @[\\src\\main\\scala\\heap\\HeapControl.scala 51:15]
    io_req_ready <= _GEN_60
    io_mem_read_index <= _GEN_61
    io_mem_read_withSiblings is invalid
    io_mem_write_index <= _GEN_65
    io_mem_write_value <= _GEN_64
    io_mem_write_valid <= _GEN_66
    io_mem_requestRead <= _GEN_60
    io_fetcher_index <= subtreeIndexReg @[\\src\\main\\scala\\heap\\HeapControl.scala 54:20]
    io_fetcher_size <= sizeReg @[\\src\\main\\scala\\heap\\HeapControl.scala 55:19]
    io_fetcher_valid <= _GEN_68
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_62) @[\\src\\main\\scala\\heap\\HeapControl.scala 35:{25,25}]
    sizeReg <= mux(reset, UInt<4>("h0"), _GEN_63) @[\\src\\main\\scala\\heap\\HeapControl.scala 37:{24,24}]
    subtreeIndexReg <= mux(reset, UInt<4>("h0"), _GEN_67) @[\\src\\main\\scala\\heap\\HeapControl.scala 38:{32,32}]
    newValueReg <= mux(reset, UInt<8>("h0"), _GEN_59) @[\\src\\main\\scala\\heap\\HeapControl.scala 39:{28,28}]
    tailReg <= mux(reset, UInt<8>("h0"), _GEN_69) @[\\src\\main\\scala\\heap\\HeapControl.scala 40:{24,24}]
    full <= mux(reset, UInt<1>("h0"), _GEN_0) @[\\src\\main\\scala\\heap\\HeapControl.scala 47:{21,21}]

  module Heapifier :
    input clock : Clock
    input reset : UInt<1>
    output io_res_largest : UInt<4> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    output io_res_swapped : UInt<1> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    output io_res_valid : UInt<1> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    input io_maxFinder_largest_item : UInt<8> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    input io_maxFinder_largest_index : UInt<4> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    input io_maxFinder_parent_item : UInt<8> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    input io_maxFinder_parent_index : UInt<4> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    input io_maxFinder_isParent : UInt<1> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    input io_maxFinder_valid : UInt<1> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    output io_swapper_values_0_item : UInt<8> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    output io_swapper_values_0_index : UInt<4> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    output io_swapper_values_1_item : UInt<8> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    output io_swapper_values_1_index : UInt<4> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    output io_swapper_valid : UInt<1> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]
    input io_swapper_ready : UInt<1> @[\\src\\main\\scala\\heap\\Heapifier.scala 23:14]

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[\\src\\main\\scala\\heap\\Heapifier.scala 29:25]
    node swapRequired = eq(io_maxFinder_isParent, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Heapifier.scala 30:22]
    reg swapRequiredReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), swapRequiredReg) @[\\src\\main\\scala\\heap\\Heapifier.scala 31:32]
    node _T = asUInt(UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _T_1 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _T_2 = eq(_T, _T_1) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _stateReg_T = eq(io_maxFinder_valid, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Heapifier.scala 43:31]
    reg stateReg_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stateReg_REG) @[\\src\\main\\scala\\heap\\Heapifier.scala 43:30]
    node _stateReg_T_1 = and(stateReg_REG, io_maxFinder_valid) @[\\src\\main\\scala\\heap\\Heapifier.scala 43:52]
    node _stateReg_T_2 = mux(_stateReg_T_1, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Heapifier.scala 43:22]
    node _T_3 = asUInt(UInt<1>("h1")) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _T_4 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _T_5 = eq(_T_3, _T_4) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _GEN_0 = mux(swapRequired, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Heapifier.scala 39:20 47:26 48:26]
    node _GEN_1 = mux(swapRequired, UInt<2>("h2"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Heapifier.scala 47:26 49:18 51:18]
    node _GEN_2 = mux(swapRequired, UInt<1>("h0"), UInt<1>("h1")) @[\\src\\main\\scala\\heap\\Heapifier.scala 35:16 47:26 52:22]
    node _GEN_3 = mux(swapRequired, swapRequiredReg, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Heapifier.scala 34:18 47:26 53:24]
    node _T_6 = asUInt(UInt<2>("h2")) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _T_7 = asUInt(stateReg) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _T_8 = eq(_T_6, _T_7) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _stateReg_T_3 = mux(io_swapper_ready, UInt<1>("h0"), UInt<2>("h2")) @[\\src\\main\\scala\\heap\\Heapifier.scala 57:22]
    node _GEN_4 = mux(io_swapper_ready, UInt<1>("h1"), UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Heapifier.scala 35:16 58:30 59:22]
    node _GEN_5 = mux(_T_8, _stateReg_T_3, stateReg) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20 57:16 29:25]
    node _GEN_6 = mux(_T_8, _GEN_4, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Heapifier.scala 35:16 41:20]
    node _GEN_7 = mux(_T_5, swapRequired, swapRequiredReg) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20 46:23 31:32]
    node _GEN_8 = mux(_T_5, _GEN_0, UInt<1>("h0")) @[\\src\\main\\scala\\heap\\Heapifier.scala 39:20 41:20]
    node _GEN_9 = mux(_T_5, _GEN_1, _GEN_5) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _GEN_10 = mux(_T_5, _GEN_2, _GEN_6) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20]
    node _GEN_11 = mux(_T_5, _GEN_3, swapRequiredReg) @[\\src\\main\\scala\\heap\\Heapifier.scala 34:18 41:20]
    node _GEN_12 = mux(_T_2, _stateReg_T_2, _GEN_9) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20 43:16]
    node _GEN_13 = mux(_T_2, swapRequiredReg, _GEN_7) @[\\src\\main\\scala\\heap\\Heapifier.scala 41:20 31:32]
    node _GEN_14 = mux(_T_2, UInt<1>("h0"), _GEN_8) @[\\src\\main\\scala\\heap\\Heapifier.scala 39:20 41:20]
    node _GEN_15 = mux(_T_2, UInt<1>("h0"), _GEN_10) @[\\src\\main\\scala\\heap\\Heapifier.scala 35:16 41:20]
    node _GEN_16 = mux(_T_2, swapRequiredReg, _GEN_11) @[\\src\\main\\scala\\heap\\Heapifier.scala 34:18 41:20]
    io_res_largest <= io_maxFinder_largest_index @[\\src\\main\\scala\\heap\\Heapifier.scala 33:18]
    io_res_swapped <= _GEN_16
    io_res_valid <= _GEN_15
    io_swapper_values_0_item <= io_maxFinder_parent_item @[\\src\\main\\scala\\heap\\Heapifier.scala 37:24]
    io_swapper_values_0_index <= io_maxFinder_parent_index @[\\src\\main\\scala\\heap\\Heapifier.scala 37:24]
    io_swapper_values_1_item <= io_maxFinder_largest_item @[\\src\\main\\scala\\heap\\Heapifier.scala 38:24]
    io_swapper_values_1_index <= io_maxFinder_largest_index @[\\src\\main\\scala\\heap\\Heapifier.scala 38:24]
    io_swapper_valid <= _GEN_14
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_12) @[\\src\\main\\scala\\heap\\Heapifier.scala 29:{25,25}]
    swapRequiredReg <= mux(reset, UInt<1>("h0"), _GEN_13) @[\\src\\main\\scala\\heap\\Heapifier.scala 31:{32,32}]
    stateReg_REG <= _stateReg_T @[\\src\\main\\scala\\heap\\Heapifier.scala 43:30]

  module MaxFinder :
    input clock : Clock
    input reset : UInt<1>
    input io_fetcher_parent_item : UInt<8> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    input io_fetcher_parent_index : UInt<4> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    input io_fetcher_children_0_valid : UInt<1> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    input io_fetcher_children_0_data_item : UInt<8> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    input io_fetcher_children_0_data_index : UInt<4> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    input io_fetcher_children_1_valid : UInt<1> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    input io_fetcher_children_1_data_item : UInt<8> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    input io_fetcher_children_1_data_index : UInt<4> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    input io_fetcher_valid : UInt<1> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    output io_res_largest_item : UInt<8> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    output io_res_largest_index : UInt<4> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    output io_res_parent_item : UInt<8> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    output io_res_parent_index : UInt<4> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    output io_res_isParent : UInt<1> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]
    output io_res_valid : UInt<1> @[\\src\\main\\scala\\heap\\MaxFinder.scala 32:14]

    node _maxChild_T = gt(io_fetcher_children_1_data_item, io_fetcher_children_0_data_item) @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:40]
    node _maxChild_T_1 = and(io_fetcher_children_1_valid, _maxChild_T) @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:25]
    node _maxChild_T_2_valid = mux(_maxChild_T_1, io_fetcher_children_1_valid, io_fetcher_children_0_valid) @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:16]
    node _maxChild_T_2_data_item = mux(_maxChild_T_1, io_fetcher_children_1_data_item, io_fetcher_children_0_data_item) @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:16]
    node _maxChild_T_2_data_index = mux(_maxChild_T_1, io_fetcher_children_1_data_index, io_fetcher_children_0_data_index) @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:16]
    reg maxChild_valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maxChild_valid) @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:12]
    reg maxChild_data_item : UInt<8>, clock with :
      reset => (UInt<1>("h0"), maxChild_data_item) @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:12]
    reg maxChild_data_index : UInt<4>, clock with :
      reset => (UInt<1>("h0"), maxChild_data_index) @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:12]
    node _maxItem_T = gt(maxChild_data_item, io_fetcher_parent_item) @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:66]
    node _maxItem_T_1 = and(maxChild_valid, _maxItem_T) @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:44]
    node maxItem_w_item_item = maxChild_data_item @[\\src\\main\\scala\\heap\\MaxFinder.scala 17:19 18:14]
    node maxItem_w_1_item_item = io_fetcher_parent_item @[\\src\\main\\scala\\heap\\MaxFinder.scala 17:19 18:14]
    node _maxItem_T_2_item_item = mux(_maxItem_T_1, maxItem_w_item_item, maxItem_w_1_item_item) @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:28]
    node maxItem_w_item_index = maxChild_data_index @[\\src\\main\\scala\\heap\\MaxFinder.scala 17:19 18:14]
    node maxItem_w_1_item_index = io_fetcher_parent_index @[\\src\\main\\scala\\heap\\MaxFinder.scala 17:19 18:14]
    node _maxItem_T_2_item_index = mux(_maxItem_T_1, maxItem_w_item_index, maxItem_w_1_item_index) @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:28]
    node maxItem_w_isParent = UInt<1>("h0") @[\\src\\main\\scala\\heap\\MaxFinder.scala 17:19 19:18]
    node maxItem_w_1_isParent = UInt<1>("h1") @[\\src\\main\\scala\\heap\\MaxFinder.scala 17:19 19:18]
    node _maxItem_T_2_isParent = mux(_maxItem_T_1, maxItem_w_isParent, maxItem_w_1_isParent) @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:28]
    reg maxItem_item_item : UInt<8>, clock with :
      reset => (UInt<1>("h0"), maxItem_item_item) @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:24]
    reg maxItem_item_index : UInt<4>, clock with :
      reset => (UInt<1>("h0"), maxItem_item_index) @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:24]
    reg maxItem_isParent : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maxItem_isParent) @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:24]
    reg io_res_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_res_valid_REG) @[\\src\\main\\scala\\heap\\package.scala 13:85]
    reg io_res_valid_REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_res_valid_REG_1) @[\\src\\main\\scala\\heap\\package.scala 13:85]
    node _io_res_valid_WIRE = UInt<1>("h0") @[\\src\\main\\scala\\heap\\package.scala 13:{127,127}]
    node _io_res_valid_WIRE_1 = UInt<1>("h0") @[\\src\\main\\scala\\heap\\package.scala 13:{127,127}]
    io_res_largest_item <= maxItem_item_item @[\\src\\main\\scala\\heap\\MaxFinder.scala 43:18]
    io_res_largest_index <= maxItem_item_index @[\\src\\main\\scala\\heap\\MaxFinder.scala 43:18]
    io_res_parent_item <= io_fetcher_parent_item @[\\src\\main\\scala\\heap\\MaxFinder.scala 44:17]
    io_res_parent_index <= io_fetcher_parent_index @[\\src\\main\\scala\\heap\\MaxFinder.scala 44:17]
    io_res_isParent <= maxItem_isParent @[\\src\\main\\scala\\heap\\MaxFinder.scala 45:19]
    io_res_valid <= io_res_valid_REG_1 @[\\src\\main\\scala\\heap\\MaxFinder.scala 46:16]
    maxChild_valid <= _maxChild_T_2_valid @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:12]
    maxChild_data_item <= _maxChild_T_2_data_item @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:12]
    maxChild_data_index <= _maxChild_T_2_data_index @[\\src\\main\\scala\\heap\\MaxFinder.scala 40:12]
    maxItem_item_item <= _maxItem_T_2_item_item @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:24]
    maxItem_item_index <= _maxItem_T_2_item_index @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:24]
    maxItem_isParent <= _maxItem_T_2_isParent @[\\src\\main\\scala\\heap\\MaxFinder.scala 42:24]
    io_res_valid_REG <= mux(reset, _io_res_valid_WIRE, io_fetcher_valid) @[\\src\\main\\scala\\heap\\package.scala 13:{85,85,85}]
    io_res_valid_REG_1 <= mux(reset, _io_res_valid_WIRE_1, io_res_valid_REG) @[\\src\\main\\scala\\heap\\package.scala 13:{85,85,85}]

  module TestHeap :
    input clock : Clock
    input reset : UInt<1>
    input io_op : UInt<1> @[\\src\\main\\scala\\heap\\Heap.scala 31:14]
    input io_newValue : UInt<8> @[\\src\\main\\scala\\heap\\Heap.scala 31:14]
    output io_root : UInt<8> @[\\src\\main\\scala\\heap\\Heap.scala 31:14]
    output io_empty : UInt<1> @[\\src\\main\\scala\\heap\\Heap.scala 31:14]
    output io_full : UInt<1> @[\\src\\main\\scala\\heap\\Heap.scala 31:14]
    input io_valid : UInt<1> @[\\src\\main\\scala\\heap\\Heap.scala 31:14]
    output io_ready : UInt<1> @[\\src\\main\\scala\\heap\\Heap.scala 31:14]

    inst fetcher of Fetcher @[\\src\\main\\scala\\heap\\Heap.scala 34:25]
    inst swapper of Swapper @[\\src\\main\\scala\\heap\\Heap.scala 35:25]
    inst memory of HeapMemory @[\\src\\main\\scala\\heap\\Heap.scala 36:24]
    inst control of HeapControl @[\\src\\main\\scala\\heap\\Heap.scala 37:25]
    inst heapifier of Heapifier @[\\src\\main\\scala\\heap\\Heap.scala 38:27]
    inst maxFinder of MaxFinder @[\\src\\main\\scala\\heap\\Heap.scala 39:27]
    node _GEN_0 = mux(control.io_mem_requestRead, control.io_mem_read_index, fetcher.io_mem_index) @[\\src\\main\\scala\\heap\\Heap.scala 42:47 43:37 46:31]
    node _GEN_1 = mux(control.io_mem_requestRead, UInt<1>("h0"), fetcher.io_mem_withSiblings) @[\\src\\main\\scala\\heap\\Heap.scala 42:47 44:44 46:31]
    node _GEN_2 = mux(control.io_mem_write_valid, control.io_mem_write_index, swapper.io_mem_index) @[\\src\\main\\scala\\heap\\Heap.scala 52:47 53:32 55:32]
    node _GEN_3 = mux(control.io_mem_write_valid, control.io_mem_write_value, swapper.io_mem_value) @[\\src\\main\\scala\\heap\\Heap.scala 52:47 53:32 55:32]
    node _GEN_4 = mux(control.io_mem_write_valid, control.io_mem_write_valid, swapper.io_mem_valid) @[\\src\\main\\scala\\heap\\Heap.scala 52:47 53:32 55:32]
    io_root <= memory.io_root @[\\src\\main\\scala\\heap\\Heap.scala 71:11]
    io_empty <= control.io_req_empty @[\\src\\main\\scala\\heap\\Heap.scala 69:12]
    io_full <= control.io_req_full @[\\src\\main\\scala\\heap\\Heap.scala 70:11]
    io_ready <= control.io_req_ready @[\\src\\main\\scala\\heap\\Heap.scala 68:12]
    fetcher.clock <= clock
    fetcher.reset <= reset
    fetcher.io_req_index <= control.io_fetcher_index @[\\src\\main\\scala\\heap\\Heap.scala 58:29]
    fetcher.io_req_size <= control.io_fetcher_size @[\\src\\main\\scala\\heap\\Heap.scala 58:29]
    fetcher.io_req_valid <= control.io_fetcher_valid @[\\src\\main\\scala\\heap\\Heap.scala 58:29]
    fetcher.io_mem_values_0 <= memory.io_read_values_0 @[\\src\\main\\scala\\heap\\Heap.scala 50:36]
    fetcher.io_mem_values_1 <= memory.io_read_values_1 @[\\src\\main\\scala\\heap\\Heap.scala 50:36]
    swapper.clock <= clock
    swapper.reset <= reset
    swapper.io_req_values_0_item <= heapifier.io_swapper_values_0_item @[\\src\\main\\scala\\heap\\Heap.scala 62:35]
    swapper.io_req_values_0_index <= heapifier.io_swapper_values_0_index @[\\src\\main\\scala\\heap\\Heap.scala 62:35]
    swapper.io_req_values_1_item <= heapifier.io_swapper_values_1_item @[\\src\\main\\scala\\heap\\Heap.scala 62:35]
    swapper.io_req_values_1_index <= heapifier.io_swapper_values_1_index @[\\src\\main\\scala\\heap\\Heap.scala 62:35]
    swapper.io_req_valid <= heapifier.io_swapper_valid @[\\src\\main\\scala\\heap\\Heap.scala 62:35]
    memory.clock <= clock
    memory.reset <= reset
    memory.io_read_index <= _GEN_0
    memory.io_read_withSiblings <= _GEN_1
    memory.io_write_index <= _GEN_2
    memory.io_write_value <= _GEN_3
    memory.io_write_valid <= _GEN_4
    control.clock <= clock
    control.reset <= reset
    control.io_req_op <= io_op @[\\src\\main\\scala\\heap\\Heap.scala 65:32]
    control.io_req_newValue <= io_newValue @[\\src\\main\\scala\\heap\\Heap.scala 66:38]
    control.io_req_valid <= io_valid @[\\src\\main\\scala\\heap\\Heap.scala 64:35]
    control.io_mem_read_values_0 <= memory.io_read_values_0 @[\\src\\main\\scala\\heap\\Heap.scala 49:41]
    control.io_mem_read_values_1 <= memory.io_read_values_1 @[\\src\\main\\scala\\heap\\Heap.scala 49:41]
    control.io_heapifier_largest <= heapifier.io_res_largest @[\\src\\main\\scala\\heap\\Heap.scala 61:31]
    control.io_heapifier_swapped <= heapifier.io_res_swapped @[\\src\\main\\scala\\heap\\Heap.scala 61:31]
    control.io_heapifier_valid <= heapifier.io_res_valid @[\\src\\main\\scala\\heap\\Heap.scala 61:31]
    heapifier.clock <= clock
    heapifier.reset <= reset
    heapifier.io_maxFinder_largest_item <= maxFinder.io_res_largest_item @[\\src\\main\\scala\\heap\\Heap.scala 60:37]
    heapifier.io_maxFinder_largest_index <= maxFinder.io_res_largest_index @[\\src\\main\\scala\\heap\\Heap.scala 60:37]
    heapifier.io_maxFinder_parent_item <= maxFinder.io_res_parent_item @[\\src\\main\\scala\\heap\\Heap.scala 60:37]
    heapifier.io_maxFinder_parent_index <= maxFinder.io_res_parent_index @[\\src\\main\\scala\\heap\\Heap.scala 60:37]
    heapifier.io_maxFinder_isParent <= maxFinder.io_res_isParent @[\\src\\main\\scala\\heap\\Heap.scala 60:37]
    heapifier.io_maxFinder_valid <= maxFinder.io_res_valid @[\\src\\main\\scala\\heap\\Heap.scala 60:37]
    heapifier.io_swapper_ready <= swapper.io_req_ready @[\\src\\main\\scala\\heap\\Heap.scala 62:35]
    maxFinder.clock <= clock
    maxFinder.reset <= reset
    maxFinder.io_fetcher_parent_item <= fetcher.io_res_parent_item @[\\src\\main\\scala\\heap\\Heap.scala 59:29]
    maxFinder.io_fetcher_parent_index <= fetcher.io_res_parent_index @[\\src\\main\\scala\\heap\\Heap.scala 59:29]
    maxFinder.io_fetcher_children_0_valid <= fetcher.io_res_children_0_valid @[\\src\\main\\scala\\heap\\Heap.scala 59:29]
    maxFinder.io_fetcher_children_0_data_item <= fetcher.io_res_children_0_data_item @[\\src\\main\\scala\\heap\\Heap.scala 59:29]
    maxFinder.io_fetcher_children_0_data_index <= fetcher.io_res_children_0_data_index @[\\src\\main\\scala\\heap\\Heap.scala 59:29]
    maxFinder.io_fetcher_children_1_valid <= fetcher.io_res_children_1_valid @[\\src\\main\\scala\\heap\\Heap.scala 59:29]
    maxFinder.io_fetcher_children_1_data_item <= fetcher.io_res_children_1_data_item @[\\src\\main\\scala\\heap\\Heap.scala 59:29]
    maxFinder.io_fetcher_children_1_data_index <= fetcher.io_res_children_1_data_index @[\\src\\main\\scala\\heap\\Heap.scala 59:29]
    maxFinder.io_fetcher_valid <= fetcher.io_res_valid @[\\src\\main\\scala\\heap\\Heap.scala 59:29]
