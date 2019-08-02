//
//  DetailViewController.swift
//  TalkingCharacters
//
//  Created by Vici Shaweddy on 8/1/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var characterLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var character: Model.Animation?

    var cells: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        animateCharacter(at: 10)
        
    }
    
    func animateCharacter(at duration: Double) {
        // character name
        guard let character = character else { return }
        characterLabel.text = character.rawValue
        
        cells = Model.shared.cells(for: character)
        characterImageView.animationImages = cells
        characterImageView.animationRepeatCount = 0
        characterImageView.animationDuration = TimeInterval(cells.count / Int(duration))
        characterImageView.startAnimating()
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            animateCharacter(at: 10)
        case 1:
            animateCharacter(at: 15)
        case 2:
            animateCharacter(at: 30)
        default:
            characterImageView.animationDuration = TimeInterval(cells.count / 100)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
