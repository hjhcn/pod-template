//
//  AppDelegate.swift
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//


import UIKit
import PROJECT
import URLNavigator
import QMNavigator
import QMProperties

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        Entrance.navigationMap("PROJECT")
        Environment.resume()
        
        return true
    }

    func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool {
        Environment.resume()
        return Navigator.qm_openURL(url)
    }

    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
        Environment.resume()
        return Navigator.qm_openURL(url)
    }


}
