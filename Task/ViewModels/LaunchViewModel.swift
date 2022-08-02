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
    @Published  var searchTextAndQuery = SearchAndQuery()
    private var subscription: Set<AnyCancellable> = []
    var dataManager: ServiceProtocol
    
    init( dataManager: ServiceProtocol = Services.shared) {
        self.dataManager = dataManager
        getStarLinkList()
        validate()
    }
    func validate(){
        $searchTextAndQuery
            .debounce(for: .milliseconds(500), scheduler: RunLoop.main) // debounces the string publisher, such that it delays the process of sending request to remote server.
            .removeDuplicates()
            .map({ (string) -> String? in
                if string.searchText.count < 1 {
                    self.launches = self.oldData
                    return nil
                }
                
                return string.searchText
            })// prevents sending numerous requests and sends nil if the count of the characters is less than 1.
            .compactMap{ $0 } // removes the nil values so the search string does not get passed down to the publisher chain
            .sink { (_) in
                //
            } receiveValue: { [self] _ in
                
                searchStarLink(query: self.searchTextAndQuery.query ,searchText: self.searchTextAndQuery.searchText)
            }.store(in: &subscription)
        
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
