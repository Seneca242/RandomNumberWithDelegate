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
        minimumValueTF.text = String(randomNumber.minimumValue)
        maximumValueTF.text = String(randomNumber.maximumValue)
        minimumValueTF.delegate = self
        maximumValueTF.delegate = self
        
    }
    
    @IBAction func saveButtonPressed() {
//        view.endEditing(true)
        delegate.setNewValue(with: randomNumber)
        dismiss(animated: true)
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
    
}

extension SettingsViewController: UITextFieldDelegate {
//    func textFieldDidEndEditing(_ textField: UITextField) {
//
//        guard let newValue = textField.text else { return }
//        guard let intNewValue = Int(newValue) else { return }
//
//        if textField == minimumValueTF {
//            randomNumber.minimumValue = intNewValue
//        } else {
//            randomNumber.maximumValue = intNewValue
//        }
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        guard let newValue = textField.text else { return false }
        guard let intNewValue = Int(newValue) else { return false }
        
        if textField == minimumValueTF {
            randomNumber.minimumValue = intNewValue
            maximumValueTF.becomeFirstResponder()
        } else if textField == maximumValueTF {
            randomNumber.maximumValue = intNewValue
            saveButtonPressed()
        }
        return true
    }
}
