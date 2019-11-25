//
//  FirstViewController.swift
//  gyro_ver1
//
//  Created by Erika Ura on 2019/09/11.
//  Copyright © 2019年 Erika Ura. All rights reserved.
//

import UIKit
import CoreMotion

class FirstViewController: UIViewController {
    
    let motion = CMMotionManager()
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.setTitle("Start", for: .normal)
    }
    
    func startDeviceMotion(){
        if motion.isDeviceMotionAvailable{
            self.motion.deviceMotionUpdateInterval=1.0/60.0
            self.motion.startDeviceMotionUpdates()
            self.motion.showsDeviceMovementDisplay=true;
            
        }
    }
    //ボタンが押された時に呼ばれるメソッド.
    
   
    @IBAction func tapb(_ sender: Any) {
    button.setTitle("Stop", for: .normal)
        }

}
