//
//  Entrance.swift
//  Pods

//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//
//

import URLNavigator
import QMNavigator

public struct Entrance {
    
    public static func navigationMap(scheme: String) {
        
        CurrentScheme = scheme
        
        Navigator.map("\(scheme)://host") { (URL, values) -> Bool in
            //let storyBoard = UIStoryboard(name: "storyBoard", bundle: NSBundle(forClass: AClass.self  ))
            //let controller = storyBoard.instantiateViewControllerWithIdentifier("controller id")
            //Navigator.qm_present(controller)
            return true
        }
        
    }
    
}