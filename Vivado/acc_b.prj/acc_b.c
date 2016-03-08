#include "acc_b.h"

int acc_b(int b_in, bool b_en ) {
	static int cnt = 0;
	if(!b_en) {
		cnt += b_in;
	}
	return cnt;
}
