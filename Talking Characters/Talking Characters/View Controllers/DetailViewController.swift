//
//  DetailViewController.swift
//  Talking Characters
//
//  Created by Joel Groomer on 8/1/19.
//  Copyright © 2019 Julltron. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblCharacterName: UILabel!
    @IBOutlet weak var imgCharacter: UIImageView!
    
    var character: Model.Animation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let character = character else { return }
        lblCharacterName.text = character.rawValue
        
        let cells = Model.shared.cells(for: character)
        imgCharacter.animationImages = cells
        imgCharacter.animationRepeatCount = 0
        imgCharacter.animationDuration = TimeInterval(cells.count / 15)
        imgCharacter.startAnimating()
    }

}
