//
//  HalamanUtama.swift
//  Marugoto Mark I
//
//  Created by Dwikky Mardianto on 15/07/19.
//  Copyright © 2019 Dwikky Mardianto. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class HalamanUtamaViewController: UIViewController {
      
    // Variable
    @IBOutlet weak var masukButton: UIButton!
    @IBOutlet weak var mendaftarButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // button
        mendaftarButton.layer.cornerRadius = 12
    
        masukButton.layer.cornerRadius = 12
        masukButton.layer.borderWidth = 0.5
        masukButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // shadow button
        mendaftarButton.layer.shadowColor = UIColor.pink.cgColor
        mendaftarButton.layer.shadowRadius = 3
        mendaftarButton.layer.shadowOpacity = 0.5
        mendaftarButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        mendaftarButton.clipsToBounds = true
        mendaftarButton.layer.masksToBounds = false
        
        masukButton.layer.shadowColor = UIColor.darkGray.cgColor
        masukButton.layer.shadowRadius = 3
        masukButton.layer.shadowOpacity = 0.5
        masukButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        masukButton.clipsToBounds = true
        masukButton.layer.masksToBounds = false
    }
    
    @IBAction func backSegue(_ unwindSegue: UIStoryboardSegue){
        
    }

    @IBAction func mendaftarButton(_ sender: UIButton) {
        sender.pulseButton()
    }
        
    @IBAction func masukButton(_ sender: UIButton) {
        sender.pulseButton()
    }
    
}


