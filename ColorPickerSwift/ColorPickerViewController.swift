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
        completionHandler(R.color.green()!)
    }
    
    @IBAction func orangeButtonTouch(_ sender: Any) {
        completionHandler(R.color.orange()!)
    }
    
    @IBAction func purpleButtonTouch(_ sender: Any) {
        completionHandler(R.color.purple()!)
    }
    
}

/*protocol ColorPickerViewDelegate{
    func userDidChooseColor(color: UIColor)
}*/
