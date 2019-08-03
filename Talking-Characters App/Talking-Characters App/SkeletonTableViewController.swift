//
//  SkeletonTableViewController.swift
//  Talking-Characters App
//
//  Created by Clayton Bonaguidi on 8/1/19.
//  Copyright © 2019 Clayton Bonaguidi. All rights reserved.
//

import UIKit

class SkeletonTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SkeletonCell", for: indexPath) as? SkeletonTableViewCell else { return UITableViewCell() }
        let model = Model.shared.characters[indexPath.row]
        cell.character = model

        return cell
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow, let skeletonVC = segue.destination as? SkeletonViewController { skeletonVC.character = Model.shared.characters[indexPath.row] }
        }
    }
}
