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
    
    var carPosition: PositionCar = .center
    
    
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
        carPosition = .left
        animateCar()
    }
    
    func rightCar() {
        carPosition = .right
       animateCar()
    }
    
    func animateCar() {
        UIView.animate(withDuration: 1) {
            self.leftConstraintCar.constant = self.carPosition.offset
            self.view.layoutIfNeeded()
        }
    }
    

    enum PositionCar {
        case left
        case center
        case right
        
        var offset: CGFloat {
            switch self {
            case .left:
                return UIScreen.main.bounds.width/2
            case .right:
                return UIScreen.main.bounds.width/2
            case .center:
                return UIScreen.main.bounds.width/2
            }
        }
    }
    
}
