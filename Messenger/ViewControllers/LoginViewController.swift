//
//  LoginViewController.swift
//  Messenger
//
//  Created by Deepika Ramesh on 6/20/23.
//



import UIKit

class LoginViewController: UIViewController {

	@IBOutlet weak var loginIdTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	@IBOutlet weak var eyeButton: UIButton!
	var isPasswordVisible: Bool = false {
		didSet {
			passwordTextField.isSecureTextEntry = isPasswordVisible
		}
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()
		isPasswordVisible = false

		eyeButton.addTarget(self, action: #selector(didPressShowPassword), for: .touchDown)
    }
    
	@IBAction func didPressSignInButton(_ sender: Any) {
		
	}
	@IBAction func didPressSignUpButton(_ sender: Any) {
		
	}
	
	@IBAction func didPressSignInWithGoogle(_ sender: Any) {
	}
	
	@IBAction func didPressSignInwithApple(_ sender: Any) {
	}
	
	@objc func didPressShowPassword() {
		isPasswordVisible.toggle()
	}
	
	/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
