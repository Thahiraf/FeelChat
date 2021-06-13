//
//  LoginViewController.swift
//  FeelChat
//
//  Created by Thahi on 12/06/2021.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailLabel.text, let password = passwordLabel.text{
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let e = error{
                print(e)
                
            }else{
                self.performSegue(withIdentifier: "LoginToChat", sender: self)
            }
        }
        }
    }
}
