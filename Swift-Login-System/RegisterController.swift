import UIKit

class RegisterController: UIViewController {
    
    
    //MARK: - UI Components
    
    private let headerView = AuthHeaderView(title: "Sign Up", subTitle: "Create your account")
    
    private let usernameField = CustomTextField(fieldType: .username)
    
    private let emailField = CustomTextField(fieldType: .email)
    
    private let passwordField = CustomTextField(fieldType: .password)
    
    private let signUpBtn = CustomButton(title: "Sign Up",hasBackground: true ,fontSize: .big)
    private let signInBtn = CustomButton(title: "Already have an account? Sign In.",fontSize: .med)
    
    private let termsTextView: UITextView = {
            let tv = UITextView()
            tv.text = "By creating an account, you agree to our Terms & Conditions and you acknowledge that you have read our Privacy Policy."
            tv.backgroundColor = .clear
            tv.textColor = .label
            tv.isSelectable = true
            tv.isEditable = false
            tv.isScrollEnabled = false
            return tv
        }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.signUpBtn.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
        self.signInBtn.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
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
        self.view.addSubview(emailField)
        self.view.addSubview(passwordField)
        self.view.addSubview(signUpBtn)
        self.view.addSubview(termsTextView)
        self.view.addSubview(signInBtn)
    
        
        self.headerView.translatesAutoresizingMaskIntoConstraints = false
        self.usernameField.translatesAutoresizingMaskIntoConstraints = false
        self.emailField.translatesAutoresizingMaskIntoConstraints = false
        self.passwordField.translatesAutoresizingMaskIntoConstraints = false
        self.signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        self.termsTextView.translatesAutoresizingMaskIntoConstraints = false
        self.signInBtn.translatesAutoresizingMaskIntoConstraints = false
    
        
        
        NSLayoutConstraint.activate([
            
            self.headerView.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 222),
            
            self.usernameField.topAnchor.constraint(equalTo: self.headerView.bottomAnchor,constant: 12),
            self.usernameField.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.usernameField.heightAnchor.constraint(equalToConstant: 55),
            self.usernameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            self.emailField.topAnchor.constraint(equalTo: self.usernameField.bottomAnchor,constant: 12),
            self.emailField.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.emailField.heightAnchor.constraint(equalToConstant: 55),
            self.emailField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            self.passwordField.topAnchor.constraint(equalTo: self.usernameField.bottomAnchor,constant: 22),
            self.passwordField.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.passwordField.heightAnchor.constraint(equalToConstant: 55),
            self.passwordField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            self.signUpBtn.topAnchor.constraint(equalTo: self.passwordField.bottomAnchor,constant: 22),
            self.signUpBtn.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.signUpBtn.heightAnchor.constraint(equalToConstant: 55),
            self.signUpBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            self.termsTextView.topAnchor.constraint(equalTo: self.signUpBtn.bottomAnchor,constant: 6),
            self.termsTextView.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.termsTextView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            self.signInBtn.topAnchor.constraint(equalTo: self.termsTextView.bottomAnchor,constant: 11),
            self.signInBtn.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.signInBtn.heightAnchor.constraint(equalToConstant: 44),
            self.signInBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
        ])
    }
    
    //MARK: - Selectors
    
    @objc private func didTapSignUp() {
       print("DEBUG Print :: didTapSignUp ")
    }
    
    @objc private func didTapSignIn() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
