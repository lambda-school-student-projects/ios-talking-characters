//
//  Model.swift
//  Talking Characters
//
//  Created by Joel Groomer on 8/1/19.
//  Copyright © 2019 Julltron. All rights reserved.
//

import Foundation
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
        
        let img = UIImage(named: "\(character.rawValue)000")!
        return img
    }
    
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        return []
    }
}
