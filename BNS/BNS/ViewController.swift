//
//  ViewController.swift
//  BNS
//
//  Created by Zach Eriksen on 12/14/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import UIKit
import SwiftUIKit
import SLog

let log = SLogger(fileNamePrefix: "BNS")

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        log.debug.entry {
            "Loaded BNS init View Controller"
        }
        
        // SwiftUIKit.Navigate
        Navigate.shared.configure(controller: navigationController)
        // Example of
        Navigate.shared.set(title: "init")
        
        view.embed {
            SafeAreaView {
                VStack {
                    [
                    Label("Hello World")
                        .apply(attributes: StringAttributes(for: .foregroundColor, value: UIColor.orange)),
                        Image(URL(string: "https://juliasalbum.com/wp-content/uploads/2013/10/7911335354_8cf9016fd1_z.jpg")!)
                            .contentMode(.scaleAspectFit)
                            .frame(height: 200),
                        WebView(url: URL(string: "https://juliasalbum.com/how-to-make-butternut-squash-puree/")!)
                        
                    ]
                }
                
            }
            .navigateSet(title: "Butternut Squash 🧡")
        }
    }
}

