//
//  DFResetPasswordPopup.swift
//  Player Passport
//
//  Created by Daniel Farrell on 06/02/2021.
//

import UIKit

class DFResetPasswordPopup: UIViewController {


        let containerView = UIView()
        let titleLabel = DFTitleLabel(textAlignment: .center, fontSize: 20)
        let messageLabel = DFBodyLabel(textAlignment: .center)
        let actionButton = DFButton(backgroundColor: DFConstants.primaryColor, title: "OK")
        let textField = DFTextField(textAlignment: .left)

        var alertTitle: String?
        var message: String?
        var buttonTitle: String?

        let padding: CGFloat = 20

        init(title: String, message: String, buttonTitle: String) {
            super.init(nibName: nil, bundle: nil)
            self.alertTitle = title
            self.message = message
            self.buttonTitle = buttonTitle

        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        override func viewDidLoad() {
            super.viewDidLoad()

            textField.returnKeyType = .done
            textField.delegate = self
            createDismissKeyboardTapGesture()

            configureContainerView()
            configureTitleLabel()
            configureMessageLabel()
            configureTextField()
            configureActionButton()

            let impactGenerator = UIImpactFeedbackGenerator(style: .heavy)
            impactGenerator.impactOccurred()

            view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
            view.alpha = 0
            self.containerView.transform = CGAffineTransform(translationX: CGFloat(0.0), y: CGFloat(UIScreen.main.bounds.size.height))
        }


        override func viewDidAppear(_ animated: Bool) {
            UIView.animate(withDuration: 0.5, delay: 0.0, animations: {
                self.view.alpha = 1
                self.containerView.transform =  CGAffineTransform(translationX: CGFloat(0.0), y: CGFloat(0.0))
            })
        }


        func configureContainerView() {
            view.addSubview(containerView)
            containerView.backgroundColor = .systemBackground
            containerView.layer.cornerRadius = 16
            containerView.layer.borderWidth = 2
            containerView.layer.borderColor = UIColor.white.cgColor
            containerView.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                containerView.widthAnchor.constraint(equalToConstant: 490),
                containerView.heightAnchor.constraint(equalToConstant: 500)
            ])
        }



        func configureTitleLabel() {
            containerView.addSubview(titleLabel)
            titleLabel.text = alertTitle ?? "Something went wrong"

            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
                titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
                titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
                titleLabel.heightAnchor.constraint(equalToConstant: 28)
            ])
        }



        func configureMessageLabel() {
            containerView.addSubview(messageLabel)
            containerView.addSubview(textField)
            containerView.addSubview(actionButton)

            messageLabel.text = message ?? "Unable to complete request"
            messageLabel.numberOfLines = 4

            NSLayoutConstraint.activate([
                messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
                messageLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
                messageLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
                messageLabel.bottomAnchor.constraint(equalTo: textField.topAnchor, constant: -12)

            ])
        }


       func configureTextField() {

           textField.layer.cornerRadius = 20
           textField.layer.borderWidth = 1
           textField.layer.borderColor = UIColor.systemGray4.cgColor
           textField.placeholder = ""
           textField.textColor = .black

           NSLayoutConstraint.activate([
               textField.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 8),
               textField.heightAnchor.constraint(equalToConstant: 300),
               textField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
               textField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
               textField.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -25)

           ])
       }



        func configureActionButton() {
            actionButton.setTitle(buttonTitle ?? "OK", for: .normal)
            actionButton.addTarget(self, action: #selector(dismissAlert), for: .touchUpInside)

            NSLayoutConstraint.activate([
                actionButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
                actionButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
                actionButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
                actionButton.heightAnchor.constraint(equalToConstant: 44)

            ])
        }


    @objc func dismissAlert() {
        let impactGenerator = UIImpactFeedbackGenerator(style: .heavy)
        impactGenerator.impactOccurred()
        self.dismiss(animated: false)
    }


    func createDismissKeyboardTapGesture() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tap)
    }


}

extension DFResetPasswordPopup: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
