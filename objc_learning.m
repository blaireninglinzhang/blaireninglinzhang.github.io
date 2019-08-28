typedef int (^IntFunc)(int); 
// how to define a block: 
// returnType (^blockName)(parameterTypes) = ^returnType(parameters) {...};

IntFunc makeAdder(int x) {
    return ^(int y) { 
    	return x + y; 
    }
}

IntFunc adder3 = makeAdder(3); // returns ^(int y) { return x + y }; 
IntFund adder5 = makeAdder(5);

adder3(4); // returns 7
adder5(4); // returns 9CPT
adder3(2); // returns 5

// we first get 3 as x passed into makeAdder, then we pass 4 as y into return ^(int y)