//
//  Model.swift
//  TalkingCharacters
//
//  Created by Vici Shaweddy on 8/1/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import UIKit

extension Int {
    fileprivate func stringPadded(to count: Int) -> String {
        var string = String(self)
        while string.count < count { string = "0" + string}
        return string
    }
}

class Model {
    static let shared = Model()
    private init() {}
    enum Animation: String, CaseIterable {
        case bureaucrat = "Talking Bureaucrat"
        case frog = "Talking Frog"
        case ranger = "Talking Ranger"
        case vendor = "Talking Vendor"
        case bot = "Talking Woodbot"
    }
    
    private let cellCounts = [Animation.bureaucrat: 26, .frog: 62, .ranger: 86, .vendor: 36, .bot: 69]
    
    var characters: [Animation] {
        return Animation.allCases
    }
    
    func image(for character: Animation) -> UIImage {
        return UIImage(named: character.rawValue + "000") ?? UIImage()
    }
    
    func cells(for character: Animation) -> [UIImage] {
        var images: [UIImage] = []
        
        guard let numberOfImages = cellCounts[character] else { return [] }
        
        for number in 0...numberOfImages {
            // getting the image number
            let imageNumber = number.stringPadded(to: 3)
            
            // getting the character name
            let characterName = character.rawValue + imageNumber
            guard let image = UIImage(named: characterName) else { return [] }
            
            // add to images array
            images.append(image)
        }
        return images
    }
}
