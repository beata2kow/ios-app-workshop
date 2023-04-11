//
//  NewEventScreen.swift
//  CanTestItUITests
//
//  Created by Beata Kowalczyk on 30/03/2023.
//

import XCTest

final class NewEventScreen: BaseScreen {
    //dopisac funkcje dla wybrania obrazka
    
    private lazy var addEventName = app.textFields[ElementId.NewEvent.addEventName].firstMatch
    private lazy var saveButton =  app.buttons[ElementId.NewEvent.saveButton].firstMatch
    private lazy var addPrice = app.textFields[ElementId.NewEvent.addPrice].firstMatch
    
    @discardableResult
    func enterEventName(name: String) -> Self{
        addEventName.tap()
        addEventName.typeText(name)
        return self
    }
    @discardableResult
    func tapSaveButton() -> Self{
        saveButton.tap()
        return self
    }
    @discardableResult
    func enterPrice(name: String) -> Self{
        addPrice.tap()
        addPrice.typeText(name)
        return self
    }
}
