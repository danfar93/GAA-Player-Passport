//
//  ViewController.swift
//  Player Passport
//
//  Created by Daniel Farrell on 05/02/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        createDismissKeyboardTapGesture()

        usernameTextField.placeholder = "Username"
        passwordTextField.placeholder = "Password"

        passwordTextField.isSecureTextEntry = true

        usernameTextField.returnKeyType = .done
        passwordTextField.returnKeyType = .done

        usernameTextField.delegate = self
        passwordTextField.delegate = self

        usernameTextField.borderStyle = .roundedRect
        passwordTextField.borderStyle = .roundedRect

        usernameTextField.layer.cornerRadius = 26.0
        usernameTextField.layer.borderWidth = 1.0
        usernameTextField.layer.masksToBounds = true
        usernameTextField.layer.borderColor = UIColor.gray.cgColor

        passwordTextField.layer.cornerRadius = 26.0
        passwordTextField.layer.borderWidth = 1.0
        passwordTextField.layer.masksToBounds = true
        passwordTextField.layer.borderColor = UIColor.gray.cgColor

        loginButton.layer.cornerRadius = 26
        headerView.roundedCorners(corners: [.bottomLeft, .bottomRight], radius: 40)
    }





    func createDismissKeyboardTapGesture() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tap)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

