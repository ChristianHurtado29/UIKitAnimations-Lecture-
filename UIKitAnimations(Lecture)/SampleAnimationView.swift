//
//  SampleAnimationView.swift
//  UIKitAnimations(Lecture)
//
//  Created by Brendon Cecilio on 1/31/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class SampleAnimationView: UIView {
    
    public lazy var pursuitLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pursuit-logo")
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 7
        return image
    }()
    
    public lazy var swiftLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "swift-logo")
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 7
        image.isHidden = true
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupPursuitLogoLayout()
        setupSwiftLogoLayout()
    }
    
    private func setupPursuitLogoLayout() {
        addSubview(pursuitLogo)
        pursuitLogo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pursuitLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            pursuitLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            pursuitLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            pursuitLogo.heightAnchor.constraint(equalTo:widthAnchor)
        ])
    }
    
    private func setupSwiftLogoLayout() {
        addSubview(swiftLogo)
        swiftLogo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            swiftLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            swiftLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            swiftLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            swiftLogo.heightAnchor.constraint(equalTo:swiftLogo.widthAnchor)
        ])
    }
}
