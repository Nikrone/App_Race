//
//  SettingsViewController.swift
//  App_Race
//
//  Created by Evgeniy Nosko on 11.09.21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var percentLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func buttonPressedToFirstViewController(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let firstViewController = storyboard.instantiateViewController(identifier: "1") as? FirstViewController {
            self.navigationController?.pushViewController(firstViewController, animated: true)
        }
        
    }
    
    @IBAction func slider(sender: AnyObject) {
        
        let result = Int(round(100 * sender.value))
        percentLabel.text = "\(result)%"

    }
    
}
