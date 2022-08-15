//
//  DependcyProvider.swift
//  Task
//
//  Created by ARCHER on 16/08/2022.
//

import Foundation
import UIKit

struct DependencyProvider {
    static var serviceProtocol:ServicesProtocol {
        return ProductionServices()
    }
    static var viewModel:LaunchViewModel {
        return LaunchViewModel(dataService: self.serviceProtocol)
    }
    static var launchController:LaunchController {
        let viewController = LaunchController(viewModel: self.viewModel)
        return viewController
    }
}
