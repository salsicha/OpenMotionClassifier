//: Playground - noun: a place where people can play

import UIKit
import Foundation

class Architect {
    
    class Perceptron:Network {
        
        var input:Layer
        var hidden:[Layer]
        var output:Layer
        
        var previous:Layer
        
        var trainer:Trainer
        
        init(_ args: Int...) {
            if args.count < 3 {
                fatalError("Not enough layers (minimum 3) !!")
            }
            
            let inputs = args.first! // first argument
            let outputs = args.last! // last argument
            let layers = Array(args[1...args.count-2]) // all the arguments in the middle
            
            input = Layer(inputs)
            hidden = [Layer]()
            output = Layer(outputs)
            
            previous = input
            
            trainer = Trainer(Network())
            
            // generate hidden layers
            for level in layers {
                let layer = Layer(level)
                hidden.append(layer)
                previous.project(layer)
                previous = layer
            }
            previous.project(output)
        
            super.init()
            
            // set layers of the neural network
            set(input, hidden, output)
            
            // trainer for the network
            trainer = Trainer(self)
            
        }
    }

    
    // Multilayer Long Short-Term Memory
    class LSTM:Network {
        
    }
    
    
    // Liquid State Machine
    class Liquid:Network {
//        init(inputs, hidden, outputs, connections, gates) {
//        }
    }
    
    
    class Hopfield:Network {
//        init(size) {
//        }
    }
    
}

class Layer {
    
    var size:Int
    var list:[Int]
    var label:String?
    
    init(_ _size:Int, _ _label:String? = nil) {
        size = _size
        list = []
        label = _label
    }

    func project(layer:Layer, _ type:Int = 0, _ weights:[Int] = [0]) {
        
        // TODO: needs functionality
        
    }
    
}

class Network {
    
    struct NetworkLayers {
        var input:Layer
        var hidden:[Layer]
        var output:Layer
        
        init(_ _input:Layer, _ _hidden:[Layer], _ _output:Layer) {
            input = _input
            hidden = _hidden
            output = _output
        }
    }

    var layers:NetworkLayers
    var optimized:String?
    
    init() {
        layers = NetworkLayers(Layer(2), [Layer](), Layer(2))
        optimized = nil
    }
    
    // sets the layers of the network
    func set(input:Layer, _ hidden:[Layer], _ output:Layer) {
        layers = NetworkLayers(input, hidden, output)
        
        if optimized != nil {
            
            // TODO: needs implementation
            
//            optimized.reset()
        }
    }
    
    func inputs() -> Int {
        return layers.input.size
    }
    
    func outputs() -> Int {
        return layers.output.size
    }
}

class Neuron {
    
}


class Trainer {
    
    struct Options {
        var iterations:Int
        var error:Double
        var rate:Double
        var cost:(([Double], [Double]) -> Double)?
        var shuffle:Bool
        var log:Bool
        
        init(iterations:Int = 100000, error:Double = 0.005, rate:Double = 0.2, cost:(([Double], [Double]) -> Double)? = nil, shuffle:Bool = true, log:Bool = false) {
            
            self.iterations = iterations
            self.error = error
            self.rate = rate
            self.cost = cost
            self.shuffle = shuffle
            self.log = log
            
//            let test = cost!(1.5, 2.5)
        
//            print(test)
        }
    }

    var options:Options
    var network:Network
    var rate:Double
    var iterations:Int
    var error:Double
    var cost:(([Double], [Double]) -> Double)?
    
    init(_ _network:Network, _ _options:Options = Options()) {
        options = _options
        network = _network
        rate = options.rate
        iterations = options.iterations
        error = options.error
        cost = options.cost
    }
    
    func train(set:[Int], options:Options = Options()) {

        // TODO: needs functionality
        
    }
    
    func test(set:[Int], options:Options = Options()) {
        
        // TODO: needs functionality
        
    }
    
    func XOR(options:Options = Options()) {

        if network.inputs() != 2 || network.outputs() != 1 {
            fatalError("Incompatible network (2 inputs, 1 output)")
        }
        
        var defaults:Options = Options(iterations: 100000, error: 0.005, rate: 0.2, cost: Trainer.cost_f.MSE(cost_f()), shuffle: true, log: false)
        
//        var test = cost_f.MSE(cost_f())
//        test([2.0], [3.0])

        
        
//        var defaults = {
//            iterations: 100000,
//            log: false,
//            shuffle: true,
//            cost: Trainer.cost.MSE
//        }
//        
//        if (options)
//        for (var i in options)
//            defaults[i] = options[i];
//        
//        return this.train([{
//            input: [0, 0],
//            output: [0]
//            }, {
//                input: [1, 0],
//                output: [1]
//            }, {
//                input: [0, 1],
//                output: [1]
//            }, {
//                input: [1, 1],
//                output: [0]
//            }], defaults);
        
    }
    
    class cost_f {
        func MSE(target:[Double], _ output:[Double]) -> Double {
            
            print("test")
            
            var mse:Double = 0
            for i in 0...output.count {
                mse += pow(target[i] - output[i], 2)
            }
            return mse / Double(output.count)
        }
    }
}



var perceptron = Architect.Perceptron(2, 3, 1);
perceptron.trainer.XOR()


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



