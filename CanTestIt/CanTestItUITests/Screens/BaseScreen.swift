//
//  BaseScreen.swift
//  CanTestItUITests
//
//  Created by Beata Kowalczyk on 29/03/2023.
//

import XCTest

//trzyma sie tu powtarzalne metody, funkcje

class BaseScreen {
    let app = XCUIApplication()
    
    
    //funkcja do scrollowania
    func swipeDownUntil(element: XCUIElement){
        var numberOfScrolls = 0
        while numberOfScrolls <= 15 && !element.isHittable { //hittable = jest dostepny na ekranie
            app.tables.element.swipeUp()
            numberOfScrolls += 1
        }
    }
}
