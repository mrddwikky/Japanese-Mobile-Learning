//
//  KatakanaViewController.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 21/01/20.
//  Copyright © 2020 Dwikky Mardianto. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class KatakanaViewController: UIViewController {

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

class KatakanaPertama: KatakanaViewController {
    
    @IBOutlet weak var aPertamaButton: UIButton!
    @IBOutlet weak var kiPertamaButton: UIButton!
    @IBOutlet weak var kaPertamaButton: UIButton!
    @IBOutlet weak var iPertamaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        aPertamaButton.layer.cornerRadius = 12
        aPertamaButton.layer.borderWidth = 0.1
        aPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        kiPertamaButton.layer.cornerRadius = 12
        kiPertamaButton.layer.borderWidth = 0.1
        kiPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        kaPertamaButton.layer.cornerRadius = 12
        kaPertamaButton.layer.borderWidth = 0.1
        kaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        iPertamaButton.layer.cornerRadius = 12
        iPertamaButton.layer.borderWidth = 0.1
        iPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        // Shadow button
        aPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        aPertamaButton.layer.shadowRadius = 3
        aPertamaButton.layer.shadowOpacity = 0.5
        aPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        aPertamaButton.clipsToBounds = true
        aPertamaButton.layer.masksToBounds = false
            
        kiPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kiPertamaButton.layer.shadowRadius = 3
        kiPertamaButton.layer.shadowOpacity = 0.5
        kiPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kiPertamaButton.clipsToBounds = true
        kiPertamaButton.layer.masksToBounds = false
            
        kaPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kaPertamaButton.layer.shadowRadius = 3
        kaPertamaButton.layer.shadowOpacity = 0.5
        kaPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kaPertamaButton.clipsToBounds = true
        kaPertamaButton.layer.masksToBounds = false
            
        iPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        iPertamaButton.layer.shadowRadius = 3
        iPertamaButton.layer.shadowOpacity = 0.5
        iPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        iPertamaButton.clipsToBounds = true
        iPertamaButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaBenarSatuViewController") as! KatakanaBenarSatuViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaSalahSatuViewController") as! KatakanaSalahSatuViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func aPertamaButton(_ sender: UIButton) {
        aPertamaButton.layer.borderWidth = 2
        aPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
                   
        kiPertamaButton.layer.borderWidth = 0.1
        kiPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        kaPertamaButton.layer.borderWidth = 0.1
        kaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor

        iPertamaButton.layer.borderWidth = 0.1
        iPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        sender.pulseButton()
               
        self.salah()    }
    
    @IBAction func kiPertamaButton(_ sender: UIButton) {
        kiPertamaButton.layer.borderWidth = 2
        kiPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        aPertamaButton.layer.borderWidth = 0.1
        aPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kaPertamaButton.layer.borderWidth = 0.1
        kaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        iPertamaButton.layer.borderWidth = 0.1
        iPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }

    @IBAction func kaPertamaButton(_ sender: UIButton) {
        kaPertamaButton.layer.borderWidth = 2
        kaPertamaButton.layer.borderColor = UIColor.grass.cgColor
            
        aPertamaButton.layer.borderWidth = 0.1
        aPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        kiPertamaButton.layer.borderWidth = 0.1
        kiPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        iPertamaButton.layer.borderWidth = 0.1
        iPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        sender.pulseButton()
        
        self.benar()
    }
    
    @IBAction func iPertamaButton(_ sender: UIButton) {
        iPertamaButton.layer.borderWidth = 2
        iPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
            
        aPertamaButton.layer.borderWidth = 0.1
        aPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        kiPertamaButton.layer.borderWidth = 0.1
        kiPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        kaPertamaButton.layer.borderWidth = 0.1
        kaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func keluarPertamaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    
    }
}

class KatakanaKedua: KatakanaViewController {
    
    // Variable
    @IBOutlet weak var iKeduaButton: UIButton!
    @IBOutlet weak var kiKeduaButton: UIButton!
    @IBOutlet weak var reKeduaButton: UIButton!
    @IBOutlet weak var aKeduaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        iKeduaButton.layer.cornerRadius = 12
        iKeduaButton.layer.borderWidth = 0.1
        iKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kiKeduaButton.layer.cornerRadius = 12
        kiKeduaButton.layer.borderWidth = 0.1
        kiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        reKeduaButton.layer.cornerRadius = 12
        reKeduaButton.layer.borderWidth = 0.1
        reKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        aKeduaButton.layer.cornerRadius = 12
        aKeduaButton.layer.borderWidth = 0.1
        aKeduaButton.layer.borderColor = UIColor.lightGray.cgColor

        // Shadow button
        iKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        iKeduaButton.layer.shadowRadius = 3
        iKeduaButton.layer.shadowOpacity = 0.5
        iKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        iKeduaButton.clipsToBounds = true
        iKeduaButton.layer.masksToBounds = false
        
        kiKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kiKeduaButton.layer.shadowRadius = 3
        kiKeduaButton.layer.shadowOpacity = 0.5
        kiKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kiKeduaButton.clipsToBounds = true
        kiKeduaButton.layer.masksToBounds = false
        
        reKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        reKeduaButton.layer.shadowRadius = 3
        reKeduaButton.layer.shadowOpacity = 0.5
        reKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        reKeduaButton.clipsToBounds = true
        reKeduaButton.layer.masksToBounds = false
        
        aKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        aKeduaButton.layer.shadowRadius = 3
        aKeduaButton.layer.shadowOpacity = 0.5
        aKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        aKeduaButton.clipsToBounds = true
        aKeduaButton.layer.masksToBounds = false
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaBenarDuaViewController") as! KatakanaBenarDuaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaSalahDuaViewController") as! KatakanaSalahDuaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func iKeduaButton(_ sender: UIButton) {
        iKeduaButton.layer.borderWidth = 2
        iKeduaButton.layer.borderColor = UIColor.grass.cgColor
        
        kiKeduaButton.layer.borderWidth = 0.1
        kiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        reKeduaButton.layer.borderWidth = 0.1
        reKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        aKeduaButton.layer.borderWidth = 0.1
        aKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
    }
    
    @IBAction func kiKeduaButton(_ sender: UIButton) {
        kiKeduaButton.layer.borderWidth = 2
        kiKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        iKeduaButton.layer.borderWidth = 0.1
        iKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        reKeduaButton.layer.borderWidth = 0.1
        reKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        reKeduaButton.layer.borderWidth = 0.1
        reKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func reKeduaButton(_ sender: UIButton) {
        reKeduaButton.layer.borderWidth = 2
        reKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        iKeduaButton.layer.borderWidth = 0.1
        iKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kiKeduaButton.layer.borderWidth = 0.1
        kiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        reKeduaButton.layer.borderWidth = 0.1
        reKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func aKeduaButton(_ sender: UIButton) {
        aKeduaButton.layer.borderWidth = 2
        aKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
                   
        iKeduaButton.layer.borderWidth = 0.1
        iKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kiKeduaButton.layer.borderWidth = 0.1
        kiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        reKeduaButton.layer.borderWidth = 0.1
        reKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func keluarKeduaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class KatakanaKetiga: KatakanaViewController {
    
    // Variable
    @IBOutlet weak var toiletKetigaButton: UIButton!
    @IBOutlet weak var kameraKetigaButton: UIButton!
    @IBOutlet weak var rotiKetigaButton: UIButton!
    @IBOutlet weak var televisiKetigaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        toiletKetigaButton.layer.cornerRadius = 12
        toiletKetigaButton.layer.borderWidth = 0.1
        toiletKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kameraKetigaButton.layer.cornerRadius = 12
        kameraKetigaButton.layer.borderWidth = 0.1
        kameraKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        rotiKetigaButton.layer.cornerRadius = 12
        rotiKetigaButton.layer.borderWidth = 0.1
        rotiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKetigaButton.layer.cornerRadius = 12
        televisiKetigaButton.layer.borderWidth = 0.1
        televisiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        toiletKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        toiletKetigaButton.layer.shadowRadius = 3
        toiletKetigaButton.layer.shadowOpacity = 0.5
        toiletKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        toiletKetigaButton.clipsToBounds = true
        toiletKetigaButton.layer.masksToBounds = false
        
        kameraKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kameraKetigaButton.layer.shadowRadius = 3
        kameraKetigaButton.layer.shadowOpacity = 0.5
        kameraKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kameraKetigaButton.clipsToBounds = true
        kameraKetigaButton.layer.masksToBounds = false
        
        rotiKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        rotiKetigaButton.layer.shadowRadius = 3
        rotiKetigaButton.layer.shadowOpacity = 0.5
        rotiKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        rotiKetigaButton.clipsToBounds = true
        rotiKetigaButton.layer.masksToBounds = false
        
        televisiKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        televisiKetigaButton.layer.shadowRadius = 3
        televisiKetigaButton.layer.shadowOpacity = 0.5
        televisiKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        televisiKetigaButton.clipsToBounds = true
        televisiKetigaButton.layer.masksToBounds = false
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaBenarTigaViewController") as! KatakanaBenarTigaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaSalahTigaViewController") as! KatakanaSalahTigaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func toiletKetigaButton(_ sender: UIButton) {
        toiletKetigaButton.layer.borderWidth = 2
        toiletKetigaButton.layer.borderColor = UIColor.grass.cgColor
        
        kameraKetigaButton.layer.borderWidth = 0.1
        kameraKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        rotiKetigaButton.layer.borderWidth = 0.1
        rotiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKetigaButton.layer.borderWidth = 0.1
        televisiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()

    }
    
    @IBAction func kameraKetigaButton(_ sender: UIButton) {
        kameraKetigaButton.layer.borderWidth = 2
        kameraKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        toiletKetigaButton.layer.borderWidth = 0.1
        toiletKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        rotiKetigaButton.layer.borderWidth = 0.1
        rotiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKetigaButton.layer.borderWidth = 0.1
        televisiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func rotiKetigaButton(_ sender: UIButton) {
        rotiKetigaButton.layer.borderWidth = 2
        rotiKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        toiletKetigaButton.layer.borderWidth = 0.1
        toiletKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kameraKetigaButton.layer.borderWidth = 0.1
        kameraKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKetigaButton.layer.borderWidth = 0.1
        televisiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func televisiKetigaButton(_ sender: UIButton) {
        televisiKetigaButton.layer.borderWidth = 2
        televisiKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        toiletKetigaButton.layer.borderWidth = 0.1
        toiletKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kameraKetigaButton.layer.borderWidth = 0.1
        kameraKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        rotiKetigaButton.layer.borderWidth = 0.1
        rotiKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func keluarKetigaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class KatakanaKeempat: KatakanaViewController {
    
    // Variable
    @IBOutlet weak var jamKeempatButton: UIButton!
    @IBOutlet weak var kipasKeempatButton: UIButton!
    @IBOutlet weak var radioKeempatButton: UIButton!
    @IBOutlet weak var televisiKeempatButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        jamKeempatButton.layer.cornerRadius = 12
        jamKeempatButton.layer.borderWidth = 0.1
        jamKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        kipasKeempatButton.layer.cornerRadius = 12
        kipasKeempatButton.layer.borderWidth = 0.1
        kipasKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        radioKeempatButton.layer.cornerRadius = 12
        radioKeempatButton.layer.borderWidth = 0.1
        radioKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        televisiKeempatButton.layer.cornerRadius = 12
        televisiKeempatButton.layer.borderWidth = 0.1
        televisiKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        jamKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        jamKeempatButton.layer.shadowRadius = 3
        jamKeempatButton.layer.shadowOpacity = 0.5
        jamKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        jamKeempatButton.clipsToBounds = true
        jamKeempatButton.layer.masksToBounds = false
               
        kipasKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        kipasKeempatButton.layer.shadowRadius = 3
        kipasKeempatButton.layer.shadowOpacity = 0.5
        kipasKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kipasKeempatButton.clipsToBounds = true
        kipasKeempatButton.layer.masksToBounds = false
            
        radioKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        radioKeempatButton.layer.shadowRadius = 3
        radioKeempatButton.layer.shadowOpacity = 0.5
        radioKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        radioKeempatButton.clipsToBounds = true
        radioKeempatButton.layer.masksToBounds = false
               
        televisiKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        televisiKeempatButton.layer.shadowRadius = 3
        televisiKeempatButton.layer.shadowOpacity = 0.5
        televisiKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        televisiKeempatButton.clipsToBounds = true
        televisiKeempatButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaBenarEmpatViewController") as! KatakanaBenarEmpatViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaSalahEmpatViewController") as! KatakanaSalahEmpatViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func jamKeempatButton(_ sender: UIButton) {        jamKeempatButton.layer.borderWidth = 2
        jamKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kipasKeempatButton.layer.borderWidth = 0.1
        kipasKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        radioKeempatButton.layer.borderWidth = 0.1
        radioKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKeempatButton.layer.borderWidth = 0.1
        televisiKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func kipasKeempatButton(_ sender: UIButton) {        kipasKeempatButton.layer.borderWidth = 2
        kipasKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        jamKeempatButton.layer.borderWidth = 0.1
        jamKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        radioKeempatButton.layer.borderWidth = 0.1
        radioKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKeempatButton.layer.borderWidth = 0.1
        televisiKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func radioKeempatButton(_ sender: UIButton) {        radioKeempatButton.layer.borderWidth = 2
        radioKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        jamKeempatButton.layer.borderWidth = 0.1
        jamKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kipasKeempatButton.layer.borderWidth = 0.1
        kipasKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKeempatButton.layer.borderWidth = 0.1
        televisiKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func televisiKeempatButton(_ sender: UIButton) {        televisiKeempatButton.layer.borderWidth = 2
        televisiKeempatButton.layer.borderColor = UIColor.grass.cgColor
        
        jamKeempatButton.layer.borderWidth = 0.1
        jamKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kipasKeempatButton.layer.borderWidth = 0.1
        kipasKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        radioKeempatButton.layer.borderWidth = 0.1
        radioKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
    }
    
    @IBAction func keluarKeempatButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class KatakanaKelima: KatakanaViewController {
    
    // Variable
    @IBOutlet weak var kameraKelimaButton: UIButton!
    @IBOutlet weak var televisiKelimaButton: UIButton!
    @IBOutlet weak var sofaKelimaButton: UIButton!
    @IBOutlet weak var kasurKelimaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        kameraKelimaButton.layer.cornerRadius = 12
        kameraKelimaButton.layer.borderWidth = 0.1
        kameraKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        televisiKelimaButton.layer.cornerRadius = 12
        televisiKelimaButton.layer.borderWidth = 0.1
        televisiKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        sofaKelimaButton.layer.cornerRadius = 12
        sofaKelimaButton.layer.borderWidth = 0.1
        sofaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        kasurKelimaButton.layer.cornerRadius = 12
        kasurKelimaButton.layer.borderWidth = 0.1
        kasurKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        kameraKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kameraKelimaButton.layer.shadowRadius = 3
        kameraKelimaButton.layer.shadowOpacity = 0.5
        kameraKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kameraKelimaButton.clipsToBounds = true
        kameraKelimaButton.layer.masksToBounds = false
               
        televisiKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        televisiKelimaButton.layer.shadowRadius = 3
        televisiKelimaButton.layer.shadowOpacity = 0.5
        televisiKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        televisiKelimaButton.clipsToBounds = true
        televisiKelimaButton.layer.masksToBounds = false
               
        sofaKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        sofaKelimaButton.layer.shadowRadius = 3
        sofaKelimaButton.layer.shadowOpacity = 0.5
        sofaKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        sofaKelimaButton.clipsToBounds = true
        sofaKelimaButton.layer.masksToBounds = false
               
        kasurKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kasurKelimaButton.layer.shadowRadius = 3
        kasurKelimaButton.layer.shadowOpacity = 0.5
        kasurKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kasurKelimaButton.clipsToBounds = true
        kasurKelimaButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaBenarLimaViewController") as! KatakanaBenarLimaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaSalahLimaViewController") as! KatakanaSalahLimaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func kameraKelimaButton(_ sender: UIButton) {        kameraKelimaButton.layer.borderWidth = 2
        kameraKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        televisiKelimaButton.layer.borderWidth = 0.1
        televisiKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sofaKelimaButton.layer.borderWidth = 0.1
        sofaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kasurKelimaButton.layer.borderWidth = 0.1
        kasurKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func televisiKelimaButton(_ sender: UIButton) {
        televisiKelimaButton.layer.borderWidth = 2
        televisiKelimaButton.layer.borderColor = UIColor.grass.cgColor
        
        kameraKelimaButton.layer.borderWidth = 0.1
        kameraKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sofaKelimaButton.layer.borderWidth = 0.1
        sofaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kasurKelimaButton.layer.borderWidth = 0.1
        kasurKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
    }
    
    @IBAction func sofaKelimaButton(_ sender: UIButton) {
        sofaKelimaButton.layer.borderWidth = 2
        sofaKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kameraKelimaButton.layer.borderWidth = 0.1
        kameraKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKelimaButton.layer.borderWidth = 0.1
        televisiKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kasurKelimaButton.layer.borderWidth = 0.1
        kasurKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func kasurKelimaButton(_ sender: UIButton) {
        kasurKelimaButton.layer.borderWidth = 2
        kasurKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kameraKelimaButton.layer.borderWidth = 0.1
        kameraKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKelimaButton.layer.borderWidth = 0.1
        televisiKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sofaKelimaButton.layer.borderWidth = 0.1
        sofaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func keluarKelimaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class KatakanaKeenam: KatakanaViewController {
    
    // Variable
    @IBOutlet weak var teKeenamButton: UIButton!
    @IBOutlet weak var tsuKeenamButton: UIButton!
    @IBOutlet weak var koKeenamButton: UIButton!
    @IBOutlet weak var reKeenamButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        teKeenamButton.layer.cornerRadius = 12
        teKeenamButton.layer.borderWidth = 0.1
        teKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        tsuKeenamButton.layer.cornerRadius = 12
        tsuKeenamButton.layer.borderWidth = 0.1
        tsuKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        koKeenamButton.layer.cornerRadius = 12
        koKeenamButton.layer.borderWidth = 0.1
        koKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        reKeenamButton.layer.cornerRadius = 12
        reKeenamButton.layer.borderWidth = 0.1
        reKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        teKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        teKeenamButton.layer.shadowRadius = 3
        teKeenamButton.layer.shadowOpacity = 0.5
        teKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        teKeenamButton.clipsToBounds = true
        teKeenamButton.layer.masksToBounds = false
               
        tsuKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        tsuKeenamButton.layer.shadowRadius = 3
        tsuKeenamButton.layer.shadowOpacity = 0.5
        tsuKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        tsuKeenamButton.clipsToBounds = true
        tsuKeenamButton.layer.masksToBounds = false
               
        koKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        koKeenamButton.layer.shadowRadius = 3
        koKeenamButton.layer.shadowOpacity = 0.5
        koKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        koKeenamButton.clipsToBounds = true
        koKeenamButton.layer.masksToBounds = false
               
        reKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        reKeenamButton.layer.shadowRadius = 3
        reKeenamButton.layer.shadowOpacity = 0.5
        reKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        reKeenamButton.clipsToBounds = true
        reKeenamButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaBenarEnamViewController") as! KatakanaBenarEnamViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaSalahEnamViewController") as! KatakanaSalahEnamViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func teKeenamButton(_ sender: UIButton) {
        teKeenamButton.layer.borderWidth = 2
        teKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        tsuKeenamButton.layer.borderWidth = 0.1
        tsuKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        koKeenamButton.layer.borderWidth = 0.1
        koKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        reKeenamButton.layer.borderWidth = 0.1
        reKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func tsuKeenamButton(_ sender: UIButton) {
        tsuKeenamButton.layer.borderWidth = 2
        tsuKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        teKeenamButton.layer.borderWidth = 0.1
        teKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        koKeenamButton.layer.borderWidth = 0.1
        koKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        reKeenamButton.layer.borderWidth = 0.1
        reKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func koKeenamButton(_ sender: UIButton) {
        koKeenamButton.layer.borderWidth = 2
        koKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        teKeenamButton.layer.borderWidth = 0.1
        teKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        tsuKeenamButton.layer.borderWidth = 0.1
        tsuKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        reKeenamButton.layer.borderWidth = 0.1
        reKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func reKeenamButton(_ sender: UIButton) {
        reKeenamButton.layer.borderWidth = 2
        reKeenamButton.layer.borderColor = UIColor.grass.cgColor
        
        teKeenamButton.layer.borderWidth = 0.1
        teKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        tsuKeenamButton.layer.borderWidth = 0.1
        tsuKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        koKeenamButton.layer.borderWidth = 0.1
        koKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
    }
    
    @IBAction func keluarKeenamButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class KatakanaKetujuh: KatakanaViewController {
    
    // Variable
    @IBOutlet weak var kameraKetujuhButton: UIButton!
    @IBOutlet weak var televisiKetujuhButton: UIButton!
    @IBOutlet weak var sofaKetujuhButton: UIButton!
    @IBOutlet weak var rotiKetujuhButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        kameraKetujuhButton.layer.cornerRadius = 12
        kameraKetujuhButton.layer.borderWidth = 0.1
        kameraKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                    
        televisiKetujuhButton.layer.cornerRadius = 12
        televisiKetujuhButton.layer.borderWidth = 0.1
        televisiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        sofaKetujuhButton.layer.cornerRadius = 12
        sofaKetujuhButton.layer.borderWidth = 0.1
        sofaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        rotiKetujuhButton.layer.cornerRadius = 12
        rotiKetujuhButton.layer.borderWidth = 0.1
        rotiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        kameraKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        kameraKetujuhButton.layer.shadowRadius = 3
        kameraKetujuhButton.layer.shadowOpacity = 0.5
        kameraKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kameraKetujuhButton.clipsToBounds = true
        kameraKetujuhButton.layer.masksToBounds = false
               
        televisiKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        televisiKetujuhButton.layer.shadowRadius = 3
        televisiKetujuhButton.layer.shadowOpacity = 0.5
        televisiKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        televisiKetujuhButton.clipsToBounds = true
        televisiKetujuhButton.layer.masksToBounds = false
               
        sofaKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        sofaKetujuhButton.layer.shadowRadius = 3
        sofaKetujuhButton.layer.shadowOpacity = 0.5
        sofaKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        sofaKetujuhButton.clipsToBounds = true
        sofaKetujuhButton.layer.masksToBounds = false
               
        rotiKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        rotiKetujuhButton.layer.shadowRadius = 3
        rotiKetujuhButton.layer.shadowOpacity = 0.5
        rotiKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        rotiKetujuhButton.clipsToBounds = true
        rotiKetujuhButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaBenarTujuhViewController") as! KatakanaBenarTujuhViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaSalahTujuhViewController") as! KatakanaSalahTujuhViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    
   @IBAction func kameraKetujuhButton(_ sender: UIButton) {
        kameraKetujuhButton.layer.borderWidth = 2
        kameraKetujuhButton.layer.borderColor = UIColor.grass.cgColor
        
        televisiKetujuhButton.layer.borderWidth = 0.1
        televisiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sofaKetujuhButton.layer.borderWidth = 0.1
        sofaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        rotiKetujuhButton.layer.borderWidth = 0.1
        rotiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
    
        sender.pulseButton()
    
        self.benar()
    }
    
    @IBAction func televisiKetujuhButton(_ sender: UIButton) {
        televisiKetujuhButton.layer.borderWidth = 2
        televisiKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kameraKetujuhButton.layer.borderWidth = 0.1
        kameraKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sofaKetujuhButton.layer.borderWidth = 0.1
        sofaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        rotiKetujuhButton.layer.borderWidth = 0.1
        rotiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func sofaKetujuhButton(_ sender: UIButton) {
        sofaKetujuhButton.layer.borderWidth = 2
        sofaKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kameraKetujuhButton.layer.borderWidth = 0.1
        kameraKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKetujuhButton.layer.borderWidth = 0.1
        televisiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        rotiKetujuhButton.layer.borderWidth = 0.1
        rotiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func rotiKetujuhButton(_ sender: UIButton) {
        rotiKetujuhButton.layer.borderWidth = 2
        rotiKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kameraKetujuhButton.layer.borderWidth = 0.1
        kameraKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        televisiKetujuhButton.layer.borderWidth = 0.1
        televisiKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sofaKetujuhButton.layer.borderWidth = 0.1
        sofaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func keluarKetujuh(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class KatakanaKedelapan: KatakanaViewController {
    
    // Variable
    @IBOutlet weak var kasurKedelapanButton: UIButton!
    @IBOutlet weak var kopiKedelapanButton: UIButton!
    @IBOutlet weak var toiletKedelapanButton: UIButton!
    @IBOutlet weak var acKedelapanButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        kasurKedelapanButton.layer.cornerRadius = 12
        kasurKedelapanButton.layer.borderWidth = 0.1
        kasurKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        kopiKedelapanButton.layer.cornerRadius = 12
        kopiKedelapanButton.layer.borderWidth = 0.1
        kopiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        toiletKedelapanButton.layer.cornerRadius = 12
        toiletKedelapanButton.layer.borderWidth = 0.1
        toiletKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        acKedelapanButton.layer.cornerRadius = 12
        acKedelapanButton.layer.borderWidth = 0.1
        acKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        kasurKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        kasurKedelapanButton.layer.shadowRadius = 3
        kasurKedelapanButton.layer.shadowOpacity = 0.5
        kasurKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kasurKedelapanButton.clipsToBounds = true
        kasurKedelapanButton.layer.masksToBounds = false
               
        kopiKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        kopiKedelapanButton.layer.shadowRadius = 3
        kopiKedelapanButton.layer.shadowOpacity = 0.5
        kopiKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kopiKedelapanButton.clipsToBounds = true
        kopiKedelapanButton.layer.masksToBounds = false
               
        toiletKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        toiletKedelapanButton.layer.shadowRadius = 3
        toiletKedelapanButton.layer.shadowOpacity = 0.5
        toiletKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        toiletKedelapanButton.clipsToBounds = true
        toiletKedelapanButton.layer.masksToBounds = false
               
        acKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        acKedelapanButton.layer.shadowRadius = 3
        acKedelapanButton.layer.shadowOpacity = 0.5
        acKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        acKedelapanButton.clipsToBounds = true
        acKedelapanButton.layer.masksToBounds = false
        
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaBenarDelapanViewController") as! KatakanaBenarDelapanViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaSalahDelapanViewController") as! KatakanaSalahDelapanViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func kasurKedelapanButton(_ sender: UIButton) {
        kasurKedelapanButton.layer.borderWidth = 2
        kasurKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kopiKedelapanButton.layer.borderWidth = 0.1
        kopiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        toiletKedelapanButton.layer.borderWidth = 0.1
        toiletKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        acKedelapanButton.layer.borderWidth = 0.1
        acKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func kopiKedelapanButton(_ sender: UIButton) {
        kopiKedelapanButton.layer.borderWidth = 2
        kopiKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kasurKedelapanButton.layer.borderWidth = 0.1
        kasurKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        toiletKedelapanButton.layer.borderWidth = 0.1
        toiletKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        acKedelapanButton.layer.borderWidth = 0.1
        acKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func toiletKedelapanButton(_ sender: UIButton) {
        toiletKedelapanButton.layer.borderWidth = 2
        toiletKedelapanButton.layer.borderColor = UIColor.grass.cgColor
        
        kasurKedelapanButton.layer.borderWidth = 0.1
        kasurKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kopiKedelapanButton.layer.borderWidth = 0.1
        kopiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        acKedelapanButton.layer.borderWidth = 0.1
        acKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
    }
    
    @IBAction func acKedelapanButton(_ sender: UIButton) {
        acKedelapanButton.layer.borderWidth = 2
        acKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kasurKedelapanButton.layer.borderWidth = 0.1
        kasurKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kopiKedelapanButton.layer.borderWidth = 0.1
        kopiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        toiletKedelapanButton.layer.borderWidth = 0.1
        toiletKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    
    @IBAction func keluarKedelapanButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class KatakanaKesembilan: KatakanaViewController {
    
    // Variable
    @IBOutlet weak var koKesembilanButton: UIButton!
    @IBOutlet weak var nKesembilanButton: UIButton!
    @IBOutlet weak var tsuKesembilanButton: UIButton!
    @IBOutlet weak var saKesembilanButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        koKesembilanButton.layer.cornerRadius = 12
        koKesembilanButton.layer.borderWidth = 0.1
        koKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        nKesembilanButton.layer.cornerRadius = 12
        nKesembilanButton.layer.borderWidth = 0.1
        nKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        tsuKesembilanButton.layer.cornerRadius = 12
        tsuKesembilanButton.layer.borderWidth = 0.1
        tsuKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        saKesembilanButton.layer.cornerRadius = 12
        saKesembilanButton.layer.borderWidth = 0.1
        saKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        koKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        koKesembilanButton.layer.shadowRadius = 3
        koKesembilanButton.layer.shadowOpacity = 0.5
        koKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        koKesembilanButton.clipsToBounds = true
        koKesembilanButton.layer.masksToBounds = false
               
        nKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        nKesembilanButton.layer.shadowRadius = 3
        nKesembilanButton.layer.shadowOpacity = 0.5
        nKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        nKesembilanButton.clipsToBounds = true
        nKesembilanButton.layer.masksToBounds = false
               
        tsuKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        tsuKesembilanButton.layer.shadowRadius = 3
        tsuKesembilanButton.layer.shadowOpacity = 0.5
        tsuKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        tsuKesembilanButton.clipsToBounds = true
        tsuKesembilanButton.layer.masksToBounds = false
               
        saKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        saKesembilanButton.layer.shadowRadius = 3
        saKesembilanButton.layer.shadowOpacity = 0.5
        saKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        saKesembilanButton.clipsToBounds = true
        saKesembilanButton.layer.masksToBounds = false
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaBenarSembilanViewController") as! KatakanaBenarSembilanViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaSalahSembilanViewController") as! KatakanaSalahSembilanViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func koKesembilanButton(_ sender: UIButton) {
        koKesembilanButton.layer.borderWidth = 2
        koKesembilanButton.layer.borderColor = UIColor.grass.cgColor
        
        nKesembilanButton.layer.borderWidth = 0.1
        nKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        tsuKesembilanButton.layer.borderWidth = 0.1
        tsuKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        saKesembilanButton.layer.borderWidth = 0.1
        saKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
    }
    
    @IBAction func nKesembilanButton(_ sender: UIButton) {
        nKesembilanButton.layer.borderWidth = 2
        nKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        koKesembilanButton.layer.borderWidth = 0.1
        koKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        tsuKesembilanButton.layer.borderWidth = 0.1
        tsuKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        saKesembilanButton.layer.borderWidth = 0.1
        saKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func tsuKesembilanButton(_ sender: UIButton) {
        tsuKesembilanButton.layer.borderWidth = 2
        tsuKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        koKesembilanButton.layer.borderWidth = 0.1
        koKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nKesembilanButton.layer.borderWidth = 0.1
        nKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        saKesembilanButton.layer.borderWidth = 0.1
        saKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func saKesembilanButton(_ sender: UIButton) {
        saKesembilanButton.layer.borderWidth = 2
        saKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        koKesembilanButton.layer.borderWidth = 0.1
        koKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nKesembilanButton.layer.borderWidth = 0.1
        nKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        tsuKesembilanButton.layer.borderWidth = 0.1
        tsuKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func keluarKesembilanButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class KatakanaKesepuluh: KatakanaViewController {
    
    // Variable
    @IBOutlet weak var riKesepuluhButton: UIButton!
    @IBOutlet weak var teKesepuluhButton: UIButton!
    @IBOutlet weak var suKesepuluhButton: UIButton!
    @IBOutlet weak var soKesepuluhButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        riKesepuluhButton.layer.cornerRadius = 12
        riKesepuluhButton.layer.borderWidth = 0.1
        riKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        teKesepuluhButton.layer.cornerRadius = 12
        teKesepuluhButton.layer.borderWidth = 0.1
        teKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        suKesepuluhButton.layer.cornerRadius = 12
        suKesepuluhButton.layer.borderWidth = 0.1
        suKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        soKesepuluhButton.layer.cornerRadius = 12
        soKesepuluhButton.layer.borderWidth = 0.1
        soKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        riKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        riKesepuluhButton.layer.shadowRadius = 3
        riKesepuluhButton.layer.shadowOpacity = 0.5
        riKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        riKesepuluhButton.clipsToBounds = true
        riKesepuluhButton.layer.masksToBounds = false
               
        teKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        teKesepuluhButton.layer.shadowRadius = 3
        teKesepuluhButton.layer.shadowOpacity = 0.5
        teKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        teKesepuluhButton.clipsToBounds = true
        teKesepuluhButton.layer.masksToBounds = false
               
        suKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        suKesepuluhButton.layer.shadowRadius = 3
        suKesepuluhButton.layer.shadowOpacity = 0.5
        suKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        suKesepuluhButton.clipsToBounds = true
        suKesepuluhButton.layer.masksToBounds = false
               
        soKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        soKesepuluhButton.layer.shadowRadius = 3
        soKesepuluhButton.layer.shadowOpacity = 0.5
        soKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        soKesepuluhButton.clipsToBounds = true
        soKesepuluhButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaBenarSepuluhViewController") as! KatakanaBenarSepuluhViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaSalahSepuluhViewController") as! KatakanaSalahSepuluhViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func riKesepuluhButton(_ sender: UIButton) {
        riKesepuluhButton.layer.borderWidth = 2
        riKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        teKesepuluhButton.layer.borderWidth = 0.1
        teKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        suKesepuluhButton.layer.borderWidth = 0.1
        suKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        soKesepuluhButton.layer.borderWidth = 0.1
        soKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func teKesepuluhButton(_ sender: UIButton) {
        teKesepuluhButton.layer.borderWidth = 2
        teKesepuluhButton.layer.borderColor = UIColor.grass.cgColor
        
        riKesepuluhButton.layer.borderWidth = 0.1
        riKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        suKesepuluhButton.layer.borderWidth = 0.1
        suKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        soKesepuluhButton.layer.borderWidth = 0.1
        soKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
    }
    
    @IBAction func suKesepuluhButton(_ sender: UIButton) {
        suKesepuluhButton.layer.borderWidth = 2
        suKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        riKesepuluhButton.layer.borderWidth = 0.1
        riKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        teKesepuluhButton.layer.borderWidth = 0.1
        teKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        soKesepuluhButton.layer.borderWidth = 0.1
        soKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func soKesepuluhButton(_ sender: UIButton) {
        soKesepuluhButton.layer.borderWidth = 2
        soKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        riKesepuluhButton.layer.borderWidth = 0.1
        riKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        teKesepuluhButton.layer.borderWidth = 0.1
        teKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        suKesepuluhButton.layer.borderWidth = 0.1
        suKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func keluarKesepuluh(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class KatakanaCoinViewController: KatakanaViewController {
    
    // Variable
    @IBOutlet weak var coinButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        coinButton.layer.cornerRadius = 12
        
        // Shadow button
        coinButton.layer.shadowColor = UIColor.pink.cgColor
        coinButton.layer.shadowRadius = 3
        coinButton.layer.shadowOpacity = 0.5
        coinButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        coinButton.clipsToBounds = true
        coinButton.layer.masksToBounds = false
            
        }

    @IBAction func coinButton(_ sender: UIButton) {
        sender.pulseButton()
        
        let coinViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaDiamondViewController") as! KatakanaDiamondViewController
        
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

class KatakanaDiamondViewController: KatakanaViewController {
    
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
        
        let diamondViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(diamondViewController)
        diamondViewController.view.frame = self.view.frame
        self.view.addSubview(diamondViewController.view)
        diamondViewController.didMove(toParent: self)
    }
}
