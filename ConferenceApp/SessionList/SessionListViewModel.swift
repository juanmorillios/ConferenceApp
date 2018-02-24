//
//  SessionListViewModel.swift
//  ConferenceApp
//
//  Created by Juan Morillo on 24/2/18.
//  Copyright © 2018 Juan Morillo. All rights reserved.
//

import Foundation

struct SessionGroup {
    let date: Date
    var sessions: [Session]
}

class SessionListViewModel: NSObject {
    private var sessions: [Session]

    var sessionGroup: [SessionGroup]  = []
    var orderedSessionGroup: [SessionGroup] {
        return sessionGroup.sorted(by: {$0.date.compare($1.date) == .orderedAscending})
    }
    private var uniqueDates: [Date] {
        var list: [Date] = []
        for s in sessions {
            if !list.contains(s.startsAt) {
                list.append(s.startsAt)
            }
        }
        return list
    }
    override init() {
        let sampleData = SampleData()
        sessions = sampleData.sessions
        super.init()
        self.buildGroups()
    }

    private func buildGroups() {
        var groups: [SessionGroup] = []
        for date in uniqueDates {
            var sessionForDate: [Session] = []
            for s in sessions {
                if s.startsAt == date {
                    sessionForDate.append(s)
                }
            }
            let group = SessionGroup(date: date, sessions: sessionForDate)
            groups.append(group)
        }
        self.sessionGroup = groups
    }
}

