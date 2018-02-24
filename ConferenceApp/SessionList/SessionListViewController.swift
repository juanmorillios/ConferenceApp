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
    
    var viewModel: SessionListViewModel = SessionListViewModel()
    
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.orderedSessionGroup.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = viewModel.orderedSessionGroup[section]
        return section.date.description
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = viewModel.orderedSessionGroup[section]
        return section.sessions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = viewModel.orderedSessionGroup[indexPath.section]
        let session = section.sessions[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SessionTableViewCell", for: indexPath)
        if let sessionCell = cell as? SessionTableViewCell {
            sessionCell.session = session
        }
        return cell
    }
    
}


