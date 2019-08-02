//
//  TableViewController.swift
//  Talking Characters
//
//  Created by Joel Groomer on 8/1/19.
//  Copyright © 2019 Julltron. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let cellReuseIdentifier = "TalkingCharacterCell"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }

        cell.imgCellCharacter.image = Model.shared.image(for: Model.shared.characters[indexPath.row])

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueShowDetailView" {
            guard let vc = segue.destination as? DetailViewController,
                let indexPath = tableView.indexPathForSelectedRow
            else { return }
            
            vc.character = Model.shared.characters[indexPath.row]
        }
    }
}
