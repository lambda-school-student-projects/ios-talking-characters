//
//  DetailViewController.swift
//  TalkingCharacters
//
//  Created by John Kouris on 8/1/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var characterNameLabel: UILabel!
    @IBOutlet var characterImage: UIImageView!
    
    var character: Model.Animation?

    override func viewWillAppear(_ animated: Bool) {
        
        guard let character = character else { return }
        characterNameLabel.text = character.rawValue
        let cells = Model.shared.cells(for: character)
        characterImage.animationImages = cells
        characterImage.animationRepeatCount = 0
        characterImage.animationDuration = Double(Model.shared.cells(for: character).count) / 15.0
        characterImage.startAnimating()
    }
}
