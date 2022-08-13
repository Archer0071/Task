//
//  ServicesProtocol.swift
//  Task
//
//  Created by ARCHER on 13/08/2022.
//

import Foundation
import Combine
import Alamofire

protocol ServicesProtocol {
    func searchLaunches(query:String,searchText:String) -> AnyPublisher<DataResponse<[Launch], NetworkError>, Never>

    func fetchLaunches() -> AnyPublisher<DataResponse<[Launch], NetworkError>, Never>
}
