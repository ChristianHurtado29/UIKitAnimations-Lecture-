//
//  AnimationsTabController.swift
//  UIKitAnimations(Lecture)
//
//  Created by Brendon Cecilio on 1/31/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    private lazy var simpleAnimationVC: SimpleAnimeController = {
        let VC = SimpleAnimeController()
        VC.tabBarItem = UITabBarItem(title: "Sample Animes", image: UIImage(systemName: "1.circle"), tag: 0)
        return VC
    }()
    private lazy var constraintAnimationVC: ConstraintsAnimationController = {
        let constraintStoryboard = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        guard let VC = constraintStoryboard.instantiateViewController(identifier: "ConstraintsAnimationController") as? ConstraintsAnimationController else {
            fatalError("could not load this")
        }
        VC.tabBarItem = UITabBarItem(title: "Constraint Animes", image: UIImage(systemName: "2.circle"), tag: 1)
        return VC
    }()
    
    private lazy var transitionAnimationVC: TransitionAnimationsController = {
        let constraintStoryboard = UIStoryboard(name: "TransitionAnimations", bundle: nil)
        guard let VC = constraintStoryboard.instantiateViewController(identifier: "TransitionAnimationController") as? TransitionAnimationsController else {
            fatalError("could not load this")
        }
        VC.tabBarItem = UITabBarItem(title: "Constraint Animes", image: UIImage(systemName: "3.circle"), tag: 2)
        return VC
    }()
    
    private lazy var propertyAnimatorVC: PropertyAnimatorController = {
        let constraintStoryboard = UIStoryboard(name: "PropertyAnimator", bundle: nil)
        
        guard let VC = constraintStoryboard.instantiateViewController(identifier: "PropertyAnimatorController") as? PropertyAnimatorController else {
            fatalError("could not load this")
        }
        VC.tabBarItem = UITabBarItem(title: "Property Animator", image: UIImage(systemName: "4.circle"), tag: 3)
        return VC
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        setUpTabBarControllers()
    }
    
    private func setUpTabBarControllers() {
        viewControllers = [simpleAnimationVC, constraintAnimationVC, transitionAnimationVC, propertyAnimatorVC]
    }
}
