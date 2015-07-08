import WatchKit
import Foundation
import CoreMotion



class AccelerometerController: WKInterfaceController {
    
    
    
    @IBOutlet weak var labelX: WKInterfaceLabel!
    @IBOutlet weak var labelY: WKInterfaceLabel!
    @IBOutlet weak var labelZ: WKInterfaceLabel!
    let motionManager = CMMotionManager()
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        motionManager.accelerometerUpdateInterval = 0.1
    }
    
    override func willActivate() {
        super.willActivate()
        
        if (motionManager.accelerometerAvailable == true) {
            let handler:CMAccelerometerHandler = {(data: CMAccelerometerData?, error: NSError?) -> Void in
                self.labelX.setText(String(format: "%.2f", data!.acceleration.x))
                self.labelY.setText(String(format: "%.2f", data!.acceleration.y))
                self.labelZ.setText(String(format: "%.2f", data!.acceleration.z))
                
                
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
            motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue()!, withHandler: handler)
        }
        else {
            self.labelX.setText("not available")
            self.labelY.setText("not available")
            self.labelZ.setText("not available")
        }
    }
    
    override func didDeactivate() {
        super.didDeactivate()
        
        motionManager.stopAccelerometerUpdates()
    }
}