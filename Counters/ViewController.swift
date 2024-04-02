//
//  ViewController.swift
//  Counters
//
//  Created by Cihan on 22.01.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelTime: UILabel!
    
    var timer = Timer()
    var remainingTime = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        remainingTime = 15
        labelTime.text = "Time: \(remainingTime)"
    }

    @IBAction func buttonStart(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction() {
        labelTime.text = "Time: \(remainingTime)"
        remainingTime = remainingTime - 1
        
        if remainingTime == 0 {
            labelTime.text = "Time Out"
            timer.invalidate()
            remainingTime = 15
        }
    }
    
}

