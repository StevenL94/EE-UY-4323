//
//  acc_b_test.c
//  
//
//  Created by Steven Lee on 3/7/16.
//
//

#include <stdio.h>
#include "acc_b.h"

int main(int argc, const char * argv[]) {
    int data_out;
    bool data_en;
    data_out = acc_b (1, data_en);
    data_out = acc_b (2, data_en);
    data_out = acc_b (3, data_en);
    data_out = acc_b (4, data_en);
    data_out = acc_b (5, data_en);
    data_out = acc_b (6, data_en);
    data_out = acc_b (7, data_en);
    data_out = acc_b (8, data_en);
    data_out = acc_b (9, data_en);
    data_out = acc_b (10, data_en);
    if (data_out == 10) {
    	printf("Success");
        return 0;
    }
    else {
    	printf("Error");
        return 1;
    }
}
