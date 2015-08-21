

#include <iostream>
class ExampleClass {
private:
    int counter;
public:
    ExampleClass(int counter) {
        this->counter = counter;
    }
    
    int getCounter() {
        return counter;
    }
    void incrementCounter() {
        this->counter++;
    }
};
