//
//  ViewController.swift
//  App_Race
//
//  Created by Evgeniy Nosko on 29.08.21.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStart.layer.cornerRadius = 25
    }
    
    @IBAction func buttonPressedFirstViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let secondViewController = storyboard.instantiateViewController(identifier: "2") as? SecondViewController {
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }
    
}
