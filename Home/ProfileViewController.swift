//
//  Profile.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 17/12/19.
//  Copyright © 2019 Dwikky Mardianto. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ProfileViewController: UIViewController {
    
    // Variable
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var simpanButton: UIButton!
    @IBOutlet weak var keluarButton: UIButton!
    
    @IBOutlet weak var namaLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var koinTextField: UITextField!
    @IBOutlet weak var diamondTextField: UITextField!
    @IBOutlet weak var namaTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        profileButton.layer.cornerRadius = 60
        
        simpanButton.layer.cornerRadius = 12
        simpanButton.layer.borderWidth = 0.5
        simpanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        keluarButton.layer.cornerRadius = 12
        keluarButton.layer.borderWidth = 0.5
        keluarButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        simpanButton.layer.shadowColor = UIColor.darkGray.cgColor
        simpanButton.layer.shadowRadius = 3
        simpanButton.layer.shadowOpacity = 0.5
        simpanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        simpanButton.clipsToBounds = true
        simpanButton.layer.masksToBounds = false
        
        keluarButton.layer.shadowColor = UIColor.darkGray.cgColor
        keluarButton.layer.shadowRadius = 3
        keluarButton.layer.shadowOpacity = 0.5
        keluarButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        keluarButton.clipsToBounds = true
        keluarButton.layer.masksToBounds = false
        
        cekUserLogIn()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func simpanButton(_ sender: UIButton) {
        sender.pulseButton()
               
        let nama = namaTextField.text!.trimmingCharacters(in:  .whitespacesAndNewlines)
        let username = usernameTextField.text!.trimmingCharacters(in:  .whitespacesAndNewlines)
        let db = Firestore.firestore()
        guard let userUid = Auth.auth().currentUser?.uid else { return }
               
        // Update data ke db
        db.collection("users").document(userUid).updateData(["nama": nama, "username": username])
    }
    
    @IBAction func keluarButton(_ sender: UIButton) {
        sender.pulseButton()
               
        self.userLogOut()
    }
    
    
    func cekUserLogIn() {
        if Auth.auth().currentUser?.uid == nil {
            self.userLogOut()
        } else {
            let db = Firestore.firestore()
            guard let userUid = Auth.auth().currentUser?.uid else { return }
            
            // Mengambil data dari db
            db.collection("users").document(userUid).addSnapshotListener { (snapshot, err) in
                let nama = snapshot?.data()!["nama"] as? String
                let username = snapshot?.data()!["username"] as? String
                let koin = snapshot?.data()!["coins"] as? Int
                let diamond = snapshot?.data()!["diamond"] as? Int
                
                self.namaLabel.text = "\(nama ?? "")"
                self.usernameLabel.text = "\(username ?? "")"
                    
                self.koinTextField.text = "\(koin ?? 0)"
                self.diamondTextField.text = "\(diamond ?? 0)"
                self.namaTextField.text = "\(nama ?? "")"
                self.usernameTextField.text = "\(username ?? "")"
            }
        }
    }
        
    
    func transisiHalamanUtama() {
        let halamanUtamaViewController = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(identifier: "Main") as! HalamanUtamaViewController
        
        self.view.window?.rootViewController = halamanUtamaViewController
        self.view.window?.makeKeyAndVisible()
        self.dismiss(animated: false, completion: nil)
        
        /* self.addChild(halamanUtamaViewController)
        halamanUtamaViewController.view.frame = self.view.frame
        self.view.addSubview(halamanUtamaViewController.view)
        halamanUtamaViewController.didMove(toParent: self) */
    }
    
    // Log out
    func userLogOut() {
        do {
            print ("Log out berhasil")
            try Auth.auth().signOut()
            self.transisiHalamanUtama()
            
        } catch let logOutError as NSError{
            print (logOutError)
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
