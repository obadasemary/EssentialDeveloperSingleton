//
//  LoginViewModel.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//


class LoginViewModel {
    
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapLoginButton() {
        login? { user in
            print(user)
        }
    }
}