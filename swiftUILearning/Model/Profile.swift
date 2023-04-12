//
//  Profile.swift
//  swiftUILearning
//
//  Created by eileen on 2022/11/16.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "G_Linda")
    
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌹"
        case summer = "☀️"
        case autumn = "🍂"
        case winter = "❄️"
        
        var id: String { rawValue }
    
    }
}
