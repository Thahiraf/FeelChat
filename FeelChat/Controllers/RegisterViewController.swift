//
//  RegisterViewController.swift
//  FeelChat
//
//  Created by Thahi on 12/06/2021.
//

import UIKit
import Firebase
class RegisterViewController: UIViewController {

    @IBOutlet weak var emaiTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emaiTextField.text, let password = passwordTextField.text{
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error{
                print(e.localizedDescription)
            }else{
                self.performSegue(withIdentifier: "RegisterToChat", sender: self)
            }
        }
        }
    }
    
}
