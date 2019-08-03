//
//  SkeletonViewController.swift
//  Talking-Characters App
//
//  Created by Clayton Bonaguidi on 8/1/19.
//  Copyright © 2019 Clayton Bonaguidi. All rights reserved.
//

import UIKit

class SkeletonViewController: UIViewController {
    
    
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var animatedCharacter: UIImageView!
    
    var character: Model.Animation?

    override func viewWillAppear(_ animated: Bool) {
        guard let character = character else {return}
        characterNameLabel.text = character.rawValue
        let cells = Model.shared.cells(for: character)
        animatedCharacter.animationImages = cells
        animatedCharacter.animationRepeatCount = 0
        animatedCharacter.animationDuration = 5.0
        animatedCharacter.startAnimating()
    }
}
