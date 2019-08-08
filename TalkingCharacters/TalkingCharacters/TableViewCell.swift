//
//  TableViewCell.swift
//  TalkingCharacters
//
//  Created by Joseph Rogers on 8/8/19.
//  Copyright © 2019 Joe Rogers. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabelImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
