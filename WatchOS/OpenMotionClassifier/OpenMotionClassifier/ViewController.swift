//
//  ViewController.swift
//  OpenMotionClassifier
//
//  Created by Alex Moran on 7/8/15.
//  Copyright © 2015 salsicha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        lua_getglobal(L, "classifyExample")
//        var classify = THFloatTensor_new()
//        classify = THFloatTensor_newWithStorage(classify.storage, 1, 2, 1)
        
//        THFloatTensor classi = 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // SAVE TO DISK
    
    // Option 1
    
    //                let folder = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
    //                let path = folder.stringByAppendingPathComponent("votes")
    //                if let outputStream = NSOutputStream(toFileAtPath: path, append: true) {
    //                    outputStream.open()
    //                    let text = "some text"
    //
    //                    outputStream.write(text, maxLength: 0)
    //
    //                    outputStream.close()
    //                } else {
    //                    print("Unable to open file")
    //                }
    
    // Option 2
    
    //                let folder = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
    //                let path = folder.stringByAppendingPathComponent("votes")
    //                let file: NSFileHandle? = NSFileHandle(forUpdatingAtPath: path)
    //
    //                if file == nil {
    //                    print("File open failed")
    //                } else {
    //                    let data = ("black dog" as NSString).dataUsingEncoding(NSUTF8StringEncoding)
    //                    file?.seekToEndOfFile()
    //                    file?.writeData(data!)
    //                    file?.closeFile()
    //                }


}

