//
//  Car.swift
//  AdjustableImagePositionTableViewCell
//
//  Created by Jeff Schmitz on 6/6/16.
//  Copyright © 2016 Jeff Schmitz. All rights reserved.
//

import Foundation
import UIKit

class Car {
    var name: String?
    var image: UIImage?
    var hidden: Bool?
    
    init(name: String, image: UIImage, hidden: Bool) {
        self.name = name
        self.image = image
        self.hidden = hidden
    }
}