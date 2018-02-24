//
//  SessionTableViewCell.swift
//  ConferenceApp
//
//  Created by Juan Morillo on 23/2/18.
//  Copyright © 2018 Juan Morillo. All rights reserved.
//

import UIKit

class SessionTableViewCell: UITableViewCell {

    @IBOutlet private var titleLabel: UILabel?
    @IBOutlet private var nameSpeakerLabel: UILabel?
    @IBOutlet private var nameRoomLabel: UILabel?

    var session: Session? {
        didSet {
            updateUI()
        }
    }
    private func updateUI(){
        titleLabel?.text = session?.title
        nameSpeakerLabel?.text = session?.speaker
        nameRoomLabel?.text = session?.roomLocation
    }
}
