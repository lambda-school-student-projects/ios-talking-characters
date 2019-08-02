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
    
    var character: Model.Animation?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // character name
        guard let character = character else { return }
        characterLabel.text = character.rawValue
        
        let cells = Model.shared.cells(for: character)
        characterImageView.animationImages = cells
        characterImageView.animationRepeatCount = 0
        characterImageView.animationDuration = TimeInterval(cells.count / 15)
        characterImageView.startAnimating()
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
