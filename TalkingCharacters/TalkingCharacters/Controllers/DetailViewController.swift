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
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    var character: Model.Animation?

    override func viewWillAppear(_ animated: Bool) {
        runAnimation()
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            runAnimation()
        case 1:
            runAnimation()
        case 2:
            runAnimation()
        default:
            runAnimation()
        }
        
    }
    
    func runAnimation() {
        guard let character = character else { return }
        characterNameLabel.text = character.rawValue
        let cells = Model.shared.cells(for: character)
        characterImage.animationImages = cells
        characterImage.animationRepeatCount = 0
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            characterImage.animationDuration = Double(Model.shared.cells(for: character).count) / 10.0
        case 1:
            characterImage.animationDuration = Double(Model.shared.cells(for: character).count) / 15.0
        case 2:
            characterImage.animationDuration = Double(Model.shared.cells(for: character).count) / 30.0
        default:
            characterImage.animationDuration = Double(Model.shared.cells(for: character).count) / 30.0
        }
        
        characterImage.startAnimating()
    }
}
