//
//  SettingsViewController.swift
//  RandomNumberWithDelegate
//
//  Created by Дмитрий Дмитрий on 12.12.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var randomNumber: RandomNumber!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.text = String(randomNumber.minimumNumber)
        maximumValueTF.text = String(randomNumber.maximumNumber)
        
    }
    
    @IBAction func saveButtonPressed() {
        delegate.setNewValue(for: randomNumber)
        dismiss(animated: true)
    }
    
    @IBAction func cancelButtonPressed() {
       dismiss(animated: true)
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        let newValue = textField.text else { return }
        let intNewValue = Int(newValue) else { return }
        
        if textField =
    }
    
}
