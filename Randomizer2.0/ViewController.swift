//
//  ViewController.swift
//  Randomizer2.0
//
//  Created by Евгения Максимова on 19.06.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var minNumberLabelVC: UILabel!
    @IBOutlet weak var maxNumberLabelVC: UILabel!
    @IBOutlet weak var randomNuberLabel: UILabel!
    
    @IBOutlet weak var resultButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 15
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimumValue = minNumberLabelVC.text
        settingsVC.maximumValue = maxNumberLabelVC.text
    }

    @IBAction func resultButtonPressed() {
        let minNumber = Int(minNumberLabelVC.text ?? "") ?? 0
        let maxNumber = Int(maxNumberLabelVC.text ?? "") ?? 100
        
        randomNuberLabel.text = String(Int.random(in: minNumber...maxNumber))
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minNumberLabelVC.text = settingsVC.minValueTF.text
        maxNumberLabelVC.text = settingsVC.maxValueTF.text
    }
}
