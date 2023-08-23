//
//  SettingsViewController.swift
//  Randomizer2.0
//
//  Created by Евгения Максимова on 19.06.2023.
//

import UIKit


class SettingsViewController: UIViewController {
    
    @IBOutlet weak var minValueTF: UITextField!
    @IBOutlet weak var maxValueTF: UITextField!
    
    var randomNumberSt: RandomNumber!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minValueTF.delegate = self
        maxValueTF.delegate = self
        minValueTF.text = String(randomNumberSt.minimumValue)
        maxValueTF.text = String(randomNumberSt.maximumValue)
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    @IBAction func savelButtonPressed() {
        view.endEditing(true)
        delegate.setNewValues(for: randomNumberSt)
        dismiss(animated: true)
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let newValue = textField.text else { return }
        guard let numberValue = Int(newValue) else { return }
        
        if textField == minValueTF {
            randomNumberSt.minimumValue = numberValue
        } else {
            randomNumberSt.maximumValue = numberValue
        }
    }
}

// Остановился на 2.43
