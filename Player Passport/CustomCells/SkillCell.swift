//
//  SkillCell.swift
//  Player Passport
//
//  Created by Daniel Farrell on 06/02/2021.
//

import UIKit

class SkillCell: UITableViewCell {

    @IBOutlet weak var skillName: UILabel!
    @IBOutlet weak var skillSlider: UISlider!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var containerView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()

        containerView.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
