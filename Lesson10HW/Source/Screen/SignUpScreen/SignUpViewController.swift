//
//  SignUpViewController.swift
//  Lesson10HW
//

//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var contentView: SignUpView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        subscrubeNotifications()
        setUpUI()
    }
    private func  setUpUI() {
        contentView.emailNameTextField.keyboardType = .emailAddress
        contentView.passwordTextField.isSecureTextEntry = true
        contentView.confirmPasswordTextField.isSecureTextEntry = true
        contentView.cardNumberTextField.keyboardType = .numberPad
        contentView.cvvTextField.keyboardType = .numberPad
        contentView.cvvTextField.isSecureTextEntry = true
        contentView.expDateTextField.keyboardType = .numberPad
    }
}

