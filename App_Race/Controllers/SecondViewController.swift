//
//  SecondViewController.swift
//  App_Race
//
//  Created by Evgeniy Nosko on 29.08.21.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var buttonLeft: UIButton!
    @IBOutlet weak var buttonRight: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLeft.layer.cornerRadius = 15
        buttonRight.layer.cornerRadius = 15
        
    }

    @IBAction func buttonPressedSecondViewController(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
