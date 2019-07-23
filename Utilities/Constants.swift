//
//  Constants.swift
//  Assessment_Xebia
//
//  Created by Vinay Sharma on 23/07/19.
//  Copyright © 2019 Vinay Sharma. All rights reserved.
//

import Foundation
import UIKit


class Constants: NSObject {
    
    // Device Detail if required in App
    
    static let AppDelegate              = UIApplication.shared.delegate as! AppDelegate
    static let KeyWindow                = UIApplication.shared.keyWindow!
    static let MainStoryboard           = UIStoryboard(name: "Main", bundle: nil)
    static let DeviceManufacturer       = "Apple"
    static let Platform                 = "iOS"
    static let ImeiNumber               = UIDevice.current.identifierForVendor!.uuidString
    static let DeviceModel              = UIDevice.current.model
    static let DeviceOSVersion          = UIDevice.current.systemVersion
    static let AppVersion               = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") ?? "0"
    static let AppName                  = Bundle.main.infoDictionary![kCFBundleNameKey as String] as! String
    
    static let MainViewHeight           = UIScreen.main.bounds.height - 64
    static let MainViewWidth            = UIScreen.main.bounds.width
    
    //MARK: - Keys
    static let ApiKey                   = "ysqg40RVt2Tc6t9EF60P2v4tKUTzWwtC"

}






