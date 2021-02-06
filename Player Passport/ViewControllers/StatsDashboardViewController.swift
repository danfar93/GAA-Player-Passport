//
//  ReportingDashboardViewController.swift
//  Player Passport
//
//  Created by Daniel Farrell on 06/02/2021.
//

import UIKit

class StatsDashboardViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!

    @IBOutlet weak var view0: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!

    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view8: UIView!
    @IBOutlet weak var view9: UIView!
    @IBOutlet weak var view10: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view0.layer.cornerRadius = 20
        view1.layer.cornerRadius = 20
        view2.layer.cornerRadius = 20
        view3.layer.cornerRadius = 20
        view4.layer.cornerRadius = 20
        view5.layer.cornerRadius = 20
        view6.layer.cornerRadius = 20
        view7.layer.cornerRadius = 20
        view8.layer.cornerRadius = 20
        view9.layer.cornerRadius = 20
        view10.layer.cornerRadius = 20

        headerView.roundedCorners(corners: [.bottomLeft, .bottomRight], radius: 40)
    }


}
