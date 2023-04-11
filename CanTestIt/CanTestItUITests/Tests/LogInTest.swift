//
//  LogInTest.swift
//  CanTestItUITests
//
//  Created by Beata Kowalczyk on 29/03/2023.
//

import XCTest

class LogInTest: BaseTests {
    
    func testLogInUser() {
        //kody bez chaina Self return self
//        LogInScreen().typeUserName(name: "user")
//        LogInScreen().typeUserPassword(password: "password")
//        LogInScreen().tapLoginButton()
        LogInScreen()
            .typeUserName(name: "user")
            .typeUserPassword(password: "password")
            .tapLoginButton()
        EventsListScreen()
            .checkFindYourEventTextIsDisplayed()
        //XCTAssertTrue(XCUIApplication().staticTexts["Find your event"].exists) //tak wyglada asercja w swifcie
    }
    func testLogInUserWithError() {
        LogInScreen()
            .typeUserName(name: "userrr")
            .typeUserPassword(password: "password")
            .tapLoginButton()
            .checkLoginError() // asercja przekazana w chainie, kod dla asercji jest stworzony w pliku dla screena
        //kody bez chaina Self - return self
        //        LogInScreen().typeUserName(name: "userrr")
        //        LogInScreen().typeUserPassword(password: "password")
        //        LogInScreen().tapLoginButton()
        //XCTAssertTrue(XCUIApplication().staticTexts["Wrong User email or Password"].exists)
    }
    func testVisitOurPage() {
       LogInScreen()
            .tapGoToWebsite()
            .checkLogoIsDisplayed()
    }
}

