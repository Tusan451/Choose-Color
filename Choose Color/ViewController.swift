//
//  ViewController.swift
//  Choose Color
//
//  Created by Olegio on 23.08.2022.
//

import UIKit

class ViewController: UIViewController, ViewControllerDelegate {

    @IBOutlet var mainView: UIView!
    
    func updateColors(redColor: CGFloat, greenColor: CGFloat, blueColor: CGFloat) {
        self.redColor = redColor
        self.greenColor = greenColor
        self.blueColor = blueColor
    }
    
    var redColor: CGFloat!
    var greenColor: CGFloat!
    var blueColor: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaultSettings()
        setColorForMainView()
    }

    private func defaultSettings() {
        mainView.layer.cornerRadius = 5
        mainView.layer.masksToBounds = true
    }
    
    private func setColorForMainView() {
        mainView.backgroundColor = UIColor(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255, alpha: 1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "goEdit" else { return }
        if let vc2 = segue.destination as? EditViewController {
            vc2.redSliderColor = Float(redColor)
            vc2.greenSliderColor = Float(greenColor)
            vc2.blueSliderColor = Float(blueColor)
            vc2.delegate = self
        }
    }
}

