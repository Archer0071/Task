//
//  LaunchViewModel.swift
//  Task
//
//  Created by ARCHER on 02/08/2022.
//

import Foundation
import Combine
import UIKit



class LaunchViewModel: ObservableObject {
    
    @Published  var launches =  [Launch]()
    var oldData = [Launch]()
    @Published  var listLoadingError: String = ""
    @Published  var showAlert: Bool = false
    private var subscription: Set<AnyCancellable> = []
    var dataManager: ServiceProtocol
    
    init( dataManager: ServiceProtocol = Services.shared) {
        self.dataManager = dataManager
        getStarLinkList()
      
    }
    
    
    func getStarLinkList() {
        dataManager.fetchStarLinks()
            .sink { (dataResponse) in
                print(dataResponse)
                if dataResponse.error != nil {
                    
                    self.createAlert(with: dataResponse.error!)
                } else {
                    
                    if let data = dataResponse.value {
                        self.oldData = data
                        self.launches = data
                    }
                    
                }
            }.store(in: &subscription)
        
        
    }
    func searchStarLink(query:String,searchText:String){
        
        dataManager.searchStarLinks(query: query,searchText: searchText)
            .sink { (dataResponse) in
                print(dataResponse)
                if dataResponse.error != nil {
                    
                    self.createAlert(with: dataResponse.error!)
                } else {
                    
                    if let data = dataResponse.value {

                        self.launches = data
                    }
                    
                }
            }.store(in: &subscription)
        
    }
    
    func createAlert( with error: NetworkError ) {
        listLoadingError = error.backendError == nil ? error.initialError.localizedDescription : error.backendError!.message
        self.showAlert = true
        
    }
}
