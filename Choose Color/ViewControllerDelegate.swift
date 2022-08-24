//
//  ViewControllerDelegate.swift
//  Choose Color
//
//  Created by Olegio on 24.08.2022.
//

import CoreGraphics

protocol ViewControllerDelegate {
    func updateColors(redColor: CGFloat, greenColor: CGFloat, blueColor: CGFloat)
}
