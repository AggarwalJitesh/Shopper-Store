//
//  RegisterViewController.swift
//  Shooooping
//
//  Created by Jitesh Aggarwal on 09/08/22.
//

import UIKit

import FirebaseAuth

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
    
        if let email = emailTextField.text , let password = passwordTextField.text
        {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e.localizedDescription)
                }else{
                    
                    self.performSegue(withIdentifier: "RegisterToShop", sender: self)
                    
                } 
            }
        }
    
    
    }
    
}
