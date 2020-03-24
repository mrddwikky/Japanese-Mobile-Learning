//
//  LogIn.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 17/12/19.
//  Copyright © 2019 Dwikky Mardianto. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LogInViewController: UIViewController {

    // Variable
    @IBOutlet weak var masuk2Button: UIButton!
    @IBOutlet weak var lupaPasswordButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!

    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
           
        // Button
        masuk2Button.layer.cornerRadius = 12
        
        lupaPasswordButton.layer.cornerRadius = 12
        lupaPasswordButton.layer.borderWidth = 0.1
        lupaPasswordButton.layer.borderColor = UIColor.lightGray.cgColor

        // Label
        errorLabel.alpha = 0
               
        // Shadow button
        masuk2Button.layer.shadowColor = UIColor.oceanBlue.cgColor
        masuk2Button.layer.shadowRadius = 3
        masuk2Button.layer.shadowOpacity = 0.5
        masuk2Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        masuk2Button.clipsToBounds = true
        masuk2Button.layer.masksToBounds = false
        
        lupaPasswordButton.layer.shadowColor = UIColor.lightGray.cgColor
        lupaPasswordButton.layer.shadowRadius = 3
        lupaPasswordButton.layer.shadowOpacity = 0.5
        lupaPasswordButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lupaPasswordButton.clipsToBounds = true
        lupaPasswordButton.layer.masksToBounds = false
           
        // Do any additional setup after loading the view.
    }
    
    func transisiHome() {
               
        let homeViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
          
        self.view.window?.rootViewController = homeViewController
        self.view.window?.makeKeyAndVisible()
        self.dismiss(animated: false, completion: nil)
        
        /* self.addChild(homeViewController)
        homeViewController.view.frame = self.view.frame
        self.view.addSubview(homeViewController.view)
        homeViewController.didMove(toParent: self) */
    }
    
    @IBAction func masuk2Button(_ sender: UIButton) {
        sender.pulseButton()
        
        // Membuat data yang clean
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Log in user
        Auth.auth().signIn(withEmail: email, password: password) { (result, error ) in
            if error != nil {
                // Tidak bisa log in
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
            } else {
                print("Login berhasil")
                self.transisiHome()
            }
        }
    }
    
    @IBAction func lupaPasswordButton(_ sender: UIButton) {
        sender.pulseButton()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    */

}
