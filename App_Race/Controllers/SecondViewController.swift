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
    @IBOutlet weak var imageViewCar: UIImageView!
    @IBOutlet weak var imageViewTree: UIImageView!
    @IBOutlet weak var leftConstraintCar: NSLayoutConstraint!
    @IBOutlet weak var rightConstraintCar: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLeft.layer.cornerRadius = 15
        buttonRight.layer.cornerRadius = 15
        
    }

    @IBAction func buttonPressedSecondViewController(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func buttonPressedLeftSecondViewController(_ sender: UIButton) {
        leftCar()
    }
    
    @IBAction func buttonPressedRightSecondViewController(_ sender: UIButton) {
        rightCar()
    }
    
    func leftCar() {
    UIView.animate(withDuration: 1) {
        self.leftConstraintCar.constant = -110
        self.view.layoutIfNeeded()
        }
    }
    
    func rightCar() {
        UIView.animate(withDuration: 1) {
            self.rightConstraintCar.constant = -100
            self.view.layoutIfNeeded()
        }
    
    }
}
