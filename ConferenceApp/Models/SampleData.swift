//
//  SampleData.swift
//  ConferenceApp
//
//  Created by Juan Morillo on 24/2/18.
//  Copyright © 2018 Juan Morillo. All rights reserved.
//

import Foundation

struct SampleData {

    var sessions: [Session] {
        let sessionInfoList = [

        [
                "title" : "Effective Remote Communication",
                "speaker" : "Peter Steinberger",
                "roomLocation" : "Sala A",
                "startsAt" : eventDate(dayDelta: 0, hour: 9, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 9, minute: 50),

        ],
        [
                "title" : "Facing the VIPER",
                "speaker" : "Esteban Torres",
                "roomLocation" : "Sala B",
                "startsAt" : eventDate(dayDelta: 0, hour: 10, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 10, minute: 50),

        ],
        [
                "title" : "Real World Accessibility",
                "speaker" : "Sommer Panage",
                "roomLocation" : "Sala C",
                "startsAt" : eventDate(dayDelta: 0, hour: 11, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 11, minute: 50),

        ],
        [
                "title" : "Understanding code signing: x509 and Apple",
                "speaker" : "Marin Usalj",
                "roomLocation" : "Sala D",
                "startsAt" : eventDate(dayDelta: 0, hour: 12, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 12, minute: 50),

        ],
        [
                "title" : "Stop making average apps",
                "speaker" : "Sally Shepard",
                "roomLocation" : "Sala E",
                "startsAt" : eventDate(dayDelta: 0, hour: 13, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 13, minute: 50),

        ],
        [
                "title" : "Metaprogramming in Swift",
                "speaker" : "Krzysztof Zabłocki",
                "roomLocation" : "Sala F",
                "startsAt" : eventDate(dayDelta: 0, hour: 15, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 15, minute: 50),

        ],
        [
                "title" : "Asymmetric Cryptography Between iOS and the Rest of the World",
                "speaker" : "Ignacio Nieto",
                "roomLocation" : "Sala G",
                "startsAt" : eventDate(dayDelta: 0, hour: 16, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 16, minute: 50),

        ],
        [
                "title" : "Building an IDE for iOS",
                "speaker" : "Mark Villacampa",
                "roomLocation" : "Sala H",
                "startsAt" : eventDate(dayDelta: 0, hour: 17, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 17, minute: 50),

        ],
        [
                "title" : "Gems of GameplayKit",
                "speaker" : "Tobias Due Munk",
                "roomLocation" : "Sala I",
                "startsAt" : eventDate(dayDelta: 0, hour: 18, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 18, minute: 50),

        ],
        [
                "title" : "Highly maintainable App Architecture",
                "speaker" : "Aleksandar Vacić",
                "roomLocation" : "Sala J",
                "startsAt" : eventDate(dayDelta: 0, hour: 19, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 19, minute: 50),

        ],
        [
                "title" : "Test the Heck out of your Swift Code",
                "speaker" : "Jorge Ortiz",
                "roomLocation" : "Sala J",
                "startsAt" : eventDate(dayDelta: 0, hour: 20, minute: 00),
                "endsAt" : eventDate(dayDelta: 0, hour: 20, minute: 50),

        ]
    ]
        var sessions: [Session] = []
        for info in sessionInfoList {
            let newSession = Session(title: info["title"] as! String, speaker: info["speaker"] as! String, roomLocation: info["roomLocation"] as! String, startsAt: info["startsAt"] as! Date, endsAt: info["endsAt"] as! Date)
                sessions.append(newSession)
        }
        return sessions
    }

    private func eventDate(dayDelta: Int, hour: Int, minute: Int) -> Date {
        let components = NSDateComponents()
        components.year = 2018
        components.month = 3
        components.day = 19 + dayDelta
        components.hour = hour
        components.minute = minute
        components.second = 00
        let newDate = NSCalendar.current.date(from: components as DateComponents)
        return newDate!
    }

}
