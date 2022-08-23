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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
