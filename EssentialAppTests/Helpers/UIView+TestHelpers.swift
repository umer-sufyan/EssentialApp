//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Apple on 17/03/2022.
//
import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
