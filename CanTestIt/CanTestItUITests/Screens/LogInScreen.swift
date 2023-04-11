//
//  LogInScreen.swift
//  CanTestItUITests
//
//  Created by Beata Kowalczyk on 29/03/2023.
//

import XCTest

final class LogInScreen: BaseScreen { //final oznacza, ze klasa nigdy nie bedzie dziedziczona, usprawnienei kodow
    
    private lazy var usernameTextField = app.textFields[ElementId.LoginIds.usernameTextField].firstMatch
    // private lazy var usernameTextField = app.textFields["loginUserNameTextField"].firstMatch // w [] sa ID / identifier dodane recznie do pol w kodzie bazowym aplikacji, tylko wtedy w kodzie bazowym w .accessibility trzeba dodac stringa z []
    private lazy var passwordTextField = app.secureTextFields[ElementId.LoginIds.passwordTextField].firstMatch
    private lazy var logInButton = app.buttons[ElementId.LoginIds.loginButton].firstMatch
    // private lazy var error - DOKONCZYC
    private lazy var loginError = app.staticTexts[ElementId.LoginIds.errorLogin].firstMatch
    private lazy var websiteLink = app.staticTexts[ElementId.LoginIds.goToWebsite].firstMatch
    private lazy var safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari") // kazda aplikacja ma swoje bundle ID czyli identyfikator, po ktorym jest rozrozniana, jezeli przechodzimy z apki do safari, trzeba przekazac to bundle ID do osobnego screena dla tej apki, tutaj napisalismy w tym samym, zeby oszczedzic czas
    private lazy var canTestItLogo = safari.images["logo cantest it"].firstMatch
    
    
    @discardableResult
    func typeUserName(name: String) -> Self { //zdefiniowanie parametru w funkcji pozwala na przekazanie wartosci parametrowi w tescie, uproszczenie kodu i poprawa czytelnosci testu
        usernameTextField.tap()
        usernameTextField.typeText(name)
        return self
    }
    @discardableResult
    func typeUserPassword(password: String) -> Self { //zdefiniowanie parametru w funkcji pozwala na przekazanie wartosci parametrowi w tescie, uproszczenie kodu i poprawa czytelnosci testu
        passwordTextField.tap()
        passwordTextField.typeText(password)
        return self
    }
    @discardableResult
    func tapLoginButton() -> Self{
        logInButton.tap()
        return self
    }
    @discardableResult
    func checkLoginError() -> Self{
        XCTAssertTrue(loginError.exists) //asercja przekazana w funkcji w pagu dla screena, nie w samym tescie, tak robia w BB
        return self
    }
    @discardableResult
    func tapGoToWebsite() -> Self{
        websiteLink.tap()
        return self
    }
    @discardableResult
    func checkLogoIsDisplayed() -> Self{
        canTestItLogo.waitForExistence(timeout: 5)
        XCTAssertTrue(canTestItLogo.exists)
        return self
    }
}
