//
//  LoginSteps.swift
//  CanTestItUITests
//
//  Created by Beata Kowalczyk on 30/03/2023.
//

import XCTest

extension BaseTests {
    
    func loginUserWith(name: String, password: String) {
        LogInScreen()
            .typeUserName(name: UserData.name)
            .typeUserPassword(password: UserData.password)
            .tapLoginButton()
    }
}
