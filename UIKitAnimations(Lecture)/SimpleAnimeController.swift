//
//  SimpleAnimeController.swift
//  UIKitAnimations(Lecture)
//
//  Created by Brendon Cecilio on 1/31/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class SimpleAnimeController: UIViewController {
    
    private let simpleAnimeView = SampleAnimationView()
    
    override func loadView() {
        view = simpleAnimeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        // puslatingAnimation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        scaleAnimation()
    }
    
    private func puslatingAnimation() {
        UIView.animate(withDuration: 0.1, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            // animation block
            self.simpleAnimeView.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (done) in
            // code to be executed after animation is complete
            // options - you can reset view's values
            // options - create next animation
            UIView.animate(withDuration: 0.3) {
                self.simpleAnimeView.pursuitLogo.transform = CGAffineTransform.identity
            }
        }
    }
    
    private func scaleAnimation() {
        
        // any transform value of 1.0 represents the identity of the view
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [], animations:  {
            self.simpleAnimeView.pursuitLogo.transform = CGAffineTransform(scaleX: 5.0, y: 5.0)
            self.simpleAnimeView.pursuitLogo.alpha = 0.0
        }) { (done) in
            UIView.animate(withDuration: 0.3) {
                self.simpleAnimeView.swiftLogo.isHidden = false
                self.simpleAnimeView.swiftLogo.layer.cornerRadius = self.simpleAnimeView.swiftLogo.bounds.size.width / 2.0
            }
        }
    }
}

