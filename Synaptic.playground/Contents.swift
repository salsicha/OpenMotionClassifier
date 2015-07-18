//: Playground - noun: a place where people can play

//import UIKit
import Foundation

class Architect {
    
    class Perceptron {
        var inputs:Int = 2
        var outputs:Int = 2
        var layers:[Int] = [2]
        
        init(_ args: Int...) {
            if args.count < 3 {
                let error = NSException(name:"Error", reason:"not enough layers (minimum 3) !!", userInfo:nil)
                error.raise()
            }
            
            inputs = args.first! // first argument
            outputs = args.last! // last argument
            layers = Array(args[1...args.count-2]) // all the arguments in the middle
        }
        
        var input = Layer(inputs)
        var hidden = []
        var output = Layer(outputs)
        
        var previous = input
        
        
    }
}

class Layer {
    
}

class Network {
    
}

class Neuron {
    
}

class Trainer {
    
}



// how does perceptron have a trainer? activate?


// 1. can i initialize a new perceptron?

// at what scope do i put my network, trainer, etc...?
// how do i reproduce the optomizer?

// pass perceptron/trainer as "inout" parameters?



// perceptron is a function or object of achitect
// trainer is a function or object of perceptron?
// XOR sends data to the train() function




var perceptron = Architect.Perceptron(2, 3, 1);
perceptron.trainer.XOR();


//var test00 = Math.round(perceptron.activate([0, 0]));
//it("input: [0,0] output: " + test00, function() {
//    assert.equal(test00, 0, "[0,0] did not output 0");
//});
//
//var test01 = Math.round(perceptron.activate([0, 1]));
//it("input: [0,1] output: " + test01, function() {
//    assert.equal(test01, 1, "[0,1] did not output 1");
//});
//
//var test10 = Math.round(perceptron.activate([1, 0]));
//it("input: [1,0] output: " + test10, function() {
//    assert.equal(test10, 1, "[1,0] did not output 1");
//});
//
//var test11 = Math.round(perceptron.activate([1, 1]));
//it("input: [1,1] output: " + test11, function() {
//    assert.equal(test11, 0, "[1,1] did not output 0");
//});



