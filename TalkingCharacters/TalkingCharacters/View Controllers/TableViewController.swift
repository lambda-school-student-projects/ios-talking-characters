//
//  TableViewController.swift
//  TalkingCharacters
//
//  Created by Vici Shaweddy on 8/1/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath) as? TableViewCell else { return UITableViewCell() }

        let character = Model.shared.characters[indexPath.row]
        cell.characterImageView.image = Model.shared.image(for: character)

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowCharacter" {
            guard let detailVC = segue.destination as? DetailViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let character = Model.shared.characters[indexPath.row]
            detailVC.character = character
        }
        
    }


}
