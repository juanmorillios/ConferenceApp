//
//  ViewController.swift
//  ConferenceApp
//
//  Created by Juan Morillo on 23/2/18.
//  Copyright © 2018 Juan Morillo. All rights reserved.
//

import UIKit

class SessionListViewController: UIViewController {

    var sessions: [Session] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        loadFakeData()

    }

    //MARK: Private
    private func loadFakeData(){
        let session1 = Session(title: "Introdución a Swift 4", speaker: "Juan Morillo", roomLocation: "Sala A")
        let session2 = Session(title: "Swift 4 Intermedio", speaker: "Mario Fernández", roomLocation: "Sala B")
        let session3 = Session(title: "Swift 4 Avanzado", speaker: "Paulo Hertz", roomLocation: "Sala C")
        let session4 = Session(title: "Introdución Vapor 3", speaker: "Karl Klitz", roomLocation: "Sala D")
        sessions = [session1, session2, session3, session4]
    }


}

//MARK: - UITableViewDataSorce
extension SessionListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessions.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let session = sessions[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        cell.textLabel?.text = session.title
        return cell
    }

}

