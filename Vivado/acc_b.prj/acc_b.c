#include "acc_b.h"

float acc_b(float b_in, bool b_en ) {
	static float cnt = 0;
	if(!b_en) {
		cnt += b_in;
	}
	return cnt;
}
