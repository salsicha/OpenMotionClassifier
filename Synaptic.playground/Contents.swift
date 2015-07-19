//: Playground - noun: a place where people can play

import UIKit
import Foundation

class Architect {
    
    class Perceptron {
        var inputs:Int = 2 // first argument
        var outputs:Int = 2 // last argument
        var layers:[Int] = [2] // all the arguments in the middle
        
        var input:Layer
        var hidden = [Layer]()
        var output:Layer
        
        var previous:Layer
        
        init(_ args: Int...) {
            if args.count < 3 {
                fatalError("Not enough layers (minimum 3) !!")
            }
            
            inputs = args.first! // first argument
            outputs = args.last! // last argument
            layers = Array(args[1...args.count-2]) // all the arguments in the middle
            
            input = Layer(inputs)
            output = Layer(outputs)
            previous = input
            
            // generate hidden layers
            for level in layers {
                var layer = Layer(level)
                hidden.append(layer)
//                previous.project(layer);
//                previous = layer;
            }
//            previous.project(output);
            
            // set layers of the neural network
//            this.set({
//                input: input,
//                hidden: hidden,
//                output: output
//            });
        }
        
        // trainer for the network
//        var trainer = Trainer();
    }
}

class Layer {
    var size = 0
    var list = []
    var label:String?
    
    init(_ size:Int, _ label:String? = nil) {
        
    }

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




var perceptron = Architect.Perceptron(2, 3, 2);
//perceptron.trainer.XOR();


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



