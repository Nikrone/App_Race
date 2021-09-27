//
//  SettingsViewController.swift
//  App_Race
//
//  Created by Evgeniy Nosko on 11.09.21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = (UserDefaults.standard.value(forKey: Constants.speedKey) as? Int) ?? 50
        percentLabel.text = String(Int(value)) + "%"
        slider.value = Float(value)
    }
    
    @IBAction func buttonPressedToFirstViewController(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let firstViewController = storyboard.instantiateViewController(identifier: "1") as? FirstViewController {
            self.navigationController?.pushViewController(firstViewController, animated: true)
        }
    }
    
    @IBAction func changeValueSpeed(_ sender: UISlider) {
        let speed = sender.value
        percentLabel.text = String(Int(speed)) + "%"
    }
    
    
    @IBAction func buttonPressedSaveChangeSlider(_ sender: UIButton) {
        let savedSpeed = Int(slider.value)
        UserDefaults.standard.setValue(savedSpeed, forKey: Constants.speedKey)
        UserDefaults.standard.synchronize()
    }
    
}
