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
    @IBOutlet private weak var roadView: UIView!
    
    private let carAppearanceTimeInterval: TimeInterval = 1
    
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
    
    var treePosition: Position = .center {
        didSet {
            self.centerConstraintTree.constant = self.carPosition.offset
            self.view.layoutSubviews()
            self.topConstraintTree.constant = 0
            UIView.animate(
                withDuration: Constants.defaultAnimationDuretion,
                delay: Constants.defaultAnimationDuretion
            ) {
                self.topConstraintTree.constant = self.view.frame.height
                self .view.layoutSubviews()
            }
        }
    }
    
    override func viewDidLoad() {
        moveTreeToRandomPlace()
    }
    
    func moveTreeToRandomPlace() {
        Timer.scheduledTimer(
            withTimeInterval: carAppearanceTimeInterval,
            repeats: true
            ) { _ in
            self.treePosition = Position.allCases.randomElement()
        }
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
