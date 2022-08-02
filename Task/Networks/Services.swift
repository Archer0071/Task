//
//  Services.swift
//  Task
//
//  Created by ARCHER on 01/08/2022.
//

import Foundation
import Combine
import Alamofire

protocol ServiceProtocol {
    func fetchStarLinks() -> AnyPublisher<DataResponse<[Launch], NetworkError>, Never>
}


class Services {
    static let shared: ServiceProtocol = Services()
    private init() { }
}

extension Services: ServiceProtocol {
    
    
    func fetchStarLinks() -> AnyPublisher<DataResponse<[Launch], NetworkError>, Never> {
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

