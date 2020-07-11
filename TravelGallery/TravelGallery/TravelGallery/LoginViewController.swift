//
//  ViewController.swift
//  TravelGallery
//
//  Created by Okan Serdaroğlu on 11.07.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var labelUserName: UITextField!
    @IBOutlet weak var labelPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func buttonSignUpClicked(_ sender: Any) {
        if validateFields() {
            Auth.auth().createUser(withEmail: labelUserName.text!, password: labelPassword.text!) { (authDataResult, error) in
                self.navigateMainScreen(error: error)
            }
        } else {
            makeAlert(title: "Error !", message: "Enter Username and Password")
        }
    }
    
    
    @IBAction func buttonLoginClicked(_ sender: Any) {
        if validateFields() {
            Auth.auth().signIn(withEmail: labelUserName.text!, password: labelPassword.text!) { (authDataResult, error) in
                self.navigateMainScreen(error: error)
            }
        } else {
            makeAlert(title: "Error !", message: "Enter Username and Password")
        }
    }
    
    
    func validateFields() -> Bool {
        if labelUserName.text != "" && labelPassword.text != ""{
            return true
        }
        return false
    }
    
    func navigateMainScreen (error:Error?){
        if error != nil {
            self.makeAlert(title: "Error !", message: error?.localizedDescription ?? "Error")
        } else {
            self.performSegue(withIdentifier: "toMainScreen", sender: nil)
        }
    }
    
    
    func makeAlert (title:String,message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert,animated: true,completion: nil)
    }
    
    
}

