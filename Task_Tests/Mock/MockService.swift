//
//  MockService.swift
//  Task_Tests
//
//  Created by ARCHER on 13/08/2022.
//

import Foundation
import Combine
import Alamofire

@testable import Task


class MockService : ServicesProtocol {
    func searchLaunches(query: String, searchText: String) -> AnyPublisher<DataResponse<[Launch], NetworkError>, Never> {
        let path = Bundle.main.path(forResource: "data", ofType: "json")
        let url = URL(fileURLWithPath: path!)
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
        let path = Bundle.main.path(forResource: "data", ofType: "json")
        let url = URL(fileURLWithPath: path!)
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
