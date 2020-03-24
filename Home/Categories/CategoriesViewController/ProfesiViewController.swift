//
//  ProfesiViewController.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 21/01/20.
//  Copyright © 2020 Dwikky Mardianto. All rights reserved.
//

import UIKit
import AVFoundation
import Firebase
import FirebaseAuth

class ProfesiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func popUp(){
        self.view.transform = CGAffineTransform(scaleX: 0.5,y: 0.5)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, delay: 0.0, options: .curveEaseInOut, animations: {
            self.view.alpha = 1.0;
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    
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

class ProfesiPertama: ProfesiViewController {
    
    @IBOutlet weak var pelajarPertamaButton: UIButton!
    @IBOutlet weak var guruPertamaButton: UIButton!
    @IBOutlet weak var perawatPertamaButton: UIButton!
    @IBOutlet weak var polisiPertamaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        pelajarPertamaButton.layer.cornerRadius = 12
        pelajarPertamaButton.layer.borderWidth = 0.1
        pelajarPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        guruPertamaButton.layer.cornerRadius = 12
        guruPertamaButton.layer.borderWidth = 0.1
        guruPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        perawatPertamaButton.layer.cornerRadius = 12
        perawatPertamaButton.layer.borderWidth = 0.1
        perawatPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        polisiPertamaButton.layer.cornerRadius = 12
        polisiPertamaButton.layer.borderWidth = 0.1
        polisiPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        // Shadow button
        pelajarPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        pelajarPertamaButton.layer.shadowRadius = 3
        pelajarPertamaButton.layer.shadowOpacity = 0.5
        pelajarPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        pelajarPertamaButton.clipsToBounds = true
        pelajarPertamaButton.layer.masksToBounds = false
            
        guruPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        guruPertamaButton.layer.shadowRadius = 3
        guruPertamaButton.layer.shadowOpacity = 0.5
        guruPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        guruPertamaButton.clipsToBounds = true
        guruPertamaButton.layer.masksToBounds = false
            
        perawatPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        perawatPertamaButton.layer.shadowRadius = 3
        perawatPertamaButton.layer.shadowOpacity = 0.5
        perawatPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perawatPertamaButton.clipsToBounds = true
        perawatPertamaButton.layer.masksToBounds = false
            
        polisiPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        polisiPertamaButton.layer.shadowRadius = 3
        polisiPertamaButton.layer.shadowOpacity = 0.5
        polisiPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        polisiPertamaButton.clipsToBounds = true
        polisiPertamaButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiBenarSatuViewController") as! ProfesiBenarSatuViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiSalahSatuViewController") as! ProfesiSalahSatuViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func pelajarPertamaButton(_ sender: UIButton) {
        pelajarPertamaButton.layer.borderWidth = 2
        pelajarPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
                   
        guruPertamaButton.layer.borderWidth = 0.1
        guruPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        perawatPertamaButton.layer.borderWidth = 0.1
        perawatPertamaButton.layer.borderColor = UIColor.lightGray.cgColor

        polisiPertamaButton.layer.borderWidth = 0.1
        polisiPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        sender.pulseButton()
               
        self.salah()
        
    }
    
    @IBAction func guruPertamaButton(_ sender: UIButton) {
        guruPertamaButton.layer.borderWidth = 2
        guruPertamaButton.layer.borderColor = UIColor.grass.cgColor
        
        pelajarPertamaButton.layer.borderWidth = 0.1
        pelajarPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        perawatPertamaButton.layer.borderWidth = 0.1
        perawatPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        polisiPertamaButton.layer.borderWidth = 0.1
        polisiPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }

    @IBAction func perawatPertamaButton(_ sender: UIButton) {
        perawatPertamaButton.layer.borderWidth = 2
        perawatPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
            
        pelajarPertamaButton.layer.borderWidth = 0.1
        pelajarPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        perawatPertamaButton.layer.borderWidth = 0.1
        perawatPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        polisiPertamaButton.layer.borderWidth = 0.1
        polisiPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func polisiPertamaButton(_ sender: UIButton) {
        polisiPertamaButton.layer.borderWidth = 2
        polisiPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
            
        pelajarPertamaButton.layer.borderWidth = 0.1
        pelajarPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        guruPertamaButton.layer.borderWidth = 0.1
        guruPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        perawatPertamaButton.layer.borderWidth = 0.1
        perawatPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        
        self.salah()
        
    }
    
    @IBAction func keluarPertamaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    
    }
    
}

class ProfesiKedua: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var polisiKeduaButton: UIButton!
    @IBOutlet weak var guruKeduaButton: UIButton!
    @IBOutlet weak var pelajarKeduaButton: UIButton!
    @IBOutlet weak var pegawaiKeduaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        polisiKeduaButton.layer.cornerRadius = 12
        polisiKeduaButton.layer.borderWidth = 0.1
        polisiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        guruKeduaButton.layer.cornerRadius = 12
        guruKeduaButton.layer.borderWidth = 0.1
        guruKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pelajarKeduaButton.layer.cornerRadius = 12
        pelajarKeduaButton.layer.borderWidth = 0.1
        pelajarKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pegawaiKeduaButton.layer.cornerRadius = 12
        pegawaiKeduaButton.layer.borderWidth = 0.1
        pegawaiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor

        // Shadow button
        polisiKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        polisiKeduaButton.layer.shadowRadius = 3
        polisiKeduaButton.layer.shadowOpacity = 0.5
        polisiKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        polisiKeduaButton.clipsToBounds = true
        polisiKeduaButton.layer.masksToBounds = false
        
        guruKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        guruKeduaButton.layer.shadowRadius = 3
        guruKeduaButton.layer.shadowOpacity = 0.5
        guruKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        guruKeduaButton.clipsToBounds = true
        guruKeduaButton.layer.masksToBounds = false
        
        pelajarKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        pelajarKeduaButton.layer.shadowRadius = 3
        pelajarKeduaButton.layer.shadowOpacity = 0.5
        pelajarKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        pelajarKeduaButton.clipsToBounds = true
        pelajarKeduaButton.layer.masksToBounds = false
        
        pegawaiKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        pegawaiKeduaButton.layer.shadowRadius = 3
        pegawaiKeduaButton.layer.shadowOpacity = 0.5
        pegawaiKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        pegawaiKeduaButton.clipsToBounds = true
        pegawaiKeduaButton.layer.masksToBounds = false
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiBenarDuaViewController") as! ProfesiBenarDuaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiSalahDuaViewController") as! ProfesiSalahDuaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func polisiKeduaButton(_ sender: UIButton) {
        polisiKeduaButton.layer.borderWidth = 2
        polisiKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        guruKeduaButton.layer.borderWidth = 0.1
        guruKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pelajarKeduaButton.layer.borderWidth = 0.1
        pelajarKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pegawaiKeduaButton.layer.borderWidth = 0.1
        pegawaiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func guruKeduaButton(_ sender: UIButton) {
        guruKeduaButton.layer.borderWidth = 2
        guruKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        polisiKeduaButton.layer.borderWidth = 0.1
        polisiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pelajarKeduaButton.layer.borderWidth = 0.1
        pelajarKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pegawaiKeduaButton.layer.borderWidth = 0.1
        pegawaiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func pelajarKeduaButton(_ sender: UIButton) {
        pelajarKeduaButton.layer.borderWidth = 2
        pelajarKeduaButton.layer.borderColor = UIColor.grass.cgColor
        
        polisiKeduaButton.layer.borderWidth = 0.1
        polisiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        guruKeduaButton.layer.borderWidth = 0.1
        guruKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pegawaiKeduaButton.layer.borderWidth = 0.1
        pegawaiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func pegawaiKeduaButton(_ sender: UIButton) {
        pegawaiKeduaButton.layer.borderWidth = 2
        pegawaiKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
                   
        polisiKeduaButton.layer.borderWidth = 0.1
        polisiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        guruKeduaButton.layer.borderWidth = 0.1
        guruKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        pelajarKeduaButton.layer.borderWidth = 0.1
        pelajarKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKeduaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class ProfesiKetiga: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var ishaKetigaButton: UIButton!
    @IBOutlet weak var senseiKetigaButton: UIButton!
    @IBOutlet weak var kenkyuushaKetigaButton: UIButton!
    @IBOutlet weak var gakuseiKetigaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        ishaKetigaButton.layer.cornerRadius = 12
        ishaKetigaButton.layer.borderWidth = 0.1
        ishaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        senseiKetigaButton.layer.cornerRadius = 12
        senseiKetigaButton.layer.borderWidth = 0.1
        senseiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kenkyuushaKetigaButton.layer.cornerRadius = 12
        kenkyuushaKetigaButton.layer.borderWidth = 0.1
        kenkyuushaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        gakuseiKetigaButton.layer.cornerRadius = 12
        gakuseiKetigaButton.layer.borderWidth = 0.1
        gakuseiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        ishaKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        ishaKetigaButton.layer.shadowRadius = 3
        ishaKetigaButton.layer.shadowOpacity = 0.5
        ishaKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        ishaKetigaButton.clipsToBounds = true
        ishaKetigaButton.layer.masksToBounds = false
        
        senseiKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        senseiKetigaButton.layer.shadowRadius = 3
        senseiKetigaButton.layer.shadowOpacity = 0.5
        senseiKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        senseiKetigaButton.clipsToBounds = true
        senseiKetigaButton.layer.masksToBounds = false
        
        kenkyuushaKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kenkyuushaKetigaButton.layer.shadowRadius = 3
        kenkyuushaKetigaButton.layer.shadowOpacity = 0.5
        kenkyuushaKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kenkyuushaKetigaButton.clipsToBounds = true
        kenkyuushaKetigaButton.layer.masksToBounds = false
        
        gakuseiKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        gakuseiKetigaButton.layer.shadowRadius = 3
        gakuseiKetigaButton.layer.shadowOpacity = 0.5
        gakuseiKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        gakuseiKetigaButton.clipsToBounds = true
        gakuseiKetigaButton.layer.masksToBounds = false
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiBenarTigaViewController") as! ProfesiBenarTigaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiSalahTigaViewController") as! ProfesiSalahTigaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func ishaKetigaButton(_ sender: UIButton) {
        ishaKetigaButton.layer.borderWidth = 2
        ishaKetigaButton.layer.borderColor = UIColor.grass.cgColor
        
        senseiKetigaButton.layer.borderWidth = 0.1
        senseiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kenkyuushaKetigaButton.layer.borderWidth = 0.1
        kenkyuushaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        gakuseiKetigaButton.layer.borderWidth = 0.1
        gakuseiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func senseiKetigaButton(_ sender: UIButton) {
        senseiKetigaButton.layer.borderWidth = 2
        senseiKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        ishaKetigaButton.layer.borderWidth = 0.1
        ishaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kenkyuushaKetigaButton.layer.borderWidth = 0.1
        kenkyuushaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        gakuseiKetigaButton.layer.borderWidth = 0.1
        gakuseiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func kenkyuushaKetigaButton(_ sender: UIButton) {
        kenkyuushaKetigaButton.layer.borderWidth = 2
        kenkyuushaKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        ishaKetigaButton.layer.borderWidth = 0.1
        ishaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        senseiKetigaButton.layer.borderWidth = 0.1
        senseiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        gakuseiKetigaButton.layer.borderWidth = 0.1
        gakuseiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func gakuseiKetigaButton(_ sender: UIButton) {
        gakuseiKetigaButton.layer.borderWidth = 2
        gakuseiKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        ishaKetigaButton.layer.borderWidth = 0.1
        ishaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        senseiKetigaButton.layer.borderWidth = 0.1
        senseiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kenkyuushaKetigaButton.layer.borderWidth = 0.1
        kenkyuushaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKetigaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class ProfesiKeempat: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var pelayanKeempatButton: UIButton!
    @IBOutlet weak var perawatKeempatButton: UIButton!
    @IBOutlet weak var pembantuKeempatButton: UIButton!
    @IBOutlet weak var kokiKeempatButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        pelayanKeempatButton.layer.cornerRadius = 12
        pelayanKeempatButton.layer.borderWidth = 0.1
        pelayanKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        perawatKeempatButton.layer.cornerRadius = 12
        perawatKeempatButton.layer.borderWidth = 0.1
        perawatKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        pembantuKeempatButton.layer.cornerRadius = 12
        pembantuKeempatButton.layer.borderWidth = 0.1
        pembantuKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        kokiKeempatButton.layer.cornerRadius = 12
        kokiKeempatButton.layer.borderWidth = 0.1
        kokiKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        pelayanKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        pelayanKeempatButton.layer.shadowRadius = 3
        pelayanKeempatButton.layer.shadowOpacity = 0.5
        pelayanKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        pelayanKeempatButton.clipsToBounds = true
        pelayanKeempatButton.layer.masksToBounds = false
               
        perawatKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        perawatKeempatButton.layer.shadowRadius = 3
        perawatKeempatButton.layer.shadowOpacity = 0.5
        perawatKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perawatKeempatButton.clipsToBounds = true
        perawatKeempatButton.layer.masksToBounds = false
            
        pembantuKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        pembantuKeempatButton.layer.shadowRadius = 3
        pembantuKeempatButton.layer.shadowOpacity = 0.5
        pembantuKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        pembantuKeempatButton.clipsToBounds = true
        pembantuKeempatButton.layer.masksToBounds = false
               
        kokiKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        kokiKeempatButton.layer.shadowRadius = 3
        kokiKeempatButton.layer.shadowOpacity = 0.5
        kokiKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kokiKeempatButton.clipsToBounds = true
        kokiKeempatButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiBenarEmpatViewController") as! ProfesiBenarEmpatViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiSalahEmpatViewController") as! ProfesiSalahEmpatViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func pelayanKeempatButton(_ sender: UIButton) {
        pelayanKeempatButton.layer.borderWidth = 2
        pelayanKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        perawatKeempatButton.layer.borderWidth = 0.1
        perawatKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pembantuKeempatButton.layer.borderWidth = 0.1
        pembantuKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kokiKeempatButton.layer.borderWidth = 0.1
        kokiKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func perawatKeempatButton(_ sender: UIButton) {
        perawatKeempatButton.layer.borderWidth = 2
        perawatKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        pelayanKeempatButton.layer.borderWidth = 0.1
        pelayanKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pembantuKeempatButton.layer.borderWidth = 0.1
        pembantuKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kokiKeempatButton.layer.borderWidth = 0.1
        kokiKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func pembantuKeempatButton(_ sender: UIButton) {
        pembantuKeempatButton.layer.borderWidth = 2
        pembantuKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        pelayanKeempatButton.layer.borderWidth = 0.1
        pelayanKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        perawatKeempatButton.layer.borderWidth = 0.1
        perawatKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kokiKeempatButton.layer.borderWidth = 0.1
        kokiKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func kokiKeempatButton(_ sender: UIButton) {
        kokiKeempatButton.layer.borderWidth = 2
        kokiKeempatButton.layer.borderColor = UIColor.grass.cgColor
        
        pelayanKeempatButton.layer.borderWidth = 0.1
        pelayanKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        perawatKeempatButton.layer.borderWidth = 0.1
        perawatKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pembantuKeempatButton.layer.borderWidth = 0.1
        pembantuKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func keluarKeempatButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class ProfesiKelima: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var kaishainKelimaButton: UIButton!
    @IBOutlet weak var ishaKelimaButton: UIButton!
    @IBOutlet weak var enjiniaKelimaButton: UIButton!
    @IBOutlet weak var meidoKelimaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        kaishainKelimaButton.layer.cornerRadius = 12
        kaishainKelimaButton.layer.borderWidth = 0.1
        kaishainKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        ishaKelimaButton.layer.cornerRadius = 12
        ishaKelimaButton.layer.borderWidth = 0.1
        ishaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        enjiniaKelimaButton.layer.cornerRadius = 12
        enjiniaKelimaButton.layer.borderWidth = 0.1
        enjiniaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        meidoKelimaButton.layer.cornerRadius = 12
        meidoKelimaButton.layer.borderWidth = 0.1
        meidoKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        kaishainKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kaishainKelimaButton.layer.shadowRadius = 3
        kaishainKelimaButton.layer.shadowOpacity = 0.5
        kaishainKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kaishainKelimaButton.clipsToBounds = true
        kaishainKelimaButton.layer.masksToBounds = false
               
        ishaKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        ishaKelimaButton.layer.shadowRadius = 3
        ishaKelimaButton.layer.shadowOpacity = 0.5
        ishaKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        ishaKelimaButton.clipsToBounds = true
        ishaKelimaButton.layer.masksToBounds = false
               
        enjiniaKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        enjiniaKelimaButton.layer.shadowRadius = 3
        enjiniaKelimaButton.layer.shadowOpacity = 0.5
        enjiniaKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        enjiniaKelimaButton.clipsToBounds = true
        enjiniaKelimaButton.layer.masksToBounds = false
               
        meidoKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        meidoKelimaButton.layer.shadowRadius = 3
        meidoKelimaButton.layer.shadowOpacity = 0.5
        meidoKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        meidoKelimaButton.clipsToBounds = true
        meidoKelimaButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiBenarLimaViewController") as! ProfesiBenarLimaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiSalahLimaViewController") as! ProfesiSalahLimaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func kaishainKelimaButton(_ sender: UIButton) {
        kaishainKelimaButton.layer.borderWidth = 2
        kaishainKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        ishaKelimaButton.layer.borderWidth = 0.1
        ishaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        enjiniaKelimaButton.layer.borderWidth = 0.1
        enjiniaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        meidoKelimaButton.layer.borderWidth = 0.1
        meidoKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func ishaKelimaButton(_ sender: UIButton) {
        ishaKelimaButton.layer.borderWidth = 2
        ishaKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kaishainKelimaButton.layer.borderWidth = 0.1
        kaishainKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        enjiniaKelimaButton.layer.borderWidth = 0.1
        enjiniaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        meidoKelimaButton.layer.borderWidth = 0.1
        meidoKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func enjiniaKelimaButton(_ sender: UIButton) {
        enjiniaKelimaButton.layer.borderWidth = 2
        enjiniaKelimaButton.layer.borderColor = UIColor.grass.cgColor
        
        kaishainKelimaButton.layer.borderWidth = 0.1
        kaishainKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ishaKelimaButton.layer.borderWidth = 0.1
        ishaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        meidoKelimaButton.layer.borderWidth = 0.1
        meidoKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func meidoKelimaButton(_ sender: UIButton) {
        meidoKelimaButton.layer.borderWidth = 2
        meidoKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kaishainKelimaButton.layer.borderWidth = 0.1
        kaishainKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ishaKelimaButton.layer.borderWidth = 0.1
        ishaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        enjiniaKelimaButton.layer.borderWidth = 0.1
        enjiniaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    

    @IBAction func keluarKelimaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class ProfesiKeenam: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var pegawaiKeenamButton: UIButton!
    @IBOutlet weak var pelajarKeenamButton: UIButton!
    @IBOutlet weak var polisiKeenamButton: UIButton!
    @IBOutlet weak var enginerKeenamButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        pegawaiKeenamButton.layer.cornerRadius = 12
        pegawaiKeenamButton.layer.borderWidth = 0.1
        pegawaiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        pelajarKeenamButton.layer.cornerRadius = 12
        pelajarKeenamButton.layer.borderWidth = 0.1
        pelajarKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        polisiKeenamButton.layer.cornerRadius = 12
        polisiKeenamButton.layer.borderWidth = 0.1
        polisiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        enginerKeenamButton.layer.cornerRadius = 12
        enginerKeenamButton.layer.borderWidth = 0.1
        enginerKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        pegawaiKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        pegawaiKeenamButton.layer.shadowRadius = 3
        pegawaiKeenamButton.layer.shadowOpacity = 0.5
        pegawaiKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        pegawaiKeenamButton.clipsToBounds = true
        pegawaiKeenamButton.layer.masksToBounds = false
               
        pelajarKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        pelajarKeenamButton.layer.shadowRadius = 3
        pelajarKeenamButton.layer.shadowOpacity = 0.5
        pelajarKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        pelajarKeenamButton.clipsToBounds = true
        pelajarKeenamButton.layer.masksToBounds = false
               
        polisiKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        polisiKeenamButton.layer.shadowRadius = 3
        polisiKeenamButton.layer.shadowOpacity = 0.5
        polisiKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        polisiKeenamButton.clipsToBounds = true
        polisiKeenamButton.layer.masksToBounds = false
               
        enginerKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        enginerKeenamButton.layer.shadowRadius = 3
        enginerKeenamButton.layer.shadowOpacity = 0.5
        enginerKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        enginerKeenamButton.clipsToBounds = true
        enginerKeenamButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiBenarEnamViewController") as! ProfesiBenarEnamViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiSalahEnamViewController") as! ProfesiSalahEnamViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func pegawaiKeenamButton(_ sender: UIButton) {
        pegawaiKeenamButton.layer.borderWidth = 2
        pegawaiKeenamButton.layer.borderColor = UIColor.grass.cgColor
        
        pelajarKeenamButton.layer.borderWidth = 0.1
        pelajarKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        polisiKeenamButton.layer.borderWidth = 0.1
        polisiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        enginerKeenamButton.layer.borderWidth = 0.1
        enginerKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func pelajarKeenamButton(_ sender: UIButton) {
        pelajarKeenamButton.layer.borderWidth = 2
        pelajarKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        pegawaiKeenamButton.layer.borderWidth = 0.1
        pegawaiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        polisiKeenamButton.layer.borderWidth = 0.1
        polisiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        enginerKeenamButton.layer.borderWidth = 0.1
        enginerKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func polisiKeenamButton(_ sender: UIButton) {
        polisiKeenamButton.layer.borderWidth = 2
        polisiKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        pegawaiKeenamButton.layer.borderWidth = 0.1
        pegawaiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pelajarKeenamButton.layer.borderWidth = 0.1
        pelajarKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        enginerKeenamButton.layer.borderWidth = 0.1
        enginerKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func enginerKeenamButton(_ sender: UIButton) {
        enginerKeenamButton.layer.borderWidth = 2
        enginerKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        pegawaiKeenamButton.layer.borderWidth = 0.1
        pegawaiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        pelajarKeenamButton.layer.borderWidth = 0.1
        pelajarKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        polisiKeenamButton.layer.borderWidth = 0.1
        polisiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKeenamButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class ProfesiKetujuh: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var gakuseiKetujuhButton: UIButton!
    @IBOutlet weak var senseiKetujuhButton: UIButton!
    @IBOutlet weak var keiketsuKetujuhButton: UIButton!
    @IBOutlet weak var ishaKetujuhButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        gakuseiKetujuhButton.layer.cornerRadius = 12
        gakuseiKetujuhButton.layer.borderWidth = 0.1
        gakuseiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                    
        senseiKetujuhButton.layer.cornerRadius = 12
        senseiKetujuhButton.layer.borderWidth = 0.1
        senseiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        keiketsuKetujuhButton.layer.cornerRadius = 12
        keiketsuKetujuhButton.layer.borderWidth = 0.1
        keiketsuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        ishaKetujuhButton.layer.cornerRadius = 12
        ishaKetujuhButton.layer.borderWidth = 0.1
        ishaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        gakuseiKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        gakuseiKetujuhButton.layer.shadowRadius = 3
        gakuseiKetujuhButton.layer.shadowOpacity = 0.5
        gakuseiKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        gakuseiKetujuhButton.clipsToBounds = true
        gakuseiKetujuhButton.layer.masksToBounds = false
               
        senseiKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        senseiKetujuhButton.layer.shadowRadius = 3
        senseiKetujuhButton.layer.shadowOpacity = 0.5
        senseiKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        senseiKetujuhButton.clipsToBounds = true
        senseiKetujuhButton.layer.masksToBounds = false
               
        keiketsuKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        keiketsuKetujuhButton.layer.shadowRadius = 3
        keiketsuKetujuhButton.layer.shadowOpacity = 0.5
        keiketsuKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        keiketsuKetujuhButton.clipsToBounds = true
        keiketsuKetujuhButton.layer.masksToBounds = false
               
        ishaKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        ishaKetujuhButton.layer.shadowRadius = 3
        ishaKetujuhButton.layer.shadowOpacity = 0.5
        ishaKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        ishaKetujuhButton.clipsToBounds = true
        ishaKetujuhButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiBenarTujuhViewController") as! ProfesiBenarTujuhViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiSalahTujuhViewController") as! ProfesiSalahTujuhViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    
    @IBAction func gakuseiKetujuhButton(_ sender: UIButton) {
        gakuseiKetujuhButton.layer.borderWidth = 2
        gakuseiKetujuhButton.layer.borderColor = UIColor.grass.cgColor
        
        senseiKetujuhButton.layer.borderWidth = 0.1
        senseiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        keiketsuKetujuhButton.layer.borderWidth = 0.1
        keiketsuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ishaKetujuhButton.layer.borderWidth = 0.1
        ishaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
    
        sender.pulseButton()
    
        self.benar()
        
    }
    
    @IBAction func senseiKetujuhButton(_ sender: UIButton) {
        senseiKetujuhButton.layer.borderWidth = 2
        senseiKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        gakuseiKetujuhButton.layer.borderWidth = 0.1
        gakuseiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        keiketsuKetujuhButton.layer.borderWidth = 0.1
        keiketsuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ishaKetujuhButton.layer.borderWidth = 0.1
        ishaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keiketsuKetujuhButton(_ sender: UIButton) {
        keiketsuKetujuhButton.layer.borderWidth = 2
        keiketsuKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        gakuseiKetujuhButton.layer.borderWidth = 0.1
        gakuseiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        senseiKetujuhButton.layer.borderWidth = 0.1
        senseiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ishaKetujuhButton.layer.borderWidth = 0.1
        ishaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func ishaKetujuhButton(_ sender: UIButton) {
        ishaKetujuhButton.layer.borderWidth = 2
        ishaKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        gakuseiKetujuhButton.layer.borderWidth = 0.1
        gakuseiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        senseiKetujuhButton.layer.borderWidth = 0.1
        senseiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        keiketsuKetujuhButton.layer.borderWidth = 0.1
        keiketsuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKetujuh(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class ProfesiKedelapan: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var perawatKedelapanButton: UIButton!
    @IBOutlet weak var guruKedelapanButton: UIButton!
    @IBOutlet weak var penelitiKedelapanButton: UIButton!
    @IBOutlet weak var dokterKedelapanButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        perawatKedelapanButton.layer.cornerRadius = 12
        perawatKedelapanButton.layer.borderWidth = 0.1
        perawatKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        guruKedelapanButton.layer.cornerRadius = 12
        guruKedelapanButton.layer.borderWidth = 0.1
        guruKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        penelitiKedelapanButton.layer.cornerRadius = 12
        penelitiKedelapanButton.layer.borderWidth = 0.1
        penelitiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        dokterKedelapanButton.layer.cornerRadius = 12
        dokterKedelapanButton.layer.borderWidth = 0.1
        dokterKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        perawatKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        perawatKedelapanButton.layer.shadowRadius = 3
        perawatKedelapanButton.layer.shadowOpacity = 0.5
        perawatKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perawatKedelapanButton.clipsToBounds = true
        perawatKedelapanButton.layer.masksToBounds = false
               
        guruKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        guruKedelapanButton.layer.shadowRadius = 3
        guruKedelapanButton.layer.shadowOpacity = 0.5
        guruKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        guruKedelapanButton.clipsToBounds = true
        guruKedelapanButton.layer.masksToBounds = false
               
        penelitiKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        penelitiKedelapanButton.layer.shadowRadius = 3
        penelitiKedelapanButton.layer.shadowOpacity = 0.5
        penelitiKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        penelitiKedelapanButton.clipsToBounds = true
        penelitiKedelapanButton.layer.masksToBounds = false
               
        dokterKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        dokterKedelapanButton.layer.shadowRadius = 3
        dokterKedelapanButton.layer.shadowOpacity = 0.5
        dokterKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        dokterKedelapanButton.clipsToBounds = true
        dokterKedelapanButton.layer.masksToBounds = false
        
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiBenarDelapanViewController") as! ProfesiBenarDelapanViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiSalahDelapanViewController") as! ProfesiSalahDelapanViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func perawatKedelapanButton(_ sender: UIButton) {
        perawatKedelapanButton.layer.borderWidth = 2
        perawatKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        guruKedelapanButton.layer.borderWidth = 0.1
        guruKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        penelitiKedelapanButton.layer.borderWidth = 0.1
        penelitiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        dokterKedelapanButton.layer.borderWidth = 0.1
        dokterKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func guruKedelapanButton(_ sender: UIButton) {
        guruKedelapanButton.layer.borderWidth = 2
        guruKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        perawatKedelapanButton.layer.borderWidth = 0.1
        perawatKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        penelitiKedelapanButton.layer.borderWidth = 0.1
        penelitiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        dokterKedelapanButton.layer.borderWidth = 0.1
        dokterKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func penelitiKedelapanButton(_ sender: UIButton) {
        penelitiKedelapanButton.layer.borderWidth = 2
        penelitiKedelapanButton.layer.borderColor = UIColor.grass.cgColor
        
        perawatKedelapanButton.layer.borderWidth = 0.1
        perawatKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        guruKedelapanButton.layer.borderWidth = 0.1
        guruKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        dokterKedelapanButton.layer.borderWidth = 0.1
        dokterKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func dokterKedelapanButton(_ sender: UIButton) {
        dokterKedelapanButton.layer.borderWidth = 2
        dokterKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        perawatKedelapanButton.layer.borderWidth = 0.1
        perawatKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        guruKedelapanButton.layer.borderWidth = 0.1
        guruKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        penelitiKedelapanButton.layer.borderWidth = 0.1
        penelitiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    
    @IBAction func keluarKedelapanButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class ProfesiKesembilan: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var enjiniaKesembilanButton: UIButton!
    @IBOutlet weak var gakuseiKesembilanButton: UIButton!
    @IBOutlet weak var senseiKesembilanButton: UIButton!
    @IBOutlet weak var meidoKesembilanButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    
    
    var enjiniaAudioPlayer = AVAudioPlayer()
    var gakuseiAudioPlayer = AVAudioPlayer()
    var senseiAudioPlayer = AVAudioPlayer()
    var meidoAudioPlayer = AVAudioPlayer()
    var profesiSoundAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            profesiSoundAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "profesi-sound", ofType: "m4a")!))
            profesiSoundAudioPlayer.prepareToPlay()
            
            enjiniaAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "enjinia", ofType: "m4a")!))
            enjiniaAudioPlayer.prepareToPlay()
            
            gakuseiAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "gakusei", ofType: "m4a")!))
            gakuseiAudioPlayer.prepareToPlay()
            
            senseiAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sensei", ofType: "m4a")!))
            senseiAudioPlayer.prepareToPlay()
            
            meidoAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "meido", ofType: "m4a")!))
            meidoAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        enjiniaKesembilanButton.layer.cornerRadius = 12
        enjiniaKesembilanButton.layer.borderWidth = 0.1
        enjiniaKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        gakuseiKesembilanButton.layer.cornerRadius = 12
        gakuseiKesembilanButton.layer.borderWidth = 0.1
        gakuseiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        senseiKesembilanButton.layer.cornerRadius = 12
        senseiKesembilanButton.layer.borderWidth = 0.1
        senseiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        meidoKesembilanButton.layer.cornerRadius = 12
        meidoKesembilanButton.layer.borderWidth = 0.1
        meidoKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        soundButton.layer.cornerRadius = 8
        soundButton.layer.borderWidth = 0.1
        soundButton.layer.borderColor = UIColor.oceanBlue.cgColor
        
        // Shadow button
        enjiniaKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        enjiniaKesembilanButton.layer.shadowRadius = 3
        enjiniaKesembilanButton.layer.shadowOpacity = 0.5
        enjiniaKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        enjiniaKesembilanButton.clipsToBounds = true
        enjiniaKesembilanButton.layer.masksToBounds = false
               
        gakuseiKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        gakuseiKesembilanButton.layer.shadowRadius = 3
        gakuseiKesembilanButton.layer.shadowOpacity = 0.5
        gakuseiKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        gakuseiKesembilanButton.clipsToBounds = true
        gakuseiKesembilanButton.layer.masksToBounds = false
               
        senseiKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        senseiKesembilanButton.layer.shadowRadius = 3
        senseiKesembilanButton.layer.shadowOpacity = 0.5
        senseiKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        senseiKesembilanButton.clipsToBounds = true
        senseiKesembilanButton.layer.masksToBounds = false
               
        meidoKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        meidoKesembilanButton.layer.shadowRadius = 3
        meidoKesembilanButton.layer.shadowOpacity = 0.5
        meidoKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        meidoKesembilanButton.clipsToBounds = true
        meidoKesembilanButton.layer.masksToBounds = false
        
        soundButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        soundButton.layer.shadowRadius = 3
        soundButton.layer.shadowOpacity = 0.5
        soundButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        soundButton.clipsToBounds = true
        soundButton.layer.masksToBounds = false
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiBenarSembilanViewController") as! ProfesiBenarSembilanViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiSalahSembilanViewController") as! ProfesiSalahSembilanViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func enjiniaKesembilanButton(_ sender: UIButton) {
        enjiniaKesembilanButton.layer.borderWidth = 2
        enjiniaKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        gakuseiKesembilanButton.layer.borderWidth = 0.1
        gakuseiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        senseiKesembilanButton.layer.borderWidth = 0.1
        senseiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        meidoKesembilanButton.layer.borderWidth = 0.1
        meidoKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        enjiniaAudioPlayer.play()
        
    }
    
    @IBAction func gakuseiKesembilanButton(_ sender: UIButton) {
        gakuseiKesembilanButton.layer.borderWidth = 2
        gakuseiKesembilanButton.layer.borderColor = UIColor.grass.cgColor
        
        enjiniaKesembilanButton.layer.borderWidth = 0.1
        enjiniaKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        senseiKesembilanButton.layer.borderWidth = 0.1
        senseiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        meidoKesembilanButton.layer.borderWidth = 0.1
        meidoKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        gakuseiAudioPlayer.play()
        
    }
    
    @IBAction func senseiKesembilanButton(_ sender: UIButton) {
        senseiKesembilanButton.layer.borderWidth = 2
        senseiKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        enjiniaKesembilanButton.layer.borderWidth = 0.1
        enjiniaKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        gakuseiKesembilanButton.layer.borderWidth = 0.1
        gakuseiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        meidoKesembilanButton.layer.borderWidth = 0.1
        meidoKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        senseiAudioPlayer.play()
        
    }
    
    @IBAction func meidoKesembilanButton(_ sender: UIButton) {
        meidoKesembilanButton.layer.borderWidth = 2
        meidoKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        enjiniaKesembilanButton.layer.borderWidth = 0.1
        enjiniaKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        gakuseiKesembilanButton.layer.borderWidth = 0.1
        gakuseiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        senseiKesembilanButton.layer.borderWidth = 0.1
        senseiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        meidoAudioPlayer.play()
        
    }
    
    @IBAction func keluarKesembilanButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
        
    }
    
    @IBAction func soundButton(_ sender: UIButton) {
        sender.pulseButton()
        
        profesiSoundAudioPlayer.play()
    }
    
    
}

class ProfesiKesepuluh: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var pembantuKesepuluhButton: UIButton!
    @IBOutlet weak var penelitiKesepuluhButton: UIButton!
    @IBOutlet weak var polisiKesepuluhButton: UIButton!
    @IBOutlet weak var enginerKesepuluhButton: UIButton!
    
    var meidoAudioPlayer = AVAudioPlayer()
    var kenkyushaAudioPlayer = AVAudioPlayer()
    var keisatsuAudioPlayer = AVAudioPlayer()
    var enjiniaAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            meidoAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "meido", ofType: "m4a")!))
            meidoAudioPlayer.prepareToPlay()
            
            kenkyushaAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "kenkyusha", ofType: "m4a")!))
            kenkyushaAudioPlayer.prepareToPlay()
            
            keisatsuAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "keisatsu", ofType: "m4a")!))
            keisatsuAudioPlayer.prepareToPlay()
            
            enjiniaAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "enjinia", ofType: "m4a")!))
            enjiniaAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        pembantuKesepuluhButton.layer.cornerRadius = 12
        pembantuKesepuluhButton.layer.borderWidth = 0.1
        pembantuKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        penelitiKesepuluhButton.layer.cornerRadius = 12
        penelitiKesepuluhButton.layer.borderWidth = 0.1
        penelitiKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        polisiKesepuluhButton.layer.cornerRadius = 12
        polisiKesepuluhButton.layer.borderWidth = 0.1
        polisiKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        enginerKesepuluhButton.layer.cornerRadius = 12
        enginerKesepuluhButton.layer.borderWidth = 0.1
        enginerKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        pembantuKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        pembantuKesepuluhButton.layer.shadowRadius = 3
        pembantuKesepuluhButton.layer.shadowOpacity = 0.5
        pembantuKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        pembantuKesepuluhButton.clipsToBounds = true
        pembantuKesepuluhButton.layer.masksToBounds = false
               
        penelitiKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        penelitiKesepuluhButton.layer.shadowRadius = 3
        penelitiKesepuluhButton.layer.shadowOpacity = 0.5
        penelitiKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        penelitiKesepuluhButton.clipsToBounds = true
        penelitiKesepuluhButton.layer.masksToBounds = false
               
        polisiKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        polisiKesepuluhButton.layer.shadowRadius = 3
        polisiKesepuluhButton.layer.shadowOpacity = 0.5
        polisiKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        polisiKesepuluhButton.clipsToBounds = true
        polisiKesepuluhButton.layer.masksToBounds = false
               
        enginerKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        enginerKesepuluhButton.layer.shadowRadius = 3
        enginerKesepuluhButton.layer.shadowOpacity = 0.5
        enginerKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        enginerKesepuluhButton.clipsToBounds = true
        enginerKesepuluhButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiBenarSepuluhViewController") as! ProfesiBenarSepuluhViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiSalahSepuluhViewController") as! ProfesiSalahSepuluhViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func pembantuKesepuluhButton(_ sender: UIButton) {
        pembantuKesepuluhButton.layer.borderWidth = 2
        pembantuKesepuluhButton.layer.borderColor = UIColor.grass.cgColor
        
        penelitiKesepuluhButton.layer.borderWidth = 0.1
        penelitiKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        polisiKesepuluhButton.layer.borderWidth = 0.1
        polisiKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        enginerKesepuluhButton.layer.borderWidth = 0.1
        enginerKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        meidoAudioPlayer.play()
        
    }
    
    @IBAction func penelitiKesepuluhButton(_ sender: UIButton) {
        penelitiKesepuluhButton.layer.borderWidth = 2
        penelitiKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        pembantuKesepuluhButton.layer.borderWidth = 0.1
        pembantuKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        polisiKesepuluhButton.layer.borderWidth = 0.1
        polisiKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        enginerKesepuluhButton.layer.borderWidth = 0.1
        enginerKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        kenkyushaAudioPlayer.play()
        
    }
    
    @IBAction func polisiKesepuluhButton(_ sender: UIButton) {
        polisiKesepuluhButton.layer.borderWidth = 2
        polisiKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        pembantuKesepuluhButton.layer.borderWidth = 0.1
        pembantuKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        penelitiKesepuluhButton.layer.borderWidth = 0.1
        penelitiKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        enginerKesepuluhButton.layer.borderWidth = 0.1
        enginerKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        keisatsuAudioPlayer.play()
        
    }
    
    @IBAction func enginerKesepuluhButton(_ sender: UIButton) {
        enginerKesepuluhButton.layer.borderWidth = 2
        enginerKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        pembantuKesepuluhButton.layer.borderWidth = 0.1
        pembantuKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        penelitiKesepuluhButton.layer.borderWidth = 0.1
        penelitiKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        polisiKesepuluhButton.layer.borderWidth = 0.1
        polisiKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        enjiniaAudioPlayer.play()
        
    }
    
    @IBAction func keluarKesepuluh(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class ProfesiCoinViewController: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var coinButton: UIButton!
    
    var badgeAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            badgeAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "badge", ofType: "mp3")!))
            badgeAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        coinButton.layer.cornerRadius = 12
        
        // Shadow button
        coinButton.layer.shadowColor = UIColor.pink.cgColor
        coinButton.layer.shadowRadius = 3
        coinButton.layer.shadowOpacity = 0.5
        coinButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        coinButton.clipsToBounds = true
        coinButton.layer.masksToBounds = false
        
        badgeAudioPlayer.play()
        
    }

    @IBAction func coinButton(_ sender: UIButton) {
        sender.pulseButton()
        
        let coinViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "ProfesiDiamondViewController") as! ProfesiDiamondViewController
        
        self.addChild(coinViewController)
        coinViewController.view.frame = self.view.frame
        self.view.addSubview(coinViewController.view)
        coinViewController.didMove(toParent: self)
        
        self.popUp()
        
        // Mengambil data dari db
        let db = Firestore.firestore()
        guard let userUid = Auth.auth().currentUser?.uid else { return }
        
        db.collection("users").document(userUid).addSnapshotListener { (snapshot, err) in
            
        let koin = snapshot?.data()!["coins"] as? Int
        //let nilai = "\(koin)" + 100 as! Int
            
        // Update data ke db
        
        }
        
        
        
    }
}

class ProfesiDiamondViewController: ProfesiViewController {
    
    // Variable
    @IBOutlet weak var diamondButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        diamondButton.layer.cornerRadius = 12
        
        // Shadow button
        diamondButton.layer.shadowColor = UIColor.pink.cgColor
        diamondButton.layer.shadowRadius = 3
        diamondButton.layer.shadowOpacity = 0.5
        diamondButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        diamondButton.clipsToBounds = true
        diamondButton.layer.masksToBounds = false
        
    }

    @IBAction func diamondButton(_ sender: UIButton) {
        sender.pulseButton()
        
        let diamondViewController = UIStoryboard(name: "Profesi", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(diamondViewController)
        diamondViewController.view.frame = self.view.frame
        self.view.addSubview(diamondViewController.view)
        diamondViewController.didMove(toParent: self)
    }
}
