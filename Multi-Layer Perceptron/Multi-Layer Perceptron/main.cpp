//
//  main.cpp
//  Multi-Layer Perceptron
//
//  Created by Steven Lee on 2/15/16.
//  Copyright © 2016 Steven Lee. All rights reserved.
//

#include <iostream>
#include <cmath>

class Perceptron {
    float w[3];
    float y, l;
    
public:
    float* modifyWeights(float weights[]) {
        for (int i = 0; i < 3; i++) {
            w[i] = weights[i];
        }
        return w;
    }
    void input(float x[]) {
        y = x[0]*w[1] + x[1]*w[2] + w[0];
        y = 1/(1+exp(-y) );
    }
    float output() {
        return y;
    }
};

class Multilayer {
    float x[2];
    float w[6];
    float y[3];
    float l;
    Perceptron p1;
    Perceptron p2;
    Perceptron p3;

public:
    Multilayer(){
        l = static_cast<float>(rand())/static_cast<float>(RAND_MAX);
        for (int i = 0; i < 6; i++) {
            w[i] = static_cast<float>(rand())/static_cast<float>(RAND_MAX);
        }
        p1.modifyWeights(w);
        p2.modifyWeights(&w[3]);
    }
    void input(float x[]) {
        p1.input(x);
        p2.input(x);
    }
    void learn(float expected){
        int count = 0;
        y[0] = p1.output();
//        float error1 = expected - y[0];
        y[1] = p2.output();
//        float error2 = expected - y[1];
//        if (y[0] < .9*expected && y[1] < .9*expected) {
//            <#statements#>
//        }
        while (true) {
            //            Exit loop if result is at least within 90% of classification factor
            if ((y[0] == expected) && (y[1] == expected)) {
                break;
            }
            for (int i = 0; i < 2; i++) {
                //                w = w + α(d-y)x
                w[i+1] = w[i] + l*(expected-y[0])*x[i];
                w[i+4] = w[i+3] + l*(expected-y[1])*x[i];
                //                Modify learning rate if result not acquired within 10 iterations
                if (count == 10) {
                    l = static_cast<float>(rand())/static_cast<float>(RAND_MAX);
                    std::cout << "The new learning rate is " << l << std::endl;
                    count = 0;
                }
                else {
                    count++;
                }
            }
            y[0] = p1.output();
            y[1] = p2.output();
            std::cout << "The current output is " << y[2] << std::endl;
            if (y[0] == expected || y[0] >= .9*expected || y[1] == expected || y[1] >= .9*expected) {
                break;
            }
        }
        p3.input(y);
        y[2] = p3.output();
        std::cout << "The current output is " << y[2] << std::endl;
        int x_i = 2;
        while (true) {
            //            Exit loop if result is at least within 90% of classification factor
            if (y[2] == expected || y[2] >= .9*expected) {
                break;
            }
            for (int i = 2; i > 0; i--) {
                //                w = w + α(d-y)x
                w[i+3] = w[i+2] + l*(expected-y[2])*x[i];
                w[i] = w[i+1] + l*(expected-y[2])*x[i];
                if (x_i != 0) {
                    x_i--;
                }
                //                Modify learning rate if result not acquired within 10 iterations
                if (count == 10) {
                    l = static_cast<float>(rand())/static_cast<float>(RAND_MAX);
                    std::cout << "The new learning rate is " << l << std::endl;
                    count = 0;
                }
                else {
                    count++;
                }
            }
            y[2] = p2.output();
            std::cout << "The current output is " << y[2] << std::endl;
            if (y[2] == expected || y[2] >= .9*expected) {
                break;
            }
        }
    }
    float* output() {
        return y;
    }
};

int main(int argc, const char * argv[]) {
    float x[] = {0,0};
    Multilayer m;
    m.input(x);
    m.learn(0);
    float* y = m.output();
    std::cout << "Output Values: " << std::endl;
    for (int i = 0; i < 3; i++) {
        std::cout << y[i] << std::endl;
    }
    return 0;
}
