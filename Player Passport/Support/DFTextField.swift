//
//  DFTextField.swift
//  Player Passport
//
//  Created by Daniel Farrell on 06/02/2021.
//

import UIKit

class DFTextField: UITextField {

        override init(frame: CGRect) {
            super.init(frame: frame)
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        init(textAlignment: NSTextAlignment) {
            super.init(frame: .zero)
            self.textAlignment = textAlignment

            configure()
        }


        private func configure() {
            textColor = .secondaryLabel
            self.font = UIFont.init(name: DFConstants.appFontMedium, size: 18)
            adjustsFontSizeToFitWidth = true

            translatesAutoresizingMaskIntoConstraints = false
        }

    }
