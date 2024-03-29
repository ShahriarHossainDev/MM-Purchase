//
//  Extenstions+UIButton.swift
//  MM Purchase
//
//  Created by Shishir_Mac on 15/4/23.
//

import UIKit

extension UIButton{
    func ButtonPulse() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 0.1
        
        layer.add(pulse, forKey: nil)
    }
}
