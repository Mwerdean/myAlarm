//
//  AlarmController.swift
//  myAlarm
//
//  Created by Matthew Werdean on 3/3/20.
//  Copyright © 2020 Matthew Werdean. All rights reserved.
//

import Foundation

class AlarmController {
    // Shared Instance
    static let sharedInstance = AlarmController()
    
    // Source of truth
    var alarms: [Alarm] = []
    
    func addAlarm(fireDate: Date, name: String, enabled: Bool) {
        let alarm = Alarm(fireDate: fireDate, name: name)
        alarm.enabled = enabled
        alarms.append(alarm)
    }
    
    func update(alarm: Alarm, fireDate: Date, name: String, enabled: Bool) {
        alarm.fireDate = fireDate
        alarm.name = name
    }
    
    func delete(alarm: Alarm) {
        guard let index = alarms.firstIndex(of: alarm) else {return}
        alarms.remove(at: index)
    }
    
    func toggleEnabled(for alarm: Alarm) {
        alarm.enabled.toggle()
    }
}
