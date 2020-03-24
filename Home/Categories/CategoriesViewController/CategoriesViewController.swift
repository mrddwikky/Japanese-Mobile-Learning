//
//  Categories.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 17/12/19.
//  Copyright © 2019 Dwikky Mardianto. All rights reserved.
//

import UIKit
import SafariServices
import Firebase

class CategoriesViewController: UIViewController {

   // Variable
    @IBOutlet weak var pointView: UIView!
    @IBOutlet weak var hiraganaView: UIView!
    @IBOutlet weak var katakanaView: UIView!
    @IBOutlet weak var negaraView: UIView!
    @IBOutlet weak var profesiView: UIView!
    @IBOutlet weak var keluargaView: UIView!
    @IBOutlet weak var angkaView: UIView!
    @IBOutlet weak var makananView: UIView!
    @IBOutlet weak var minumanView: UIView!
    @IBOutlet weak var rumahView: UIView!
    @IBOutlet weak var waktuView: UIView!
    @IBOutlet weak var kegiatanView: UIView!
    @IBOutlet weak var tempatView: UIView!
    
    @IBOutlet weak var hiraganaImageView: UIImageView!
    @IBOutlet weak var katakanaImageView: UIImageView!
    @IBOutlet weak var negaraImageView: UIImageView!
    @IBOutlet weak var profesiImageView: UIImageView!
    @IBOutlet weak var keluargaImageView: UIImageView!
    @IBOutlet weak var angkaImageView: UIImageView!
    @IBOutlet weak var makananImageView: UIImageView!
    @IBOutlet weak var minumanImageView: UIImageView!
    @IBOutlet weak var rumahImageView: UIImageView!
    @IBOutlet weak var waktuImageView: UIImageView!
    @IBOutlet weak var kegiatanImageView: UIImageView!
    @IBOutlet weak var tempatImageView: UIImageView!
    
    @IBOutlet weak var hiraganaButton: UIButton!
    @IBOutlet weak var hiraganaPlayButton: UIButton!
    @IBOutlet weak var katakanaButton: UIButton!
    @IBOutlet weak var negaraButton: UIButton!
    @IBOutlet weak var profesiButton: UIButton!
    @IBOutlet weak var keluargaButton: UIButton!
    @IBOutlet weak var angkaButton: UIButton!
    @IBOutlet weak var makananButton: UIButton!
    @IBOutlet weak var minumanButton: UIButton!
    @IBOutlet weak var rumahButton: UIButton!
    @IBOutlet weak var waktuButton: UIButton!
    @IBOutlet weak var kegiatanButton: UIButton!
    @IBOutlet weak var tempatButton: UIButton!
    
    @IBOutlet weak var koinTextField: UITextField!
    @IBOutlet weak var diamondTextField: UITextField!
    
    //Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // View
        pointView.layer.borderWidth = 0.1
        pointView.layer.borderColor = UIColor.lightGray.cgColor
        pointView.layer.cornerRadius = 12
        
        hiraganaView.layer.borderWidth = 0.1
        hiraganaView.layer.borderColor = UIColor.lightGray.cgColor
        hiraganaView.layer.cornerRadius = 12
        
        katakanaView.layer.borderWidth = 0.1
        katakanaView.layer.borderColor = UIColor.lightGray.cgColor
        katakanaView.layer.cornerRadius = 12
        
        negaraView.layer.borderWidth = 0.1
        negaraView.layer.borderColor = UIColor.lightGray.cgColor
        negaraView.layer.cornerRadius = 12
        
        profesiView.layer.borderWidth = 0.1
        profesiView.layer.borderColor = UIColor.lightGray.cgColor
        profesiView.layer.cornerRadius = 12
        
        keluargaView.layer.borderWidth = 0.1
        keluargaView.layer.borderColor = UIColor.lightGray.cgColor
        keluargaView.layer.cornerRadius = 12
        
        angkaView.layer.borderWidth = 0.1
        angkaView.layer.borderColor = UIColor.lightGray.cgColor
        angkaView.layer.cornerRadius = 12
        
        makananView.layer.borderWidth = 0.1
        makananView.layer.borderColor = UIColor.lightGray.cgColor
        makananView.layer.cornerRadius = 12
        
        minumanView.layer.borderWidth = 0.1
        minumanView.layer.borderColor = UIColor.lightGray.cgColor
        minumanView.layer.cornerRadius = 12
        
        rumahView.layer.borderWidth = 0.1
        rumahView.layer.borderColor = UIColor.lightGray.cgColor
        rumahView.layer.cornerRadius = 12
        
        waktuView.layer.borderWidth = 0.1
        waktuView.layer.borderColor = UIColor.lightGray.cgColor
        waktuView.layer.cornerRadius = 12
        
        kegiatanView.layer.borderWidth = 0.1
        kegiatanView.layer.borderColor = UIColor.lightGray.cgColor
        kegiatanView.layer.cornerRadius = 12
        
        tempatView.layer.borderWidth = 0.1
        tempatView.layer.borderColor = UIColor.lightGray.cgColor
        tempatView.layer.cornerRadius = 12
        
        // Shadow view
        pointView.layer.shadowColor = UIColor.lightGray.cgColor
        pointView.layer.shadowRadius = 3
        pointView.layer.shadowOpacity = 0.3
        pointView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        hiraganaView.layer.shadowColor = UIColor.lightGray.cgColor
        hiraganaView.layer.shadowRadius = 3
        hiraganaView.layer.shadowOpacity = 0.3
        hiraganaView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        katakanaView.layer.shadowColor = UIColor.lightGray.cgColor
        katakanaView.layer.shadowRadius = 3
        katakanaView.layer.shadowOpacity = 0.3
        katakanaView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        negaraView.layer.shadowColor = UIColor.lightGray.cgColor
        negaraView.layer.shadowRadius = 3
        negaraView.layer.shadowOpacity = 0.3
        negaraView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        profesiView.layer.shadowColor = UIColor.lightGray.cgColor
        profesiView.layer.shadowRadius = 3
        profesiView.layer.shadowOpacity = 0.3
        profesiView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        keluargaView.layer.shadowColor = UIColor.lightGray.cgColor
        keluargaView.layer.shadowRadius = 3
        keluargaView.layer.shadowOpacity = 0.3
        keluargaView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        angkaView.layer.shadowColor = UIColor.lightGray.cgColor
        angkaView.layer.shadowRadius = 3
        angkaView.layer.shadowOpacity = 0.3
        angkaView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        makananView.layer.shadowColor = UIColor.lightGray.cgColor
        makananView.layer.shadowRadius = 3
        makananView.layer.shadowOpacity = 0.3
        makananView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        minumanView.layer.shadowColor = UIColor.lightGray.cgColor
        minumanView.layer.shadowRadius = 3
        minumanView.layer.shadowOpacity = 0.3
        minumanView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        rumahView.layer.shadowColor = UIColor.lightGray.cgColor
        rumahView.layer.shadowRadius = 3
        rumahView.layer.shadowOpacity = 0.3
        rumahView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        waktuView.layer.shadowColor = UIColor.lightGray.cgColor
        waktuView.layer.shadowRadius = 3
        waktuView.layer.shadowOpacity = 0.3
        waktuView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        kegiatanView.layer.shadowColor = UIColor.lightGray.cgColor
        kegiatanView.layer.shadowRadius = 3
        kegiatanView.layer.shadowOpacity = 0.3
        kegiatanView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        tempatView.layer.shadowColor = UIColor.lightGray.cgColor
        tempatView.layer.shadowRadius = 3
        tempatView.layer.shadowOpacity = 0.3
        tempatView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        // Image view
        hiraganaImageView.layer.cornerRadius = 12
        
        katakanaImageView.layer.cornerRadius = 12
        
        negaraImageView.layer.cornerRadius = 12
        
        profesiImageView.layer.cornerRadius = 12
        
        keluargaImageView.layer.cornerRadius = 12
        
        angkaImageView.layer.cornerRadius = 12
        
        makananImageView.layer.cornerRadius = 12
        
        minumanImageView.layer.cornerRadius = 12
        
        rumahImageView.layer.cornerRadius = 12
        
        waktuImageView.layer.cornerRadius = 12
        
        kegiatanImageView.layer.cornerRadius = 12
        
        tempatImageView.layer.cornerRadius = 12
        
        // Button
        hiraganaButton.layer.cornerRadius = 12
        
        hiraganaPlayButton.layer.cornerRadius = 12
        
        katakanaButton.layer.cornerRadius = 12
        
        negaraButton.layer.cornerRadius = 12
        
        profesiButton.layer.cornerRadius = 12
        
        keluargaButton.layer.cornerRadius = 12
        
        angkaButton.layer.cornerRadius = 12
        
        makananButton.layer.cornerRadius = 12
        
        minumanButton.layer.cornerRadius = 12
        
        rumahButton.layer.cornerRadius = 12
        
        waktuButton.layer.cornerRadius = 12
        
        kegiatanButton.layer.cornerRadius = 12
        
        tempatView.layer.cornerRadius = 12
        
        // Shadow button
        hiraganaButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        hiraganaButton.layer.shadowRadius = 3
        hiraganaButton.layer.shadowOpacity = 0.5
        hiraganaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        hiraganaButton.clipsToBounds = true
        hiraganaButton.layer.masksToBounds = false
        
        hiraganaPlayButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        hiraganaPlayButton.layer.shadowRadius = 3
        hiraganaPlayButton.layer.shadowOpacity = 0.5
        hiraganaPlayButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        hiraganaPlayButton.clipsToBounds = true
        hiraganaPlayButton.layer.masksToBounds = false
        
        katakanaButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        katakanaButton.layer.shadowRadius = 3
        katakanaButton.layer.shadowOpacity = 0.5
        katakanaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        katakanaButton.clipsToBounds = true
        katakanaButton.layer.masksToBounds = false
        
        negaraButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        negaraButton.layer.shadowRadius = 3
        negaraButton.layer.shadowOpacity = 0.5
        negaraButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        negaraButton.clipsToBounds = true
        negaraButton.layer.masksToBounds = false
        
        profesiButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        profesiButton.layer.shadowRadius = 3
        profesiButton.layer.shadowOpacity = 0.5
        profesiButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        profesiButton.clipsToBounds = true
        profesiButton.layer.masksToBounds = false
        
        keluargaButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        keluargaButton.layer.shadowRadius = 3
        keluargaButton.layer.shadowOpacity = 0.5
        keluargaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        keluargaButton.clipsToBounds = true
        keluargaButton.layer.masksToBounds = false
        
        angkaButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        angkaButton.layer.shadowRadius = 3
        angkaButton.layer.shadowOpacity = 0.5
        angkaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        angkaButton.clipsToBounds = true
        angkaButton.layer.masksToBounds = false
        
        makananButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        makananButton.layer.shadowRadius = 3
        makananButton.layer.shadowOpacity = 0.5
        makananButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        makananButton.clipsToBounds = true
        makananButton.layer.masksToBounds = false
        
        minumanButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        minumanButton.layer.shadowRadius = 3
        minumanButton.layer.shadowOpacity = 0.5
        minumanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        minumanButton.clipsToBounds = true
        minumanButton.layer.masksToBounds = false
        
        rumahButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        rumahButton.layer.shadowRadius = 3
        rumahButton.layer.shadowOpacity = 0.5
        rumahButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        rumahButton.clipsToBounds = true
        rumahButton.layer.masksToBounds = false
        
        waktuButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        waktuButton.layer.shadowRadius = 3
        waktuButton.layer.shadowOpacity = 0.5
        waktuButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        waktuButton.clipsToBounds = true
        waktuButton.layer.masksToBounds = false
        
        kegiatanButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        kegiatanButton.layer.shadowRadius = 3
        kegiatanButton.layer.shadowOpacity = 0.5
        kegiatanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kegiatanButton.clipsToBounds = true
        kegiatanButton.layer.masksToBounds = false
        
        tempatButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        tempatButton.layer.shadowRadius = 3
        tempatButton.layer.shadowOpacity = 0.5
        tempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        tempatButton.clipsToBounds = true
        tempatButton.layer.masksToBounds = false
        
        ambilData()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func hiraganaButton(_ sender: UIButton) {
        sender.pulseButton()
    }
    
    @IBAction func hiraganaPlayButton(_ sender: UIButton) {
        sender.pulseButton()
        
        showSafariVC(for: "https://www.youtube.com/watch?v=MSO8mJdu1a0")
    }
    
    @IBAction func katakanaButton(_ sender: UIButton) {
        sender.pulseButton()
    }
       
    @IBAction func negaraButton(_ sender: UIButton) {
        sender.pulseButton()
    }
       
    @IBAction func profesiButton(_ sender: UIButton) {
        sender.pulseButton()
    }
       
    @IBAction func keluargaButton(_ sender: UIButton) {
        sender.pulseButton()
    }
       
    @IBAction func angkaButton(_ sender: UIButton) {
        sender.pulseButton()
    }
       
    @IBAction func makananButton(_ sender: UIButton) {
        sender.pulseButton()
    }
       
    @IBAction func minumanButton(_ sender: UIButton) {
        sender.pulseButton()
    }
       
    @IBAction func rumahButton(_ sender: UIButton) {
        sender.pulseButton()
    }
       
    @IBAction func waktuButton(_ sender: UIButton) {
        sender.pulseButton()
    }
       
    @IBAction func kegiatanButton(_ sender: UIButton) {
       sender.pulseButton()
    }
       
    @IBAction func tempatButton(_ sender: UIButton) {
        sender.pulseButton()
    }
    
    func ambilData() {
        let db = Firestore.firestore()
        guard let userUid = Auth.auth().currentUser?.uid else { return }
                   
        // Mengambil data dari db
        db.collection("users").document(userUid).addSnapshotListener { (snapshot, err) in
            let koin = snapshot?.data()!["coins"] as? Int
            let diamond = snapshot?.data()!["diamond"] as? Int
                       
            self.koinTextField.text = "\(koin ?? 0)"
            self.diamondTextField.text = "\(diamond ?? 0)"
        }
    }
    
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
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
