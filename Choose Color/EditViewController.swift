//
//  EditViewController.swift
//  Choose Color
//
//  Created by Olegio on 23.08.2022.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet var editingColor: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redTextLabel: UILabel!
    @IBOutlet var greenTextLabel: UILabel!
    @IBOutlet var blueTextLabel: UILabel!
    
    @IBOutlet var okButton: UIButton!
    
    var editindViewColor: UIColor!
    
    var delegate: ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaultSettings()
        setColorForEditingColor()
        editingColor.backgroundColor = editindViewColor

    }
    
    private func defaultSettings() {
        editingColor.layer.cornerRadius = 8
        editingColor.layer.masksToBounds = true
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        
        okButton.layer.cornerRadius = 6
    }
    
    private func setColorForEditingColor() {
        editingColor.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: 1)
    }
    
    @IBAction func okButtonAction() {
        delegate?.updateColor(viewColor: editingColor.backgroundColor!)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        
        switch sender.tag {
        case 0:
            let redValue = Int(redSlider.value)
            redTextLabel.text = String(redValue)
            setColorForEditingColor()
        case 1:
            let greenValue = Int(greenSlider.value)
            greenTextLabel.text = String(greenValue)
            setColorForEditingColor()
        case 2:
            let blueValue = Int(blueSlider.value)
            blueTextLabel.text = String(blueValue)
            setColorForEditingColor()
        default:
            break
        }
    }
}
