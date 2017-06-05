//
//  ViewController.swift
//  practise
//
//  Created by AKIL KUMAR THOTA on 6/4/17.
//  Copyright © 2017 Akil Kumar Thota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var i = 0
    
    var timer = Timer()
    
    var indicator = false
    
    let x1 = 0
    let y1 = 44
    let height = 271
    let width = 375
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
}
    @IBAction func btnPrsdd(_ sender: Any) {
        indicator = !(indicator)
        
        if indicator {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(animate), userInfo: nil, repeats: true)
        } else {
            timer.invalidate()
        }
      
    }
    
    func animate() {
        
        imageView.image = UIImage(named: "frame_\(i)_delay-0.1s.gif")
        
        i += 1
        
        if i > 5 {
            i = 0
        }
    }
    
    @IBAction func fadeInTapped(_ sender: Any) {
        
        imageView.alpha = 0
        
        UIView.animate(withDuration: 1) {
            
                self.imageView.alpha = 1
            
        }
    }
    
    @IBAction func slideInTapped(_ sender: Any) {
        
    imageView.center = CGPoint(x: imageView.center.x - 500, y: imageView.center.y)
        
    UIView.animate(withDuration: 2) { 
        self.imageView.center = CGPoint(x: self.imageView.center.x + 500, y: self.imageView.center.y)
        }
    }
    
    @IBAction func growTapped(_ sender: Any) {
        
        imageView.frame = CGRect(x: x1, y: y1, width: 0, height: 0)
        
        UIView.animate(withDuration: 1) { 
            self.imageView.frame = CGRect(x: self.x1, y: self.y1, width: self.width, height: self.height)
        }
    }
    
    
    
    
    
    
    
    
}
