//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Rexana Church on 2/23/17.
//  Copyright © 2017 Rexana Church. All rights reserved.
//

import Foundation
import UIKit

class Stopwatch: UIViewController {
    //var timer = Timer()
    var mins = 0
    var secs = 0
    var ms = 0
    
//    func startTimer() {
//        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(Stopwatch.updateTime), userInfo: nil, repeats: true)
//    }
    
    func updateTime() {
        ms += 1
        if (ms > 99) {
            ms = 0
            secs += 1
        }
        if (secs >= 60) {
            secs = 0
            mins += 1
        }
        if (mins >= 99) {
            mins = 0
            secs = 0
            ms = 0
        }
    }
    
    func reset() {
        ms = 0
        secs = 0
        mins = 0
    }
    
//    func endTimer() {
//        timer.invalidate()
//    }
}
