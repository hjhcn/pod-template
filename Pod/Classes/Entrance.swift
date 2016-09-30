//
//  Entrance.swift
//  Pods

//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//
//

import URLNavigator
import QMNavigator
import React

public struct Entrance{

    public static func navigationMap(_ scheme: String) {

        Navigator.map("\(scheme)://host") { (url, values) -> Bool in

            let mockData:Dictionary = ["scores":
                [
                    ["name":"Alex", "value":"42"],
                    ["name":"Joel", "value":"10"]
                ]
            ]

            #if DEBUG
                let jsCodeLocation = URL(string: "http://localhost:8081/index.ios.bundle?platform=ios")
            #else
                let jsCodeLocation = Bundle(for: ClassForBundle.self).url(forResource: "main", withExtension: "jsbundle")
            #endif

            let rootView = RCTRootView(
                bundleURL: jsCodeLocation,
                moduleName: "PROJECT",
                initialProperties: mockData as [NSObject : Any],
                launchOptions: nil
            )

            let vc = UIViewController()
            vc.view = rootView

            Navigator.qm_present(vc)


            return true
        }
    }
}

fileprivate class ClassForBundle {

}
