#include<iostream>
#include<cassert>

using namespace std;

template <typename T = void>
struct GetBearerToken {
    static int execute() {
        return system(".\\function_definitions\\GetBearerToken.bat");
    }
};

template <typename T = void>
struct PlaceOrder {
    static int execute() {
        return system(".\\function_definitions\\PlaceOrder.bat");
    }
};

template <typename T = void>
struct CancelOrder {
    static int execute() {
        return system(".\\function_definitions\\CancelOrder.bat");
    }
};

template <typename T = void>
struct ModifyOrder {
    static int execute() {
        return system(".\\function_definitions\\ModifyOrder.bat");
    }
};

template <typename T = void>
struct GetOrderbook {
    static int execute() {
        return system(".\\function_definitions\\GetOrderbook.bat");
    }
};

template <typename T = void>
struct ViewCurrentPositions {
    static int execute() {
        return system(".\\function_definitions\\ViewCurrentPositions.bat");
    }
};

int main() {

    assert(GetBearerToken<>::execute()==0);
    assert(PlaceOrder<>::execute()==0);
    assert(ModifyOrder<>::execute()==0);
    assert(CancelOrder<>::execute()==0);
    assert(GetOrderbook<>::execute()==0);
    assert(ViewCurrentPositions<>::execute()==0);

    
}

