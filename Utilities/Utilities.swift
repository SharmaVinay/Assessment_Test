//
//  Utilities.swift
//  Assessment_Xebia
//
//  Created by Vinay Sharma on 23/07/19.
//  Copyright © 2019 Vinay Sharma. All rights reserved.
//


import Foundation
import JGProgressHUD

class Utilities: NSObject {
    // MARK: - Properties
    
    static let HUD = JGProgressHUD(style: .light)
    
    // MARK: - Progress Activity Indicator
    class func showHUDInView(_ view:UIView!,onWindow:Bool = true) {
        let indicatorView = JGProgressHUDIndeterminateIndicatorView()
        HUD.indicatorView = indicatorView
        HUD.hudView.backgroundColor = #colorLiteral(red: 0.7233663201, green: 0.7233663201, blue: 0.7233663201, alpha: 1)
        HUD.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.2)
        DispatchQueue.main.async {
            HUD.show(in: Constants.KeyWindow)
        }
    }
    
    class func hideHUD() {
        DispatchQueue.main.async {
            HUD.dismiss()
        }
    }
    
    
    // MARK: - Alerts
    
    /* Method for showing the messages in the Alert PopUp */
    class func showAlert(inViewController vc:UIViewController, message: String)
    {
        let alert = UIAlertController(title: Constants.AppName, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "OK text on alert"), style: UIAlertAction.Style.default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
}

