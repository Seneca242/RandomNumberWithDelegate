//
//  MainViewController.swift
//  RandomNumberWithDelegate
//
//  Created by Дмитрий Дмитрий on 12.12.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValue(with randomValue: RandomNumber)
}

class MainViewController: UIViewController {
    
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    
    @IBOutlet var randomNumberLabel: UILabel!
    
    @IBOutlet var getResultButton: UIButton!
    
    var randomNumber = RandomNumber(
        minimumValue: 0,
        maximumValue: 100
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getResultButton.layer.cornerRadius = 10
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        settingsVC.randomNumber = randomNumber
        settingsVC.delegate = self
    }
    
    @IBAction func getResultButtonPressed() {
        randomNumberLabel.text = String(randomNumber.getRandomNumber)
    }
    
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewValue(with randomValue: RandomNumber) {
        minimumValueLabel.text = String(randomValue.minimumValue)
        maximumValueLabel.text = String(randomValue.maximumValue)
        randomNumber = randomValue
    }
    
    
    
}

    

