//
//  ColorPickerViewController.swift
//  ColorPickerSwift
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    //var delegate : ColorPickerViewDelegate?
    
    var completionHandler: ((UIColor) -> Void)!
    
    @IBAction func greenButtonTouch(_ sender: Any) {
        completionHandler(ColorAsset.green.color)
    }
    
    @IBAction func orangeButtonTouch(_ sender: Any) {
        completionHandler(ColorAsset.orange.color)
    }
    
    @IBAction func purpleButtonTouch(_ sender: Any) {
        completionHandler(ColorAsset.purple.color)
    }
    
}

/*protocol ColorPickerViewDelegate{
    func userDidChooseColor(color: UIColor)
}*/
