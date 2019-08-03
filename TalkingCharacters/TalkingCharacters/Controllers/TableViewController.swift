//
//  TableViewController.swift
//  TalkingCharacters
//
//  Created by John Kouris on 8/1/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath) as? TableViewCell else { return UITableViewCell() }
        
        let model = Model.shared.characters[indexPath.row]
        cell.character = model

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow, let destinationVC = segue.destination as? DetailViewController {
                destinationVC.character = Model.shared.characters[indexPath.row]
            }
        }
    }
}
