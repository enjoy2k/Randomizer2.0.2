//
//  ViewController.swift
//  Randomizer2.0
//
//  Created by Евгения Максимова on 19.06.2023.
//

import UIKit
import Foundation

protocol SettingsViewControllerDelegate {
    func setNewValues(for minimumNumber: String, and maximumNumber: String)
}

class MainViewController: UIViewController {

    
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    @IBOutlet weak var randomValueLabel: UILabel!
    
    @IBOutlet weak var resultButton: UIButton!
    
    private var randomNumber = RandomNumber(minimumValue: 0, maximumValue: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 10
        
        minimumValueLabel.text = String(randomNumber.minimumValue)
        maximumValueLabel.text = String(randomNumber.maximumValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        settingsVC.randomNumberSt = randomNumber
        settingsVC.delegate = self
    }

    @IBAction func resultButtonPressed() {
        randomValueLabel.text = String(randomNumber.getRandom)
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewValues(for minimumNumber: String, and maximumNumber: String) {
        minimumValueLabel.text = minimumNumber
        maximumValueLabel.text = maximumNumber
    }
}
