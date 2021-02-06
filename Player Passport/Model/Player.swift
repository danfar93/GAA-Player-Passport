//
//  Player.swift
//  Player Passport
//
//  Created by Daniel Farrell on 06/02/2021.
//

import Foundation

class Player {
    var name: String!
    var position: String!
    var dob: String!
    var photo: String!

    init(name: String, position: String, dob: String, photo: String) {
        self.name = name
        self.position = position
        self.dob = dob
        self.photo = photo
    }
}
