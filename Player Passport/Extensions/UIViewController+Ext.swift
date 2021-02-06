//
//  UIViewController+Ext.swift
//  Player Passport
//
//  Created by Daniel Farrell on 06/02/2021.
//


import Foundation
import UIKit


extension UIViewController {

    func presentDFDismissPopupOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertViewController = DFDismissAlertPopup(title: title, message: message, buttonTitle: buttonTitle)
            alertViewController.modalPresentationStyle = .overFullScreen
            self.present(alertViewController, animated: false)
        }
    }


    func presentDFResetPasswordPopupOnMainThread(title: String, message: String, buttonTitle: String) {
          DispatchQueue.main.async {
              let resetPasswordAlertViewController = DFResetPasswordPopup(title: title, message: message, buttonTitle: buttonTitle)
              resetPasswordAlertViewController.modalPresentationStyle = .overFullScreen
              self.present(resetPasswordAlertViewController, animated: false)
          }
    }

}
