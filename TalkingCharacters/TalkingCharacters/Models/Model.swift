//
//  Model.swift
//  TalkingCharacters
//
//  Created by John Kouris on 8/1/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

extension Int {
    fileprivate func stringPadded(to count: Int) -> String {
        var string = String(self)
        while string.count < count { string = "0" + string }
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
        // RETURN THE 000 IMAGE FOR THE GIVEN CHARACTER HERE
        if let characterImage = UIImage(named: "\(character.rawValue)000") {
            return characterImage
        }
        return UIImage()
    }
    
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        var imageArray = [UIImage]()
        if let counts = cellCounts[character] {
            for i in 0 ..< counts {
                if i < 9 {
                    if let characterImage = UIImage(named: "\(character.rawValue)00\(i)") {
                        imageArray.append(characterImage)
                    }
                } else {
                    if let characterImage = UIImage(named: "\(character.rawValue)0\(i)") {
                        imageArray.append(characterImage)
                    }
                }
            }
        }
        return imageArray
    }
}
