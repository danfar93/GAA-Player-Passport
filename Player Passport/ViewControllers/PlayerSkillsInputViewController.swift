//
//  PlayerSkillsInputViewController.swift
//  Player Passport
//
//  Created by Daniel Farrell on 06/02/2021.
//

import UIKit

class PlayerSkillsInputViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var profilePhoto: UIView!
    @IBOutlet weak var clubCrest: UIImageView!
    @IBOutlet weak var skillsTableView: UITableView!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var addCommentsButton: UIButton!

    var skillsArray = [Skill]()

    override func viewDidLoad() {
        super.viewDidLoad()

        submitButton.layer.cornerRadius = 26
        addCommentsButton.layer.cornerRadius = 26

        headerView.roundedCorners(corners: [.bottomLeft, .bottomRight], radius: 40)

        skillsTableView.separatorStyle = .none

        let skill1 = Skill.init(name: "Ground Block", score: 2.5)
        skillsArray.append(skill1)

        let skill2 = Skill.init(name: "Controlling a Moving Ball", score: 2.5)
        skillsArray.append(skill2)

        let skill3 = Skill.init(name: "Jab Lift", score: 2.5)
        skillsArray.append(skill3)

        let skill4 = Skill.init(name: "Roll Lift", score: 2.5)
        skillsArray.append(skill4)

        let skill5 = Skill.init(name: "Overhead Catch", score: 2.5)
        skillsArray.append(skill5)

        let skill6 = Skill.init(name: "Solo Run", score: 2.5)
        skillsArray.append(skill6)

        let skill7 = Skill.init(name: "Hand Pass", score: 2.5)
        skillsArray.append(skill7)

        let skill8 = Skill.init(name: "Hook", score: 2.5)
        skillsArray.append(skill8)
    }


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return skillsArray.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return skillsArray.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 126
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = skillsTableView.dequeueReusableCell(withIdentifier: "skillCell") as! SkillCell

        cell.selectionStyle = .none
        cell.skillName.text = skillsArray[indexPath.row].name
        //cell.workspaceNameLabel.text = workspaceArray[indexPath.row].name

        return cell
    }

    @IBAction func addCommentPressed(_ sender: Any) {
        presentDFResetPasswordPopupOnMainThread(title: "Add Comment",
                                          message: "You can add a comment to this players skills profile.",
                                          buttonTitle: "Save")

    }

    @IBAction func saveDataPressed(_ sender: Any) {
        presentDFDismissPopupOnMainThread(title: "Milestone Data Submitted",
                                          message: "You have successfully entered new milestone data for this player. This data will now be saved along with previous historical data and can be used to analyse this players development",
                                          buttonTitle: "Great")
    }



}
