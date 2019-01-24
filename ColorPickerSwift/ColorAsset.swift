//
//  ColorAsset.swift
//  ColorPickerSwift
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import Foundation
import UIKit

enum ColorAsset : String {
    case green
    case orange
    case purple
    
}

extension ColorAsset {
    var color : UIColor {
        return UIColor(named: self.rawValue)!
    }
}
