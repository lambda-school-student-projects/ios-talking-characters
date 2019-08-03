//
//  SkeletonTableViewCell.swift
//  Talking-Characters App
//
//  Created by Clayton Bonaguidi on 8/1/19.
//  Copyright © 2019 Clayton Bonaguidi. All rights reserved.
//

import UIKit

class SkeletonTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var characterImage: UIImageView!
    
    var character: Model.Animation? {
    didSet {
        updateViews()
    }
}
    
    private func updateViews() {
        if let character = character {
   
            let result = Model.shared.image(for: character)
            characterImage.image = result
        }
    }
}
