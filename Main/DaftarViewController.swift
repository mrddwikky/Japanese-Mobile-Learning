//
//  Daftar.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 17/12/19.
//  Copyright © 2019 Dwikky Mardianto. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class DaftarViewController: UIViewController, UITextFieldDelegate {
    
    // Variable
    @IBOutlet weak var mendaftarButton2: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var namaTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        mendaftarButton2.layer.cornerRadius = 12
               
        // Shadow button
        mendaftarButton2.layer.shadowColor = UIColor.oceanBlue.cgColor
        mendaftarButton2.layer.shadowRadius = 5
        mendaftarButton2.layer.shadowOpacity = 0.5
        mendaftarButton2.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        mendaftarButton2.clipsToBounds = true
        mendaftarButton2.layer.masksToBounds = false
        
        // Label
        errorLabel.alpha = 0
        
       /* namaTextField.delegate = self
        emailTextField.delegate = self
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
        if namaTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" && emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" && usernameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" &&
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            mendaftarButton2.isEnabled = false
        } else {
            return mendaftarButton2.isEnabled = true
        } */
    }

    /*Mengubah textfield dari string -> boolean
    func textField(textField: UITextField, range: NSRange, replacementString string: String) -> Bool{
        
        let text = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        
        if !text.isEmpty {
            mendaftarButton2.isEnabled = false
        } else {
            mendaftarButton2.isEnabled = true
        }
        
        return true
        
    }*/
    
    // Untuk cek keamanan password
    func passwordSecurity (_ password: String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[0-9])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{6,}$")
        
        return passwordTest.evaluate(with: password)
    }
    
    // Untuk cek textfield dan validasi data
    func validasiFields() -> String? {
        if namaTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" && emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" && usernameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" &&
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Lengkapi data kamu"
        }
        
        // Cek jika password aman
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if passwordSecurity(cleanedPassword) == false {
            passwordTextField.text?.removeAll()
            return "Pastikan password memiliki min 6 karakter, 1 spesial karakter (#,!,%,*,?,&) dan 1 angka"
        }
        
        return nil
    }
    
    func showError (_ message:String) {
        errorLabel.text = message
        errorLabel.alpha = 1
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
    
    @IBAction func mendaftarButton2 (_ sender: UIButton) {
        sender.pulseButton()
        
        // Validasi textfield
        let error = validasiFields()
        
        if error != nil {
            showError(error!)
        } else {
            // Membersihkan textfield
            let nama = namaTextField.text!.trimmingCharacters(in:  .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let username = usernameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Membuat user baru
            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                if error != nil {
                    self.showError("User sudah terdaftar")
                } else {
                    let db = Firestore.firestore()
                    
                    // Menambah data baru di db
                    db.collection("users").document(result!.user.uid).setData(["nama":nama, "username":username, "coins":0, "diamond":0]) { (error) in
                        if error != nil {
                        // pesan error
                        self.showError("Error menyimpan data")
                        }
                    }
                    
                    // Transisi ke home
                    self.transisiHome()
                }
            }
        }
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
