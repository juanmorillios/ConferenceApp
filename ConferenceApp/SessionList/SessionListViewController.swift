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


