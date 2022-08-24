//
//  ViewController.swift
//  Choose Color
//
//  Created by Olegio on 23.08.2022.
//

import UIKit

class ViewController: UIViewController, ViewControllerDelegate {
    
    @IBOutlet var mainView: UIView!
    
    func updateColor(viewColor: UIColor) {
        mainView.backgroundColor = viewColor
    }
    
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
            vc2.delegate = self
        }
    }
}

