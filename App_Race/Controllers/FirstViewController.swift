//
//  ViewController.swift
//  App_Race
//
//  Created by Evgeniy Nosko on 29.08.21.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var buttonStart: UIButton!
    @IBOutlet weak var settings: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressedFirstViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let secondViewController = storyboard.instantiateViewController(identifier: "2") as? SecondViewController {
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }
    
    @IBAction func buttonPressedSettings(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let settingsViewController = storyboard.instantiateViewController(identifier: "3") as? SettingsViewController {
            self.navigationController?.pushViewController(settingsViewController, animated: true)
        }
    }
    
}
