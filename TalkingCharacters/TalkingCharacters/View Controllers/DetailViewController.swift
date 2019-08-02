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
        // character name
        guard let character = character else { return }
        characterLabel.text = character.rawValue
        
        cells = Model.shared.cells(for: character)
        characterImageView.animationImages = cells
        characterImageView.animationRepeatCount = 0
        animateCharacter(at: 10)
        
    }
    
    func animateCharacter(at duration: Double) {
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
    
    @IBAction func `switch`(_ sender: UISwitch) {
        
        if (sender.isOn == true)
        {

            characterImageView.startAnimating()
            
        } else {

            guard let character = character else { return }
            characterLabel.text = character.rawValue
            let staticImage = Model.shared.image(for: character)
            characterImageView.image = staticImage
            characterImageView.stopAnimating()
        }
    }
    
    @IBAction func shareButton(_ sender: UIButton) {
        let activityController = UIActivityViewController(activityItems: [cells], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
}
