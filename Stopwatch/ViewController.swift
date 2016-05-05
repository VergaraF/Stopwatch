//
//  ViewController.swift
//  Stopwatch
//
//  Created by Fabian Vergara on 2016-05-02.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var time:Int = 0
    private var timer = NSTimer()
    private var isPlaying:Bool = false
    @IBOutlet var timerLabel: UILabel!
    
    
    private func setTimerLabel(timerLabelToBeSet: Int){
        timerLabel.text = String(timerLabelToBeSet)
        
    }
    
    
    //Stop resets the timer
    @IBAction func stopButton(sender: AnyObject) {
        print("stop")
        if (self.time != 0){
            self.time = -1
        }
        print(self.time)
        
    }
    @IBAction func playButton(sender: AnyObject) {
        if !self.isPlaying{
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTimer"), userInfo: nil, repeats: true)
            self.isPlaying = true
        }
        
        
        print("play")
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        print("pauuse")
        
        self.timer.invalidate()
        self.isPlaying = false
    }
    
    func updateTimer(){
        self.time += 1
        print("Timer updated to : \(time)")
        setTimerLabel(self.time)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("tst")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

