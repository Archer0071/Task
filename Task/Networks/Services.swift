//
//  Services.swift
//  Task
//
//  Created by ARCHER on 02/08/2022.
//

import Foundation
import Combine
import Alamofire

protocol ServiceProtocol {
    func fetchLaunches() -> AnyPublisher<DataResponse<[Launch], NetworkError>, Never>
    func searchLaunches(query:String,searchText:String) -> AnyPublisher<DataResponse<[Launch], NetworkError>, Never>
}


class Services {
    static let shared: ServiceProtocol = Services()
    private init() { }
}

extension Services: ServiceProtocol {
    
    func searchLaunches(query:String,searchText:String) -> AnyPublisher<DataResponse<[Launch], NetworkError>, Never> {
        
            let url = URL(string: "https://api.spacexdata.com/v3/launches/past")!
            return AF.request(url,
                              method: .get,parameters: [query:searchText])
                
                .validate()
                .publishDecodable(type: [Launch].self)
                .map { response in
                    response.mapError { error in
                        let backendError = response.data.flatMap { try? JSONDecoder().decode(BackendError.self, from: $0)}
                        
                        return NetworkError(initialError: error, backendError: backendError)
                    }
                    
                }
                .receive(on: DispatchQueue.main)
                .eraseToAnyPublisher()
            
        
    }
    
    
    func fetchLaunches() -> AnyPublisher<DataResponse<[Launch], NetworkError>, Never> {
        let url = URL(string: "https://api.spacexdata.com/v3/launches/past")!
        return AF.request(url,
                          method: .get)
            .validate()
            .publishDecodable(type: [Launch].self)
            .map { response in
                response.mapError { error in
                    let backendError = response.data.flatMap { try? JSONDecoder().decode(BackendError.self, from: $0)}
                    
                    return NetworkError(initialError: error, backendError: backendError)
                }
                
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
        
    }
    
      
    }

