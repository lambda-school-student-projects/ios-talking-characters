//
//  DetailViewController.swift
//  TalkingCharacters
//
//  Created by Joseph Rogers on 8/8/19.
//  Copyright © 2019 Joe Rogers. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    var character: Model.Animation?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let character = character else { return }
        characterNameLabel.text = character.rawValue
        let cells = Model.shared.cells(for: character)
        detailImageView.animationImages = cells
        detailImageView.animationRepeatCount = 0
        detailImageView.animationDuration = TimeInterval(cells.count / 15)
        detailImageView.startAnimating()
    }
 
}
