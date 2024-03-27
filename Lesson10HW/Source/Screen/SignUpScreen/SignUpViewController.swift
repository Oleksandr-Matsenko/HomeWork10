//
//  SignUpViewController.swift
//  Lesson10HW
//

//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var contentView: SignUpView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    private lazy var assignDelegate = [
        contentView.addressTextField,
        contentView.cardNumberTextField,
        contentView.cityTextField,
        contentView.confirmPasswordTextField,
        contentView.countryTextField,
        contentView.cvvTextField,
        contentView.emailNameTextField,
        contentView.expDateTextField,
        contentView.firstNameTextField,
        contentView.lastNameTextField,
        contentView.passwordTextField
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        subscrubeNotifications()
        setUpUI()
    }
    private func  setUpUI() {
        
        // Change keyBoard type for different textFields
        contentView.emailNameTextField.keyboardType = .emailAddress
        contentView.passwordTextField.isSecureTextEntry = true
        contentView.confirmPasswordTextField.isSecureTextEntry = true
        contentView.cardNumberTextField.keyboardType = .numberPad
        contentView.cvvTextField.keyboardType = .numberPad
        contentView.cvvTextField.isSecureTextEntry = true
        contentView.expDateTextField.keyboardType = .numberPad
        
        // Assign Delegate
        assignDelegate.forEach{
            $0?.delegate = self
        }
    }
}
extension SignUpViewController {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // set a limit of characters to CardNumber
        if textField == contentView.cardNumberTextField {
            let currentText = textField.text ?? ""
            let upDateCard = (currentText as NSString).replacingCharacters(in: range, with: string)
            return upDateCard.count <= 16
        }
        // set a limit of characters to CVV code
        if textField == contentView.cvvTextField {
            let currentText = textField.text ?? ""
            let upDateCV = (currentText as NSString).replacingCharacters(in: range, with: string)
            return upDateCV.count <= 3
        }
        // set a limit of characters to EX Date
        if textField == contentView.expDateTextField {
            let currentText = textField.text ?? ""
            let upDateEx = (currentText as NSString).replacingCharacters(in: range, with: string)
            return upDateEx.count <= 4
        }
        return true
    }
    
    
}

