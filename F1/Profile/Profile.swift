//
//  Profile.swift
//  Landmarks
//
//  Created by Michaela Lankesaar on 2023/07/06.
//

import Foundation


struct Profile {
    var username: String
    var prefersNotifications = true
    var F1Team = Team.Ferrari
    var goalDate = Date()


    static let `default` = Profile(username: "M_Lankesar")


    enum Team: String, CaseIterable, Identifiable {
        case Ferrari = "Ferrari 🏎️"
        case Mercedes = "Mercedes 🏎️"
        case RedBull = "RedBull 🏎️"
        case Mclaren = "Mclaren 🏎️"
        case AlfaRomeo = "AlfaRomeo 🏎️"
        case AstonMartin = "AstonMartin 🏎️"
        case AlphaTauri = "AlphaTauri 🏎️"
        case Alpine = "Alpine 🏎️"
        case Haas = "Haas 🏎️"


        var id: String { rawValue }
    }
}
