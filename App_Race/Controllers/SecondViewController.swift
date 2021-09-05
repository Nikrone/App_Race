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
    @IBOutlet weak var centerConstraintCar: NSLayoutConstraint!
    @IBOutlet weak var centerConstraintTree: NSLayoutConstraint!
    @IBOutlet weak var topConstraintTree: NSLayoutConstraint!
    
    var carPosition: Position = .center {
        didSet {
            UIView.animate(withDuration: Constants.defaultAnimationDuretion) {
                self.centerConstraintCar.constant = self.carPosition.offset
                self.view.layoutSubviews()
            }
            centerConstraintCar.constant = carPosition.offset
            view.layoutSubviews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLeft.layer.cornerRadius = 15
        buttonRight.layer.cornerRadius = 15
        
    }
    
    @IBAction private func  buttonPressedSecondViewController(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction private func  buttonPressedLeftSecondViewController(_ sender: UIButton) {
        switch carPosition {
        case .right:
            carPosition = .center
        case .center:
            carPosition = .left
        case .left:
            break
        }
    }
    
    @IBAction private  func buttonPressedRightSecondViewController(_ sender: UIButton) {
        switch carPosition {
        case .left:
            carPosition = .center
        case .center:
            carPosition = .right
        case .right:
            break
        }
    }
    
    
}
