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
    var label:String!
    
    init(_ _size:Int, _ _label:String! = nil) {
        size = _size
        list = []
        label = _label
    }
    
    // activates all the neurons in the layer
    func activate(input:[Double]! = nil) -> Array<Double> {
        
        // TODO:needs functionality
        
//        var activations = [];
//        
//        if (typeof input != 'undefined') {
//            if (input.length != this.size)
//            throw new Error("INPUT size and LAYER size must be the same to activate!");
//            
//            for (var id in this.list) {
//                var neuron = this.list[id];
//                var activation = neuron.activate(input[id]);
//                activations.push(activation);
//            }
//        } else {
//            for (var id in this.list) {
//                var neuron = this.list[id];
//                var activation = neuron.activate();
//                activations.push(activation);
//            }
//        }
//        return activations;
        
        return [0]
        
    }
    
    // propagates the error on all the neurons of the layer
    func propagate() {
        
    }
    
    // projects a connection from this layer to another one
    func project(layer:Layer, _ type:Int = 0, _ weights:[Int] = [0]) {
        
        // TODO: needs functionality
        
    }
    
    // gates a connection betwenn two layers
    func gate() {
    
    }
    
    // true or false whether the whole layer is self-connected or not
    func selfconnected() {
    
    }
    
    // true of false whether the layer is connected to another layer (parameter) or not
    func connected() {
    
    }
    
    // clears all the neuorns in the layer
    func clear() {
    
    }
    
    // resets all the neurons in the layer
    func reset() {
    
    }
    
    // returns all the neurons in the layer (array)
    func neurons() {
    
    }
    
    // adds a neuron to the layer
    func add() {
    
    }
    
    func set() {
    
    }
    
    // represents a connection from one layer to another, and keeps track of its weight and gain
    func connection() {
    
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
    var optimized:Bool!
    
    init() {
        layers = NetworkLayers(Layer(2), [Layer](), Layer(2))
        optimized = nil
    }
    
    // feed-forward activation of all the layers to produce an ouput
    func activate(input:[Double]) -> [Double] {
        
        if self.optimized == false {
            self.layers.input.activate(input)
            for layer in self.layers.hidden {
                layer.activate()
            }
            return self.layers.output.activate()
        }
        
        if self.optimized == nil {
            self.optimize()
        }

        // I just made optimize a bool
        // it has to be an optional
        
        return self.optimized.activate(input)
    }
    
    // back-propagate the error thru the network
    func propagate(currentRate:Any, _ target:[Double]!) {
//        var target:[Int]!
//        var currentRate:Any
        
        // TODO: here
        
    }
    
    // project a connection to another unit (either a network or a layer)
    func project() {
    
    }
    
    // let this network gate a connection
    func gate() {
        
    }
    
    // clear all elegibility traces and extended elegibility traces (the network forgets its context, but not what was trained)
    func clear() {
        
    }
    
    // reset all weights and clear all traces (ends up like a new network)
    func reset() {
        
    }
    
    // hardcodes the behaviour of the whole network into a single optimized function
    func optimize() {
        
    }
    
    // restores all the values from the optimized network the their respective objects in order to manipulate the network
    func restore() {
    
    }
    
    // returns all the neurons in the network
    func neurons() {
        
    }
    
    // returns number of inputs of the network
    func inputs() -> Int {
        return layers.input.size
    }
    
    // returns number of outputs of hte network
    func outputs() -> Int {
        return layers.output.size
    }
    
    // sets the layers of the network
    func set(input:Layer, _ hidden:[Layer], _ output:Layer) {
        layers = NetworkLayers(input, hidden, output)
        
        if optimized != nil {
            
            // TODO: needs implementation
            
//            optimized.reset()
        }
    }
    
    func setOptimize() {
        
    }
    
    // returns a json that represents all the neurons and connections of the network
    func toJSON() {
        
    }

    // export the topology into dot language which can be visualized as graphs using dot
    /* example: ... console.log(net.toDotLang());
    $ node example.js > example.dot
    $ dot example.dot -Tpng > out.png
    */
    func toDot() {
        
    }
    
    // returns a function that works as the activation of the network and can be used without depending on the library
    func standalone() {
        
    }
    
    func worker() {
        
    }
    
    // returns a copy of the network
    func clone() {
        
    }
    
    // rebuild a network that has been stored in a json using the method toJSON()
    func fromJSON() {
        
    }
}

class Neuron {
    
    // activate the neuron
    func activate() {
        
    }
    
    // back-propagate the error
    func propagate() {
        
    }
    
    func project() {
        
    }
    
    func gate() {
        
    }
    
    // returns true or false whether the neuron is self-connected or not
    func selfconnected() {
        
    }
    
    // returns true or false whether the neuron is connected to another neuron (parameter)
    func connected() {
        
    }
    
    // clears all the traces (the neuron forgets it's context, but the connections remain intact)
    func clear() {
    
    }
    
    // all the connections are randomized and the traces are cleared
    func reset() {
    
    }
    
    // hardcodes the behaviour of the neuron into an optimized function
    func optimize() {
        
    }
    
    // represents a connection between two neurons
    func connection() {
        
    }
    
    // squashing functions
    class Squash {
        
//        func LOGISTIC(x, derivate) {
//            if !derivate {
//                return 1 / (1 + Math.exp(-x))
//            }
//            var fx = LOGISTIC(x)
//            return fx * (1 - fx)
//        }
        
//        func TANH(x, derivate) {
//            if derivate {
//                return 1 - Math.pow(Neuron.squash.TANH(x), 2)
//            var eP = Math.exp(x)
//            var eN = 1 / eP
//            return (eP - eN) / (eP + eN)
//        }
        
//        func IDENTITY(x, derivate) {
//            return derivate ? 1 : x;
//        }
        
//        func HLIM(x, derivate) {
//            return derivate ? 1 : +(x > 0)
//        }
        
    }
    
    
}


class Trainer {
    
    struct Schedule : NilLiteralConvertible {
        
        init(nilLiteral: ()) {}
        
        var every:Int!
        func do_f(data: Options) -> Bool {
            return true
        }
    }
    
    struct Options : NilLiteralConvertible {

        init(nilLiteral: ()) {}
        
        var iterations:Int!
        var error:Double!
        var rate:Double!
        var cost:(([Double], [Double]) -> Double)!
        var shuffle:Bool!
        var log:Int!
        var schedule:Schedule!
        
        // iterations: 100000
        
        init(iterations:Int = 10, error:Double = 0.005, rate:Double = 0.2, cost:(([Double], [Double]) -> Double)! = Cost.MSE(Trainer.Cost()), shuffle:Bool = true, log:Int = 0, schedule:Schedule = nil) {
            
            self.iterations = iterations
            self.error = error
            self.rate = rate
            self.cost = cost
            self.shuffle = shuffle
            self.log = log
            self.schedule = schedule
        }
        
        subscript(index:Int) -> Any {
            
            get {
                switch index {
                case 0:
                    return self.iterations
                case 1:
                    return self.error
                case 2:
                    return self.rate
                case 3:
                    return self.cost
                case 4:
                    return self.shuffle
                case 5:
                    return self.log
                case 6:
                    return self.schedule
                default:
                    return 0
                }
            }
            
            set(newValue) {
                switch index {
                case 0:
                    self.iterations = newValue as! Int
                case 1:
                    self.error = newValue as! Double
                case 2:
                    self.rate = newValue as! Double
                case 3:
//                    print(_stdlib_getDemangledTypeName(newValue))

                    self.cost = newValue as! (([Double], [Double]) -> Double)
                    
                case 4:
                    self.shuffle = newValue as! Bool
                case 5:
                    self.log = newValue as! Int
                case 6:
                    self.schedule = newValue as! Schedule
                default:
                    print("error")
                }
            }
        }
    }

    var options:Options
    var network:Network
    var rate:Any
    var iterations:Int
    var error:Double
    var cost:(([Double], [Double]) -> Double)!
    var schedule:Schedule!
    
//    init(_ network:Network, _ options:Options = nil) {
    init(_ network:Network, _ options:Options = Options()) {
        self.options = options
        self.network = network
        self.rate = options.rate
        self.iterations = options.iterations
        self.error = options.error
        self.cost = options.cost
        self.schedule = options.schedule
    }
    
    // trains any given set to a network
//    func train(set:[[String:[Double]]], options:Options = Options()) {
    func train(set:[[String:[Double]]], options:Options! = nil) -> Dictionary<String, Any> {
        var error:Double = 1
        var iterations:Int = 0
        var bucketSize:Double = 0
        var abort:Bool = false
        var input:[Double]!
        var output:[Double]!
        var target:[Double]!
        var currentRate:Any
        
//        var cost = options && options.cost || this.cost || Trainer.cost.MSE
        var cost = self.cost
        
        var start:Int = Int(NSDate().timeIntervalSince1970)

        if options != nil {
            if options.shuffle != nil {
                // ?
                //function shuffle(o) { //v1.0
                //    for (var j, x, i = o.length; i; j = Math.floor(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);
                //    return o;
                //};
            }
            
            if options.iterations != nil {
                self.iterations = options.iterations
            }
            
            if options.error != nil {
                self.error = options.error
            }
            
            if options.rate != nil {
                self.rate = options.rate
            }
            
            if options.cost != nil {
                self.cost = options.cost
            }
            
            if options.schedule != nil {
                self.schedule = options.schedule
            }
        }
        
        currentRate = self.rate
        
//        if currentRate is [Double] {
        if let _rate = self.rate as? [Double] {
//            bucketSize = floor(self.iterations / Array(arrayLiteral: self.rate).count)
            bucketSize = floor(Double(self.iterations) / Double(_rate.count))
        }

        
        while !abort && iterations < self.iterations && error > self.error {
            error = 0
            
            if bucketSize > 0 {
//                if let _rate = self.rate as? Array<Double> {
                if let _rate = self.rate as? [Double] {
                    var currentBucket:Int = Int(floor(Double(iterations) / bucketSize))
                    if currentBucket < _rate.count {
                        currentRate = _rate[currentBucket] // || currentRate
                    }
                }
            }
            
            for train in set {
//                let _train = train as? Dictionary<String, Array<Int>>
//                let _train = train as? [[String:[Int]]]

//                input = set[train].input
//                target = set[train].output
                
                input = train["input"]
                target = train["output"]
                
                output = self.network.activate(input)
                self.network.propagate(currentRate, target)
                
                print("errors")
                
                error += cost(target, output)
            }
            
            // check error
            iterations++;
            error /= Double(set.count);

            if options != nil {
                if self.schedule != nil && self.schedule.every != nil && iterations % self.schedule.every == 0 {
                    abort = self.schedule.do_f( Options(error: error, iterations: iterations, rate: currentRate as! Double) )
                } else if options.log != nil && Double(iterations) % Double(options.log) == 0 {
                    print("iterations \(iterations) error \(error) rate \(currentRate)")
                }
                
                if options.shuffle != nil {
                    shuffle(set)
                }
            }
        }

        let time_delta:Int = Int(NSDate().timeIntervalSince1970) - start
        
        let results:Dictionary<String, Any> = [
            "error": error,
            "iterations": iterations,
            "time": time_delta
        ]

        return results
    }
    
    // tests a set and returns the error and elapsed time
    func test(set:[Int], options:Options = Options()) {
        
        // TODO: needs functionality
        
//        var error = 0;
//        var abort = false;
//        var input, output, target;
//        var cost = options && options.cost || this.cost || Trainer.cost.MSE;
//        
//        var start = Date.now();
//        
//        for (var test in set) {
//            input = set[test].input;
//            target = set[test].output;
//            output = this.network.activate(input);
//            error += cost(target, output);
//        }
//        
//        error /= set.length;
//        
//        var results = {
//            error: error,
//            time: Date.now() - start
//        }
//        
//        return results;
        
    }
    
    // trains any given set to a network using a WebWorker
    func workerTrain() {
        
    }
    
    // trains an XOR to the network
    func XOR(options:Options = Options()) -> Dictionary<String, Any> {

        if self.network.inputs() != 2 || self.network.outputs() != 1 {
            fatalError("Incompatible network (2 inputs, 1 output)")
        }

//        let test = Cost.MSE(Cost())
//        test([2.0], [3.0])
        
        // iterations: 100000
        
        var defaults:Options = Options(iterations: 10, error: 0.005, rate: 0.2, cost: Trainer.Cost.MSE(Trainer.Cost()), shuffle: true, log: 0);
    
        
        for i in 0...5 {
            defaults[i] = options[i];
        }
        
        return self.train([[
            "input": [0, 0],
            "output": [0]
            ], [
            "input": [1, 0],
            "output": [1]
            ], [
            "input": [0, 1],
            "output": [1]
            ], [
            "input": [1, 1],
            "output": [0]
            ]], options: defaults);
    
    }
    
    // trains the network to pass a Distracted Sequence Recall test
    func DSR() {
        
    }
    
    // train the network to learn an Embeded Reber Grammar
    func ERG() {
        
    }
    
    func timingTask() {
        
    }
    
    func shuffle<T>(var o:[T]) -> [T] {
        
        var j:Int
        var x:T
        
        for var i = 0; i < o.count; i++ {
            j = Int(arc4random_uniform(UInt32(o.count)))
            x = o[i]
            o[i] = o[j]
            o[j] = x
        }
        
        return o
    }
    
    class Cost {
        func CROSS_ENTROPY(target:[Double], _ output:[Double]) -> Double {
            var crossentropy:Double = 0
            for i in 0..<output.count {
//                crossentropy -= (target[i] * log(output[i]+1e-15)) + ((1-target[i]) * log((1+1e-15)-output[i]))
            }
            return crossentropy
        }
        
        func MSE(target:[Double], _ output:[Double]) -> Double {
            var mse:Double = 0
            for i in 0..<output.count {
                mse += pow(target[i] - output[i], 2)
            }
            return mse / Double(output.count)
        }
        
        func BINARY(target:[Double], _ output:[Double]) -> Double {
            var misses:Double = 0
            for i in 0..<output.count {
//                misses += round(target[i] * 2) != round(output[i] * 2)
            }
            return misses
        }
    }
}


var perceptron = Architect.Perceptron(2, 3, 1)
perceptron.trainer.XOR(

//    iterations: 3000,
//    rate: 0.000001,
//    error: 0.000001,
//    schedule: {
//        every: 1000,
//        do: function(data) {
//            if( data.iterations == 20000){
//                return true
//            }
//        }
//    }

)


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



