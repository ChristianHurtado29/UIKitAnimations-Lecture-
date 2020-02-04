//
//  ConstraintsAnimationController.swift
//  UIKitAnimations(Lecture)
//
//  Created by Brendon Cecilio on 1/31/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class ConstraintsAnimationController: UIViewController {
    
    @IBOutlet weak var viewCenterY: NSLayoutConstraint!
    @IBOutlet weak var box: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        box.layer.cornerRadius = box.bounds.size.width / 2
    }
    
    @IBAction func animateUP(_ sender: UIButton) {
        // animate button
        UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [], animations: {
            sender.transform = CGAffineTransform(scaleX: 1.123, y: 1.123)
        }) { (done) in
            sender.transform = .identity
        }
        // negative value to move up
        if box.frame.origin.y < 90 {return}
        viewCenterY.constant -= 100
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 5.0, options: [.curveEaseInOut], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        print(box.frame)
    }
    
    @IBAction func animateDOWN(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [], animations: {
            sender.transform = CGAffineTransform(scaleX: 1.123, y: 1.123)
        }) { (done) in
            sender.transform = .identity
        }
        // positive value to move down
        if box.frame.origin.y > 600 {return}
        viewCenterY.constant += 100
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 5.0, options: [.curveEaseInOut], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}
