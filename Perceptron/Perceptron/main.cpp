//
//  main.cpp
//  Perceptron
//
//  Created by Steven Lee on 2/15/16.
//  Copyright © 2016 Steven Lee. All rights reserved.
//

#include <iostream>

class Perceptron {
    float w[3];
    float d;
    float t, y, l;
    
public:
    Perceptron() {
//        Initialize perceptron with weight and learning factor
        for (int i = 0; i < 3; i++) {
            w[i] = static_cast<float>(rand())/static_cast<float>(RAND_MAX);
        }
        l = static_cast<float>(rand())/static_cast<float>(RAND_MAX);
    }
    
    void classify(float classification) {
//        Classification of data
        d = classification;
    }
    
    void learn(float x[2]) {
//        Learning by using data set adjusting weights based on current output
        std::cout << "The current weights are w1: " << w[1] << " w2: " << w[2] << std::endl;
        std::cout << "The current learning rate is " << y << std::endl;
        std::cout << "The current threshold is " << t << std::endl;
        int count = 0;
//        f(x) = ∑x•w + b
        y = x[0]*w[1] + x[1]*w[2] + w[0];
        std::cout << "The current output is " << y << std::endl;
        t = x[0]*w[1] + x[1]*w[2] + w[0];
        while (true) {
//            Exit loop if result is at least within 90% of classification
            if (y == d || y >= .9*d) {
                break;
            }
            for (int i = 0; i < 2; i++) {
//                w = w + α(d-y)x
                w[i+1] = w[i] + l*(d-y)*x[i];
//                Modify learning rate if result not acquired within 10 iterations
                if (count == 10) {
                    l = static_cast<float>(rand())/static_cast<float>(RAND_MAX);
                    std::cout << "The new learning rate is " << y << std::endl;
                    count = 0;
                }
                else {
                    count++;
                }
            }
            y = x[0]*w[1] + x[1]*w[2];
            std::cout << "The current output is " << y << std::endl;
            if (y == d || y >= .9*d) {
                break;
            }
        }
//        Final classification and rounding out result
        if (y > 0) {
            y = 1;
        }
        else {
            y = 0;
        }
    }
    
    float getOutput() {
//        Returns output
        return y;
    }
};

int main(int argc, const char * argv[]) {
//    OR
    std::cout << "OR Gate\nTrial 1: " << std::endl;
    float set1[] = {0, 0};
    Perceptron p;
    p.classify(0);
    p.learn(set1);
    std::cout << "The output was " << p.getOutput() << " with an input of [" << set1[0] << "," << set1[1] << "]." << std::endl;
    std::cout << "\nTrial 2: " << std::endl;
    float set2[] = {0, 1};
    p.classify(1);
    p.learn(set2);
    std::cout << "The output was " << p.getOutput() << " with an input of [" << set2[0] << "," << set2[1] << "]." << std::endl;
    std::cout << "\nTrial 3: " << std::endl;
    float set3[] = {1, 0};
    p.classify(1);
    p.learn(set3);
    std::cout << "The output was " << p.getOutput() << " with an input of [" << set3[0] << "," << set3[1] << "]." << std::endl;
    std::cout << "\nTrial 4: " << std::endl;
    float set4[] = {1, 1};
    p.classify(1);
    p.learn(set4);
    std::cout << "The output was " << p.getOutput() << " with an input of [" << set4[0] << "," << set4[1] << "]." << std::endl;
//    AND
//    std::cout << "AND Gate\nTrial 1: " << std::endl;
//    float set1[] = {0, 0};
//    Perceptron p;
//    p.classify(0);
//    p.learn(set1);
//    std::cout << "The output was " << p.getOutput() << " with an input of [" << set1[0] << "," << set1[1] << "]." << std::endl;
//    std::cout << "\nTrial 2: " << std::endl;
//    float set2[] = {0, 1};
//    p.classify(0);
//    p.learn(set2);
//    std::cout << "The output was " << p.getOutput() << " with an input of [" << set2[0] << "," << set2[1] << "]." << std::endl;
//    std::cout << "\nTrial 3: " << std::endl;
//    float set3[] = {1, 0};
//    p.classify(0);
//    p.learn(set3);
//    std::cout << "The output was " << p.getOutput() << " with an input of [" << set3[0] << "," << set3[1] << "]." << std::endl;
//    std::cout << "\nTrial 4: " << std::endl;
//    float set4[] = {1, 1};
//    p.classify(1);
//    p.learn(set4);
//    std::cout << "The output was " << p.getOutput() << " with an input of [" << set4[0] << "," << set4[1] << "]." << std::endl;
    return 0;
}
