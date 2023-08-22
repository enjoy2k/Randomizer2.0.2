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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValueTF.text = String(randomNumberSt.minimumValue)
        maxValueTF.text = String(randomNumberSt.maximumValue)
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    @IBAction func savelButtonPressed() {
        dismiss(animated: true)
    }
}
