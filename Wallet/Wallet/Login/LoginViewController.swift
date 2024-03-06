//
//  ViewController.swift
//  Wallet
//
//  Created by Rakesh Shrestha on 06/03/2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    let signInButton = UIButton()
    let descriptionText = UILabel()
    let titleText = UILabel()
    let errorTextLabel = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        style()
        layout()
    }


}

extension LoginViewController {
    private func style() {
        
        errorTextLabel.isHidden = true
        
        loginView.translatesAutoresizingMaskIntoConstraints = false
        loginView.backgroundColor = .secondarySystemBackground
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.backgroundColor = .systemBlue
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.layer.cornerRadius = 5
        signInButton.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
        
        descriptionText.translatesAutoresizingMaskIntoConstraints = false
        descriptionText.text = "Safeguard your digital identity with a secure vault for all your credentials!"
        descriptionText.textColor = .systemGreen
        descriptionText.numberOfLines = 0
        descriptionText.textAlignment = .center
        descriptionText.font = UIFont.systemFont(ofSize: 18)
        
        titleText.translatesAutoresizingMaskIntoConstraints = false
        titleText.text = "Wallet"
        titleText.textColor = .systemMint
        titleText.textAlignment = .center
        titleText.font = UIFont.systemFont(ofSize: 32)
        
        errorTextLabel.translatesAutoresizingMaskIntoConstraints = false
        errorTextLabel.text = "Username or Password cannot be empty."
        errorTextLabel.textColor = .systemRed
        errorTextLabel.numberOfLines = 0
        errorTextLabel.textAlignment = .center
    }
    
    func layout() {
        view.addSubview(titleText)
        view.addSubview(descriptionText)
        view.addSubview(loginView)
        view.addSubview(signInButton)
        view.addSubview(errorTextLabel)
        
        NSLayoutConstraint.activate([
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 2),
            signInButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
            descriptionText.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            descriptionText.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
            loginView.topAnchor.constraint(equalToSystemSpacingBelow: descriptionText.bottomAnchor, multiplier: 3),
            titleText.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            titleText.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
            descriptionText.topAnchor.constraint(equalToSystemSpacingBelow: titleText.bottomAnchor, multiplier: 3.5),
            errorTextLabel.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            errorTextLabel.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
            errorTextLabel.topAnchor.constraint(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 3)
        ])
    }
    
    @objc func signInTapped() {
        if loginView.usernameTextField.text == "" || loginView.passwordTextField.text == "" {
            errorTextLabel.isHidden = false
        }
    }
}
