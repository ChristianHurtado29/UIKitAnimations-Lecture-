//
//  TransitionAnimationsController.swift
//  UIKitAnimations(Lecture)
//
//  Created by Brendon Cecilio on 2/4/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class TransitionAnimationsController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    // create tap gesture
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(animate))
        return gesture
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "dog")
        view.backgroundColor = .systemGreen
        
        // enable user interaction on the image view or a label as those two UI elements are set to false by default
        imageView.isUserInteractionEnabled = true
        // add gesture to the image view
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func animate(){
        if imageView.image == UIImage(named: "dog"){
            imageView.image = UIImage(named: "cat")
        } else {
            imageView.image = UIImage(named: "dog")
        }
        print("animate")
    }
    
    
}
