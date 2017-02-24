//
//  ViewController.swift
//  Stopwatch
//
//  Created by Rexana Church on 2/23/17.
//  Copyright © 2017 Rexana Church. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var StopwatchLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    var stopwatch = Stopwatch()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimerLabel() {
        stopwatch.updateTime()
        self.TimeLabel.text = String(format: "%02d:%02d.%d", stopwatch.mins, stopwatch.secs, stopwatch.ms)
    }

    @IBAction func startButtonWasPressed(_ sender: UIButton) {
        // Start the timer
        timer.invalidate()
        stopwatch.reset()
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.updateTimerLabel), userInfo: nil, repeats: true)
    }

    @IBAction func stopButtonWasPressed(_ sender: UIButton) {
        // Stop the timer
        timer.invalidate()
    }
}

