// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#1 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.c"
#1 "<built-in>"
#1 "<command-line>"
#1 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.c"
#1 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.h" 1
#12 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.h"
#1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stdbool.h" 1 3 4
#13 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.h" 2

int acc_b (int b_in, _Bool b_en);
#2 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.c" 2


#ifndef HLS_FASTSIM
#include "apatb_acc_b.h"
#endif
#define acc_b(...) AESL_ORIG_DUT_acc_b(__VA_ARGS__)
#3 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.c"
int acc_b(int b_in, _Bool b_en ) {
 static int cnt = 0;
 if(!b_en) {
  cnt += b_in;
 }
 return cnt;
}
#undef acc_b

#9 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.c"