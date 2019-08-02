//
//  TableViewCell.swift
//  TalkingCharacters
//
//  Created by John Kouris on 8/1/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var characterImage: UIImageView!
    
    var character: Model.Animation? {
        didSet {
            updateViews()
        }
    }

    private func updateViews() {
        if let character = character {
            print(character)
            let result = Model.shared.image(for: character)
            characterImage.image = result
        }
    }

}
