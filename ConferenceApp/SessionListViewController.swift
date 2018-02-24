//
//  ViewController.swift
//  ConferenceApp
//
//  Created by Juan Morillo on 23/2/18.
//  Copyright © 2018 Juan Morillo. All rights reserved.
//

import UIKit

class SessionListViewController: UIViewController {
    @IBOutlet private var tableViewSession: UITableView?
    
    var sessions: [Session] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        loadFakeData()
    }

    //MARK: Private
    private func loadFakeData(){
        let session1 = Session(title: "Comenzando con Swift 4 ", speaker: "Juan Morillo", roomLocation: "Sala A")
        let session2 = Session(title: "Swift 4 Grado Maestro ", speaker: "Mario Fernández", roomLocation: "Sala B")
        let session3 = Session(title: "Curso Intensivo de Swift 4 ", speaker: "Paulo Hertz", roomLocation: "Sala C")
        let session4 = Session(title: "Iniciación al desarrollo de Apps en iOS 11 con Swift 4 ", speaker: "Karl Klitz", roomLocation: "Sala D")

        let session5 = Session(title: "Desarrollo de Apps Avanzado en iOS 11 con Swift 4 ", speaker: "Julio Muñoz", roomLocation: "Sala E")

        let session6 = Session(title: "Desarrollo con ARKit", speaker: "Grey Call", roomLocation: "Sala F")

        let session7 = Session(title: "Desarrollo de Apps Avanzado en iOS 11 con Swift 4 ", speaker: "Grey Call", roomLocation: "Sala H")

        sessions = [session1, session2, session3, session4, session5, session6, session7]
    }

    //MARK: Private
    private func configureTableView() {
        let nib = UINib(nibName: "SessionTableViewCell", bundle: nil)
        tableViewSession?.register(nib, forCellReuseIdentifier: "SessionTableViewCell")
        tableViewSession?.estimatedRowHeight = 72
    }
}

//MARK: - UITableViewDataSorce
extension SessionListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessions.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let session = sessions[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SessionTableViewCell", for: indexPath)
        if let sessionCell = cell as? SessionTableViewCell {
            sessionCell.session = session
        }
        return cell
    }

}


