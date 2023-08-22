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
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minValueTF.text = minimumValue
        maxValueTF.text = maximumValue
    }
    
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
}
