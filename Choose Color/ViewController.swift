//
//  ViewController.swift
//  Choose Color
//
//  Created by Olegio on 23.08.2022.
//

import UIKit

class ViewController: UIViewController, ViewControllerDelegate {
    
    @IBOutlet var mainView: UIView!
    
    func updateColor(viewColor: UIColor, rColor: CGFloat, gColor: CGFloat, bColor: CGFloat) {
        mainView.backgroundColor = viewColor
        red = rColor
        green = gColor
        blue = bColor
    }
    
    var red: CGFloat!
    var green: CGFloat!
    var blue: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaultSettings()
    }

    private func defaultSettings() {
        mainView.layer.cornerRadius = 5
        mainView.layer.masksToBounds = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "goEdit" else { return }
        if let vc2 = segue.destination as? EditViewController {
            vc2.editindViewColor = mainView.backgroundColor
            vc2.redColor = red
            vc2.greenColor = green
            vc2.blueColor = blue
            vc2.delegate = self
        }
    }
}

