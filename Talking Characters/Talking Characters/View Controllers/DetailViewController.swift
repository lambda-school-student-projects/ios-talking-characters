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

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let character = character else { return }
        lblCharacterName.text = character.rawValue
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
