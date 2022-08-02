//
//  NavigationController.swift
//  Task
//
//  Created by ARCHER on 02/08/2022.
//

import Foundation
import UIKit

// The root view controller for our app
class NavigationController: UINavigationController {
    
    // The root view controller for our app
    init() {
        super.init(rootViewController: LaunchController())
    }
    
    // Helper init
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLayoutSubviews() {
        self.navigationBar.barStyle = .black
        self.navigationBar.isTranslucent = false
        self.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        self.navigationBar.tintColor = .white
              
    }
    
}
