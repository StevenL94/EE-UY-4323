#pragma line 1 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.c"
#pragma line 1 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.h" 1
#pragma line 12 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.h"
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stdbool.h" 1 3 4
#pragma line 13 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.h" 2
#pragma empty_line
int acc_b (int b_in, _Bool b_en);
#pragma line 2 "C:/Users/stevenlee/Documents/acc_b.prj/acc_b.c" 2
#pragma empty_line
int acc_b(int b_in, _Bool b_en ) {
 static int cnt = 0;
 if(!b_en) {
  cnt += b_in;
 }
 return cnt;
}
