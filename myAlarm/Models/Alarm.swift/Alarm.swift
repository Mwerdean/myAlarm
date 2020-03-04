//
//  Alarm.swift
//  myAlarm
//
//  Created by Matthew Werdean on 3/3/20.
//  Copyright © 2020 Matthew Werdean. All rights reserved.
//

import Foundation

class Alarm: Equatable, Codable {

    // MARK: - Properties
    var fireDate: Date
    var name: String
    var enabled: Bool
    let uuid: String
    
    init(fireDate: Date, name: String, enabled: Bool = true, uuid: String = UUID().uuidString) {
        self.fireDate = fireDate
        self.name = name
        self.enabled = enabled
        self.uuid = uuid
    }
    
    var fireTimeAsString: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: fireDate)
    }
}

// MARK: - Equatable
func ==(lhs: Alarm, rhs: Alarm) -> Bool {
    return lhs.uuid == rhs.uuid
}
