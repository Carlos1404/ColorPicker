//
//  ViewController.swift
//  ColorPickerSwift
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var lastColor: UIColor = ColorAsset.green.color

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier {
        case R.segue.viewController.pickColor.identifier:
            let segueInfo = R.segue.viewController.pickColor(segue: segue)
            segueInfo?.destination.completionHandler = {(color) -> () in
                self.view.backgroundColor = color
                self.dismiss(animated: true, completion: {
                    self.displayAlert(color: color)
                })
            }
        default: break
        }
        
        /*
        switch segueIdentifier(for: segue) {
                case .pickColor:
                    let destVC = segue.destination as! ColorPickerViewController
                    destVC.completionHandler = {(color) -> () in
                        self.view.backgroundColor = color
                        self.dismiss(animated: true, completion: {
                            self.displayAlert(color: color)
                        })
            }
        }
        */
        
    }
    
    func displayAlert(color: UIColor){
        let alertController = UIAlertController(title: "Choix de la couleur", message:
            "Voulez-vous garder cette couleur ?", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Oui", style: .default,handler: { _ in
            self.lastColor = color
        }))
        alertController.addAction(UIAlertAction(title: "Non", style: .default,handler: { _ in
            UIView.animate(withDuration: 1, animations: { self.view.backgroundColor = self.lastColor }, completion: nil)
        }))
        
        self.present(alertController, animated: true, completion: nil)
    }
}

//MARK: ColorPickerViewDelegate
/*extension ViewController: ColorPickerViewDelegate {
    func userDidChooseColor(color: UIColor){
        print(color)
        self.view.backgroundColor = color
        dismiss(animated: true, completion: nil)
        displayAlert(color: color)
    }
    
    func displayAlert(color: UIColor){
        let alertController = UIAlertController(title: "Choix de la couleur", message:
            "Voulez-vous garder cette couleur ?", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Oui", style: .default,handler: { _ in
            self.lastColor = color
        }))
        alertController.addAction(UIAlertAction(title: "Non", style: .default,handler: { _ in
            UIView.animate(withDuration: 1, animations: { self.view.backgroundColor = self.lastColor }, completion: nil)
        }))
        
        self.present(alertController, animated: true, completion: nil)
    }
}*/

/*extension ViewController: SegueHandlerType {
    
    enum SegueIdentifier: String {
        case pickColor
    }
    
}*/
