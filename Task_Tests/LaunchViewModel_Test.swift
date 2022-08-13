//
//  Task_Tests.swift
//  Task_Tests
//
//  Created by ARCHER on 13/08/2022.
//

import XCTest
@testable import Task


class LaunchViewModel_Test: XCTestCase {

    var mockDataService : MockService!
    var viewModel : LaunchViewModel!
    override func setUp() {
        mockDataService = MockService()
        viewModel = .init(dataService: mockDataService)
    }
    func testApi_response_Alert_false(){
        XCTAssert(!viewModel.showAlert)
    }
    
    func testApi_response_list_loading_Error(){
        
        XCTAssertEqual("", viewModel.listLoadingError)
    }
    
    func testApi_Data_Not_Empty(){
        XCTAssert(viewModel.launches.isEmpty)
        
    }

}
