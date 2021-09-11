//
//  SettingsViewController.swift
//  App_Race
//
//  Created by Evgeniy Nosko on 11.09.21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func buttonPressedToFirstViewController(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let firstViewController = storyboard.instantiateViewController(identifier: "1") as? FirstViewController {
            self.navigationController?.pushViewController(firstViewController, animated: true)
        }
        
        
    }
}
