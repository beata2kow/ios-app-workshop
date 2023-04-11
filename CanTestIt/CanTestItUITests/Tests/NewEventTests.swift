//
//  NewEventTests.swift
//  CanTestItUITests
//
//  Created by Beata Kowalczyk on 30/03/2023.
//

import XCTest

class NewEventTests: BaseTests {
    
    func testAddNewEvent() {
        loginUserWith(name: UserData.name, password: UserData.password)
//        LogInScreen()
//            .typeUserName(name: "user")
//            .typeUserPassword(password: "password")
//            .tapLoginButton()
        EventsListScreen()
            .tapAddEventButton()
        
        app.buttons["Tap choose your cover photo"].tap()
        app.collectionViews.element.swipeLeft()
        app.buttons["Choose"].tap()
        NewEventScreen()
            .enterEventName(name: "sample name")
            .enterPrice(name: "90")
            .tapSaveButton()
//        EventsListScreen()
//            .checkEventIsDisplayed(eventName: )
        // dopisac let dla name od Basi, bo nie skonczone
        
    }
}
