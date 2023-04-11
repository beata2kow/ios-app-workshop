//
//  EventsListScreen.swift
//  CanTestItUITests
//
//  Created by Beata Kowalczyk on 30/03/2023.
//

import XCTest

final class EventsListScreen: BaseScreen {
    private lazy var findYourEvent = app.staticTexts["Find your event"].firstMatch
    private lazy var addEventButton = app.buttons[ElementId.EventsList.addEventButton].firstMatch
    //dla wybrania pierwszej kategorii z dropdownu
    // app.otherElements["chooseCategoryDropdown"].tap()
    // app.tables.cells.firstMatch.tap()
    
    @discardableResult
    func checkFindYourEventTextIsDisplayed() -> Self {
        XCTAssertTrue (findYourEvent.exists)
        return self
    }
    @discardableResult
    func tapAddEventButton() -> Self {
        addEventButton.tap()
        return self
    }
    @discardableResult
    func checkEventIsDisplayed(eventName: String) -> Self {
        swipeDownUntil(element: app.staticTexts[eventName])
        XCTAssertTrue(app.staticTexts[eventName].exists)
        return self
    }
}
