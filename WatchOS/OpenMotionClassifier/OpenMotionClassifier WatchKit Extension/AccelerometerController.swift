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
                
                
                // TODO: open streaming connection and stream to phone
                
//                if WCSession.isSupported() {
//                    let session = WCSession.defaultSession()
//                    session.delegate = self
//                    session.activateSession()
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