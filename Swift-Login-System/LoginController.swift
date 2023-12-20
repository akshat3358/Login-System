import UIKit

class LoginController: UIViewController {
    
    
    //MARK: - UI Components
    
    private let headerView = AuthHeaderView(title: "Sign In", subTitle: "Sign in to your account")
    
    private let usernameField = CustomTextField(fieldType: .username)
    
    private let passwordField = CustomTextField(fieldType: .password)
    
    private let signInBtn = CustomButton(title: "Sign In", hasBackground: true,fontSize: .big)
    
    private let createNewAccountBtn = CustomButton(title: "New User? Create Account.", fontSize: .med)
    
    private let forgotPasswordBtn = CustomButton(title: "Forgot Password?", fontSize: .small)
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.signInBtn.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        self.createNewAccountBtn.addTarget(self, action: #selector(didTapNewUser), for: .touchUpInside)
        self.forgotPasswordBtn.addTarget(self, action: #selector(didTapForgotPassword), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    //MARK: - UI Setup
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(headerView)
        self.view.addSubview(usernameField)
        self.view.addSubview(passwordField)
        self.view.addSubview(signInBtn)
        self.view.addSubview(createNewAccountBtn)
        self.view.addSubview(forgotPasswordBtn)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        signInBtn.translatesAutoresizingMaskIntoConstraints = false
        createNewAccountBtn.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordBtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            self.headerView.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 222),
            
            self.usernameField.topAnchor.constraint(equalTo: self.headerView.bottomAnchor,constant: 12),
            self.usernameField.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.usernameField.heightAnchor.constraint(equalToConstant: 55),
            self.usernameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            self.passwordField.topAnchor.constraint(equalTo: self.usernameField.bottomAnchor,constant: 22),
            self.passwordField.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.passwordField.heightAnchor.constraint(equalToConstant: 55),
            self.passwordField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            self.signInBtn.topAnchor.constraint(equalTo: self.passwordField.bottomAnchor,constant: 22),
            self.signInBtn.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.signInBtn.heightAnchor.constraint(equalToConstant: 44),
            self.signInBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            self.createNewAccountBtn.topAnchor.constraint(equalTo: self.signInBtn.bottomAnchor,constant: 11),
            self.createNewAccountBtn.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.createNewAccountBtn.heightAnchor.constraint(equalToConstant: 44),
            self.createNewAccountBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            self.forgotPasswordBtn.topAnchor.constraint(equalTo: self.createNewAccountBtn.bottomAnchor,constant: 6),
            self.forgotPasswordBtn.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.forgotPasswordBtn.heightAnchor.constraint(equalToConstant: 44),
            self.forgotPasswordBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90)
            
        ])
    }
    
    //MARK: - Selectors
    
    @objc private func didTapSignIn() {
        print("DEBUG PRINT:", "didTapSignIn")
    }
    
    @objc private func didTapNewUser() {
        print("DEBUG PRINT:", "didTapNewUser")
    }
    
    @objc private func didTapForgotPassword() {
        print("DEBUG PRINT:", "didTapForgotPassword")
    }
}
