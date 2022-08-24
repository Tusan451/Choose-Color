//
//  ViewControllerDelegate.swift
//  Choose Color
//
//  Created by Olegio on 24.08.2022.
//

import CoreGraphics
import UIKit

protocol ViewControllerDelegate {
    func updateColor(viewColor: UIColor, rColor: CGFloat, gColor: CGFloat, bColor: CGFloat)
}
