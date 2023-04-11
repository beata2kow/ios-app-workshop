//
//  BaseTests.swift
//  CanTestItUITests
//
//  Created by Beata Kowalczyk on 29/03/2023.
//

import XCTest

class BaseTests: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        XCUIApplication().launch()
        continueAfterFailure = false
    }
}
