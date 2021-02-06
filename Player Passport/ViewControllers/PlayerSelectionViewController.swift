//
//  PLayerSelectionViewController.swift
//  Player Passport
//
//  Created by Daniel Farrell on 06/02/2021.
//

import UIKit

class PlayerSelectionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var playerTableView: UITableView!

    var playersArray = [Player]()

    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.roundedCorners(corners: [.bottomLeft, .bottomRight], radius: 40)

        playerTableView.separatorStyle = .none

        let player1 = Player.init(name: "Tadhg Gorman", position: "Centre Forward", dob: "28/11/2004", photo: "gormo")
        playersArray.append(player1)

        let player2 = Player.init(name: "Daniel Farrell", position: "Full Back", dob: "11/06/2004", photo: "profile-user")
        playersArray.append(player2)

        let player3 = Player.init(name: "Shane Casey", position: "Wing Forward", dob: "28/04/2004", photo: "profile-user")
        playersArray.append(player3)

        let player4 = Player.init(name: "Killian McNamara", position: "Goalkeeper", dob: "28/11/2004", photo: "profile-user")
        playersArray.append(player4)

        let player5 = Player.init(name: "Dean Curley", position: "Corner Back", dob: "11/06/2004", photo: "profile-user")
        playersArray.append(player5)

        let player6 = Player.init(name: "Keith Dunne", position: "Corner Forward", dob: "28/04/2004", photo: "profile-user")
        playersArray.append(player6)

        let player7 = Player.init(name: "Alan Keoghan", position: "Centre Forward", dob: "28/11/2004", photo: "profile-user")
        playersArray.append(player7)

        let player8 = Player.init(name: "Conor Carney", position: "Wing Back", dob: "11/06/2004", photo: "profile-user")
        playersArray.append(player8)

        let player9 = Player.init(name: "Mikie Donohue", position: "Wing Forward", dob: "28/04/2004", photo: "profile-user")
        playersArray.append(player9)
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playersArray.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 159
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = playerTableView.dequeueReusableCell(withIdentifier: "playerCell") as! PlayerCell

        cell.selectionStyle = .none
        cell.nameLabel.text = playersArray[indexPath.row].name
        cell.positionLabel.text = playersArray[indexPath.row].position
        cell.dobLabel.text = playersArray[indexPath.row].dob
        let image = UIImage(named: playersArray[indexPath.row].photo)
        cell.profileImage.image = image

        return cell
    }

}

