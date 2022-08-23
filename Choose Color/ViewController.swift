//
//  ViewController.swift
//  Choose Color
//
//  Created by Olegio on 23.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaultSettings()
    }

    private func defaultSettings() {
        mainView.layer.cornerRadius = 5
        mainView.layer.masksToBounds = true
        mainView.backgroundColor = UIColor(red: 255 / 255, green: 255 / 255, blue: 255 / 255, alpha: 1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "goEdit" else { return }
        
        let vc = segue.destination as! EditViewController
        
        vc.sendingColor = mainView
    }

}

