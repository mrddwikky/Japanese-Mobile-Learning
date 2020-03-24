//
//  NegaraViewController.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 21/01/20.
//  Copyright © 2020 Dwikky Mardianto. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class NegaraViewController: UIViewController {

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

class NegaraPertama: NegaraViewController {
    
    @IBOutlet weak var jepangPertamaButton: UIButton!
    @IBOutlet weak var mesirPertamaButton: UIButton!
    @IBOutlet weak var australiaPertamaButton: UIButton!
    @IBOutlet weak var cinaPertamaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        jepangPertamaButton.layer.cornerRadius = 12
        jepangPertamaButton.layer.borderWidth = 0.1
        jepangPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        mesirPertamaButton.layer.cornerRadius = 12
        mesirPertamaButton.layer.borderWidth = 0.1
        mesirPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        australiaPertamaButton.layer.cornerRadius = 12
        australiaPertamaButton.layer.borderWidth = 0.1
        australiaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        cinaPertamaButton.layer.cornerRadius = 12
        cinaPertamaButton.layer.borderWidth = 0.1
        cinaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        // Shadow button
        jepangPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        jepangPertamaButton.layer.shadowRadius = 3
        jepangPertamaButton.layer.shadowOpacity = 0.5
        jepangPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        jepangPertamaButton.clipsToBounds = true
        jepangPertamaButton.layer.masksToBounds = false
            
        mesirPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        mesirPertamaButton.layer.shadowRadius = 3
        mesirPertamaButton.layer.shadowOpacity = 0.5
        mesirPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        mesirPertamaButton.clipsToBounds = true
        mesirPertamaButton.layer.masksToBounds = false
            
        australiaPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        australiaPertamaButton.layer.shadowRadius = 3
        australiaPertamaButton.layer.shadowOpacity = 0.5
        australiaPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        australiaPertamaButton.clipsToBounds = true
        australiaPertamaButton.layer.masksToBounds = false
            
        cinaPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        cinaPertamaButton.layer.shadowRadius = 3
        cinaPertamaButton.layer.shadowOpacity = 0.5
        cinaPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        cinaPertamaButton.clipsToBounds = true
        cinaPertamaButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraBenarSatuViewController") as! NegaraBenarSatuViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraSalahSatuViewController") as! NegaraSalahSatuViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func jepangPertamaButton(_ sender: UIButton) {
        jepangPertamaButton.layer.borderWidth = 2
        jepangPertamaButton.layer.borderColor = UIColor.grass.cgColor
                   
        mesirPertamaButton.layer.borderWidth = 0.1
        mesirPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        australiaPertamaButton.layer.borderWidth = 0.1
        australiaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor

        cinaPertamaButton.layer.borderWidth = 0.1
        cinaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        sender.pulseButton()
               
        self.benar()    }
    
    @IBAction func mesirPertamaButton(_ sender: UIButton) {
        mesirPertamaButton.layer.borderWidth = 2
        mesirPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        jepangPertamaButton.layer.borderWidth = 0.1
        jepangPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        australiaPertamaButton.layer.borderWidth = 0.1
        australiaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        cinaPertamaButton.layer.borderWidth = 0.1
        cinaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }

    @IBAction func australiaPertamaButton(_ sender: UIButton) {
        australiaPertamaButton.layer.borderWidth = 2
        australiaPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
            
        jepangPertamaButton.layer.borderWidth = 0.1
        jepangPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        australiaPertamaButton.layer.borderWidth = 0.1
        australiaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        cinaPertamaButton.layer.borderWidth = 0.1
        cinaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func cinaPertamaButton(_ sender: UIButton) {
        cinaPertamaButton.layer.borderWidth = 2
        cinaPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
            
        jepangPertamaButton.layer.borderWidth = 0.1
        jepangPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        mesirPertamaButton.layer.borderWidth = 0.1
        mesirPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        australiaPertamaButton.layer.borderWidth = 0.1
        australiaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        
        self.salah()
        
    }
    
    @IBAction func keluarPertamaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    
    }
    
}

class NegaraKedua: NegaraViewController {
    
    // Variable
    @IBOutlet weak var nihonKeduaButton: UIButton!
    @IBOutlet weak var ejiputoKeduaButton: UIButton!
    @IBOutlet weak var kankokuKeduaButton: UIButton!
    @IBOutlet weak var igirisuKeduaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        nihonKeduaButton.layer.cornerRadius = 12
        nihonKeduaButton.layer.borderWidth = 0.1
        nihonKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ejiputoKeduaButton.layer.cornerRadius = 12
        ejiputoKeduaButton.layer.borderWidth = 0.1
        ejiputoKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kankokuKeduaButton.layer.cornerRadius = 12
        kankokuKeduaButton.layer.borderWidth = 0.1
        kankokuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        igirisuKeduaButton.layer.cornerRadius = 12
        igirisuKeduaButton.layer.borderWidth = 0.1
        igirisuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor

        // Shadow button
        nihonKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        nihonKeduaButton.layer.shadowRadius = 3
        nihonKeduaButton.layer.shadowOpacity = 0.5
        nihonKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        nihonKeduaButton.clipsToBounds = true
        nihonKeduaButton.layer.masksToBounds = false
        
        ejiputoKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        ejiputoKeduaButton.layer.shadowRadius = 3
        ejiputoKeduaButton.layer.shadowOpacity = 0.5
        ejiputoKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        ejiputoKeduaButton.clipsToBounds = true
        ejiputoKeduaButton.layer.masksToBounds = false
        
        kankokuKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kankokuKeduaButton.layer.shadowRadius = 3
        kankokuKeduaButton.layer.shadowOpacity = 0.5
        kankokuKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kankokuKeduaButton.clipsToBounds = true
        kankokuKeduaButton.layer.masksToBounds = false
        
        igirisuKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        igirisuKeduaButton.layer.shadowRadius = 3
        igirisuKeduaButton.layer.shadowOpacity = 0.5
        igirisuKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        igirisuKeduaButton.clipsToBounds = true
        igirisuKeduaButton.layer.masksToBounds = false
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraBenarDuaViewController") as! NegaraBenarDuaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraSalahDuaViewController") as! NegaraSalahDuaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func nihonKeduaButton(_ sender: UIButton) {
        nihonKeduaButton.layer.borderWidth = 2
        nihonKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        ejiputoKeduaButton.layer.borderWidth = 0.1
        ejiputoKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kankokuKeduaButton.layer.borderWidth = 0.1
        kankokuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        igirisuKeduaButton.layer.borderWidth = 0.1
        igirisuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func ejiputoKeduaButton(_ sender: UIButton) {
        ejiputoKeduaButton.layer.borderWidth = 2
        ejiputoKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        nihonKeduaButton.layer.borderWidth = 0.1
        nihonKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kankokuKeduaButton.layer.borderWidth = 0.1
        kankokuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        igirisuKeduaButton.layer.borderWidth = 0.1
        igirisuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func kankokuKeduaButton(_ sender: UIButton) {
        kankokuKeduaButton.layer.borderWidth = 2
        kankokuKeduaButton.layer.borderColor = UIColor.grass.cgColor
        
        nihonKeduaButton.layer.borderWidth = 0.1
        nihonKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ejiputoKeduaButton.layer.borderWidth = 0.1
        ejiputoKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        igirisuKeduaButton.layer.borderWidth = 0.1
        igirisuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func igirisuKeduaButton(_ sender: UIButton) {
        igirisuKeduaButton.layer.borderWidth = 2
        igirisuKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
                   
        nihonKeduaButton.layer.borderWidth = 0.1
        nihonKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ejiputoKeduaButton.layer.borderWidth = 0.1
        ejiputoKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        kankokuKeduaButton.layer.borderWidth = 0.1
        kankokuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKeduaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class NegaraKetiga: NegaraViewController {
    
    // Variable
    @IBOutlet weak var kankokuKetigaButton: UIButton!
    @IBOutlet weak var nihonKetigaButton: UIButton!
    @IBOutlet weak var amerikaKetigaButton: UIButton!
    @IBOutlet weak var doitsuKetigaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        kankokuKetigaButton.layer.cornerRadius = 12
        kankokuKetigaButton.layer.borderWidth = 0.1
        kankokuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nihonKetigaButton.layer.cornerRadius = 12
        nihonKetigaButton.layer.borderWidth = 0.1
        nihonKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKetigaButton.layer.cornerRadius = 12
        amerikaKetigaButton.layer.borderWidth = 0.1
        amerikaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        doitsuKetigaButton.layer.cornerRadius = 12
        doitsuKetigaButton.layer.borderWidth = 0.1
        doitsuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        kankokuKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kankokuKetigaButton.layer.shadowRadius = 3
        kankokuKetigaButton.layer.shadowOpacity = 0.5
        kankokuKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kankokuKetigaButton.clipsToBounds = true
        kankokuKetigaButton.layer.masksToBounds = false
        
        nihonKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        nihonKetigaButton.layer.shadowRadius = 3
        nihonKetigaButton.layer.shadowOpacity = 0.5
        nihonKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        nihonKetigaButton.clipsToBounds = true
        nihonKetigaButton.layer.masksToBounds = false
        
        amerikaKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        amerikaKetigaButton.layer.shadowRadius = 3
        amerikaKetigaButton.layer.shadowOpacity = 0.5
        amerikaKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        amerikaKetigaButton.clipsToBounds = true
        amerikaKetigaButton.layer.masksToBounds = false
        
        doitsuKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        doitsuKetigaButton.layer.shadowRadius = 3
        doitsuKetigaButton.layer.shadowOpacity = 0.5
        doitsuKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        doitsuKetigaButton.clipsToBounds = true
        doitsuKetigaButton.layer.masksToBounds = false
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraBenarTigaViewController") as! NegaraBenarTigaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraSalahTigaViewController") as! NegaraSalahTigaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func kankokuKetigaButton(_ sender: UIButton) {
        kankokuKetigaButton.layer.borderWidth = 2
        kankokuKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        nihonKetigaButton.layer.borderWidth = 0.1
        nihonKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKetigaButton.layer.borderWidth = 0.1
        amerikaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        doitsuKetigaButton.layer.borderWidth = 0.1
        doitsuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func nihonKetigaButton(_ sender: UIButton) {
        nihonKetigaButton.layer.borderWidth = 2
        nihonKetigaButton.layer.borderColor = UIColor.grass.cgColor
        
        kankokuKetigaButton.layer.borderWidth = 0.1
        kankokuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKetigaButton.layer.borderWidth = 0.1
        amerikaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        doitsuKetigaButton.layer.borderWidth = 0.1
        doitsuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func amerikaKetigaButton(_ sender: UIButton) {
        amerikaKetigaButton.layer.borderWidth = 2
        amerikaKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kankokuKetigaButton.layer.borderWidth = 0.1
        kankokuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nihonKetigaButton.layer.borderWidth = 0.1
        nihonKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        doitsuKetigaButton.layer.borderWidth = 0.1
        doitsuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func doitsuKetigaButton(_ sender: UIButton) {
        doitsuKetigaButton.layer.borderWidth = 2
        doitsuKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kankokuKetigaButton.layer.borderWidth = 0.1
        kankokuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nihonKetigaButton.layer.borderWidth = 0.1
        nihonKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKetigaButton.layer.borderWidth = 0.1
        amerikaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKetigaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class NegaraKeempat: NegaraViewController {
    
    // Variable
    @IBOutlet weak var australiaKeempatButton: UIButton!
    @IBOutlet weak var amerikaKeempatButton: UIButton!
    @IBOutlet weak var inggrisKeempatButton: UIButton!
    @IBOutlet weak var jermanKeempatButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        australiaKeempatButton.layer.cornerRadius = 12
        australiaKeempatButton.layer.borderWidth = 0.1
        australiaKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        amerikaKeempatButton.layer.cornerRadius = 12
        amerikaKeempatButton.layer.borderWidth = 0.1
        amerikaKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        inggrisKeempatButton.layer.cornerRadius = 12
        inggrisKeempatButton.layer.borderWidth = 0.1
        inggrisKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        jermanKeempatButton.layer.cornerRadius = 12
        jermanKeempatButton.layer.borderWidth = 0.1
        jermanKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        australiaKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        australiaKeempatButton.layer.shadowRadius = 3
        australiaKeempatButton.layer.shadowOpacity = 0.5
        australiaKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        australiaKeempatButton.clipsToBounds = true
        australiaKeempatButton.layer.masksToBounds = false
               
        amerikaKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        amerikaKeempatButton.layer.shadowRadius = 3
        amerikaKeempatButton.layer.shadowOpacity = 0.5
        amerikaKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        amerikaKeempatButton.clipsToBounds = true
        amerikaKeempatButton.layer.masksToBounds = false
            
        inggrisKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        inggrisKeempatButton.layer.shadowRadius = 3
        inggrisKeempatButton.layer.shadowOpacity = 0.5
        inggrisKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        inggrisKeempatButton.clipsToBounds = true
        inggrisKeempatButton.layer.masksToBounds = false
               
        jermanKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        jermanKeempatButton.layer.shadowRadius = 3
        jermanKeempatButton.layer.shadowOpacity = 0.5
        jermanKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        jermanKeempatButton.clipsToBounds = true
        jermanKeempatButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraBenarEmpatViewController") as! NegaraBenarEmpatViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraSalahEmpatViewController") as! NegaraSalahEmpatViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func australiaKeempatButton(_ sender: UIButton) {
        australiaKeempatButton.layer.borderWidth = 2
        australiaKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        amerikaKeempatButton.layer.borderWidth = 0.1
        amerikaKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inggrisKeempatButton.layer.borderWidth = 0.1
        inggrisKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKeempatButton.layer.borderWidth = 0.1
        jermanKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func amerikaKeempatButton(_ sender: UIButton) {
        amerikaKeempatButton.layer.borderWidth = 2
        amerikaKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        australiaKeempatButton.layer.borderWidth = 0.1
        australiaKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inggrisKeempatButton.layer.borderWidth = 0.1
        inggrisKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKeempatButton.layer.borderWidth = 0.1
        jermanKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func inggrisKeempatButton(_ sender: UIButton) {
        inggrisKeempatButton.layer.borderWidth = 2
        inggrisKeempatButton.layer.borderColor = UIColor.grass.cgColor
        
        australiaKeempatButton.layer.borderWidth = 0.1
        australiaKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKeempatButton.layer.borderWidth = 0.1
        amerikaKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKeempatButton.layer.borderWidth = 0.1
        jermanKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func jermanKeempatButton(_ sender: UIButton) {
        jermanKeempatButton.layer.borderWidth = 2
        jermanKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        australiaKeempatButton.layer.borderWidth = 0.1
        australiaKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKeempatButton.layer.borderWidth = 0.1
        amerikaKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inggrisKeempatButton.layer.borderWidth = 0.1
        inggrisKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKeempatButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class NegaraKelima: NegaraViewController {
    
    // Variable
    @IBOutlet weak var cuugokuKelimaButton: UIButton!
    @IBOutlet weak var doitsuKelimaButton: UIButton!
    @IBOutlet weak var amerikaKelimaButton: UIButton!
    @IBOutlet weak var igirisuKelimaButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        cuugokuKelimaButton.layer.cornerRadius = 12
        cuugokuKelimaButton.layer.borderWidth = 0.1
        cuugokuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        doitsuKelimaButton.layer.cornerRadius = 12
        doitsuKelimaButton.layer.borderWidth = 0.1
        doitsuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        amerikaKelimaButton.layer.cornerRadius = 12
        amerikaKelimaButton.layer.borderWidth = 0.1
        amerikaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        igirisuKelimaButton.layer.cornerRadius = 12
        igirisuKelimaButton.layer.borderWidth = 0.1
        igirisuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        cuugokuKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        cuugokuKelimaButton.layer.shadowRadius = 3
        cuugokuKelimaButton.layer.shadowOpacity = 0.5
        cuugokuKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        cuugokuKelimaButton.clipsToBounds = true
        cuugokuKelimaButton.layer.masksToBounds = false
               
        doitsuKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        doitsuKelimaButton.layer.shadowRadius = 3
        doitsuKelimaButton.layer.shadowOpacity = 0.5
        doitsuKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        doitsuKelimaButton.clipsToBounds = true
        doitsuKelimaButton.layer.masksToBounds = false
               
        amerikaKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        amerikaKelimaButton.layer.shadowRadius = 3
        amerikaKelimaButton.layer.shadowOpacity = 0.5
        amerikaKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        amerikaKelimaButton.clipsToBounds = true
        amerikaKelimaButton.layer.masksToBounds = false
               
        igirisuKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        igirisuKelimaButton.layer.shadowRadius = 3
        igirisuKelimaButton.layer.shadowOpacity = 0.5
        igirisuKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        igirisuKelimaButton.clipsToBounds = true
        igirisuKelimaButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraBenarLimaViewController") as! NegaraBenarLimaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraSalahLimaViewController") as! NegaraSalahLimaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func cuugokuKelimaButton(_ sender: UIButton) {
        cuugokuKelimaButton.layer.borderWidth = 2
        cuugokuKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        doitsuKelimaButton.layer.borderWidth = 0.1
        doitsuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKelimaButton.layer.borderWidth = 0.1
        amerikaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        igirisuKelimaButton.layer.borderWidth = 0.1
        igirisuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func doitsuKelimaButton(_ sender: UIButton) {
        doitsuKelimaButton.layer.borderWidth = 2
        doitsuKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        cuugokuKelimaButton.layer.borderWidth = 0.1
        cuugokuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKelimaButton.layer.borderWidth = 0.1
        amerikaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        igirisuKelimaButton.layer.borderWidth = 0.1
        igirisuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func amerikaKelimaButton(_ sender: UIButton) {
        amerikaKelimaButton.layer.borderWidth = 2
        amerikaKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        cuugokuKelimaButton.layer.borderWidth = 0.1
        cuugokuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        doitsuKelimaButton.layer.borderWidth = 0.1
        doitsuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        igirisuKelimaButton.layer.borderWidth = 0.1
        igirisuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    @IBAction func igirisuKelimaButton(_ sender: UIButton) {
        igirisuKelimaButton.layer.borderWidth = 2
        igirisuKelimaButton.layer.borderColor = UIColor.grass.cgColor
        
        cuugokuKelimaButton.layer.borderWidth = 0.1
        cuugokuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        doitsuKelimaButton.layer.borderWidth = 0.1
        doitsuKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKelimaButton.layer.borderWidth = 0.1
        amerikaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func keluarKelimaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class NegaraKeenam: NegaraViewController {
    
    // Variable
    @IBOutlet weak var cinaKeenamButton: UIButton!
    @IBOutlet weak var jermanKeenamButton: UIButton!
    @IBOutlet weak var koreaKeenamButton: UIButton!
    @IBOutlet weak var jepangKeenamButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        cinaKeenamButton.layer.cornerRadius = 12
        cinaKeenamButton.layer.borderWidth = 0.1
        cinaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        jermanKeenamButton.layer.cornerRadius = 12
        jermanKeenamButton.layer.borderWidth = 0.1
        jermanKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        koreaKeenamButton.layer.cornerRadius = 12
        koreaKeenamButton.layer.borderWidth = 0.1
        koreaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        jepangKeenamButton.layer.cornerRadius = 12
        jepangKeenamButton.layer.borderWidth = 0.1
        jepangKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        cinaKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        cinaKeenamButton.layer.shadowRadius = 3
        cinaKeenamButton.layer.shadowOpacity = 0.5
        cinaKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        cinaKeenamButton.clipsToBounds = true
        cinaKeenamButton.layer.masksToBounds = false
               
        jermanKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        jermanKeenamButton.layer.shadowRadius = 3
        jermanKeenamButton.layer.shadowOpacity = 0.5
        jermanKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        jermanKeenamButton.clipsToBounds = true
        jermanKeenamButton.layer.masksToBounds = false
               
        koreaKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        koreaKeenamButton.layer.shadowRadius = 3
        koreaKeenamButton.layer.shadowOpacity = 0.5
        koreaKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        koreaKeenamButton.clipsToBounds = true
        koreaKeenamButton.layer.masksToBounds = false
               
        jepangKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        jepangKeenamButton.layer.shadowRadius = 3
        jepangKeenamButton.layer.shadowOpacity = 0.5
        jepangKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        jepangKeenamButton.clipsToBounds = true
        jepangKeenamButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraBenarEnamViewController") as! NegaraBenarEnamViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraSalahEnamViewController") as! NegaraSalahEnamViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func cinaKeenamButton(_ sender: UIButton) {
        cinaKeenamButton.layer.borderWidth = 2
        cinaKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        jermanKeenamButton.layer.borderWidth = 0.1
        jermanKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        koreaKeenamButton.layer.borderWidth = 0.1
        koreaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jepangKeenamButton.layer.borderWidth = 0.1
        jepangKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func jermanKeenamButton(_ sender: UIButton) {
        jermanKeenamButton.layer.borderWidth = 2
        jermanKeenamButton.layer.borderColor = UIColor.grass.cgColor
        
        cinaKeenamButton.layer.borderWidth = 0.1
        cinaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        koreaKeenamButton.layer.borderWidth = 0.1
        koreaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jepangKeenamButton.layer.borderWidth = 0.1
        jepangKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func koreaKeenamButton(_ sender: UIButton) {
        koreaKeenamButton.layer.borderWidth = 2
        koreaKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        cinaKeenamButton.layer.borderWidth = 0.1
        cinaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKeenamButton.layer.borderWidth = 0.1
        jermanKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jepangKeenamButton.layer.borderWidth = 0.1
        jepangKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func jepangKeenamButton(_ sender: UIButton) {
        jepangKeenamButton.layer.borderWidth = 2
        jepangKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        cinaKeenamButton.layer.borderWidth = 0.1
        cinaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKeenamButton.layer.borderWidth = 0.1
        jermanKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        koreaKeenamButton.layer.borderWidth = 0.1
        koreaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKeenamButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class NegaraKetujuh: NegaraViewController {
    
    // Variable
    @IBOutlet weak var amerikaKetujuhButton: UIButton!
    @IBOutlet weak var kankokuKetujuhButton: UIButton!
    @IBOutlet weak var ejiputoKetujuhButton: UIButton!
    @IBOutlet weak var nihonKetujuhButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        amerikaKetujuhButton.layer.cornerRadius = 12
        amerikaKetujuhButton.layer.borderWidth = 0.1
        amerikaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                    
        kankokuKetujuhButton.layer.cornerRadius = 12
        kankokuKetujuhButton.layer.borderWidth = 0.1
        kankokuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        ejiputoKetujuhButton.layer.cornerRadius = 12
        ejiputoKetujuhButton.layer.borderWidth = 0.1
        ejiputoKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        nihonKetujuhButton.layer.cornerRadius = 12
        nihonKetujuhButton.layer.borderWidth = 0.1
        nihonKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        amerikaKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        amerikaKetujuhButton.layer.shadowRadius = 3
        amerikaKetujuhButton.layer.shadowOpacity = 0.5
        amerikaKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        amerikaKetujuhButton.clipsToBounds = true
        amerikaKetujuhButton.layer.masksToBounds = false
               
        kankokuKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        kankokuKetujuhButton.layer.shadowRadius = 3
        kankokuKetujuhButton.layer.shadowOpacity = 0.5
        kankokuKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kankokuKetujuhButton.clipsToBounds = true
        kankokuKetujuhButton.layer.masksToBounds = false
               
        ejiputoKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        ejiputoKetujuhButton.layer.shadowRadius = 3
        ejiputoKetujuhButton.layer.shadowOpacity = 0.5
        ejiputoKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        ejiputoKetujuhButton.clipsToBounds = true
        ejiputoKetujuhButton.layer.masksToBounds = false
               
        nihonKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        nihonKetujuhButton.layer.shadowRadius = 3
        nihonKetujuhButton.layer.shadowOpacity = 0.5
        nihonKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        nihonKetujuhButton.clipsToBounds = true
        nihonKetujuhButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraBenarTujuhViewController") as! NegaraBenarTujuhViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraSalahTujuhViewController") as! NegaraSalahTujuhViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    
   @IBAction func amerikaKetujuhButton(_ sender: UIButton) {
        amerikaKetujuhButton.layer.borderWidth = 2
        amerikaKetujuhButton.layer.borderColor = UIColor.grass.cgColor
        
        kankokuKetujuhButton.layer.borderWidth = 0.1
        kankokuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ejiputoKetujuhButton.layer.borderWidth = 0.1
        ejiputoKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nihonKetujuhButton.layer.borderWidth = 0.1
        nihonKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
    
        sender.pulseButton()
    
        self.benar()
    
    }
    
    @IBAction func kankokuKetujuhButton(_ sender: UIButton) {
        kankokuKetujuhButton.layer.borderWidth = 2
        kankokuKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        amerikaKetujuhButton.layer.borderWidth = 0.1
        amerikaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ejiputoKetujuhButton.layer.borderWidth = 0.1
        ejiputoKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nihonKetujuhButton.layer.borderWidth = 0.1
        nihonKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func ejiputoKetujuhButton(_ sender: UIButton) {
        ejiputoKetujuhButton.layer.borderWidth = 2
        ejiputoKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        amerikaKetujuhButton.layer.borderWidth = 0.1
        amerikaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kankokuKetujuhButton.layer.borderWidth = 0.1
        kankokuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nihonKetujuhButton.layer.borderWidth = 0.1
        nihonKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func nihonKetujuhButton(_ sender: UIButton) {
        nihonKetujuhButton.layer.borderWidth = 2
        nihonKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        amerikaKetujuhButton.layer.borderWidth = 0.1
        amerikaKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kankokuKetujuhButton.layer.borderWidth = 0.1
        kankokuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ejiputoKetujuhButton.layer.borderWidth = 0.1
        ejiputoKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKetujuh(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class NegaraKedelapan: NegaraViewController {
    
    // Variable
    @IBOutlet weak var mesirKedelapanButton: UIButton!
    @IBOutlet weak var jepangKedelapanButton: UIButton!
    @IBOutlet weak var amerikaKedelapanButton: UIButton!
    @IBOutlet weak var australiaKedelapanButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        mesirKedelapanButton.layer.cornerRadius = 12
        mesirKedelapanButton.layer.borderWidth = 0.1
        mesirKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        jepangKedelapanButton.layer.cornerRadius = 12
        jepangKedelapanButton.layer.borderWidth = 0.1
        jepangKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        amerikaKedelapanButton.layer.cornerRadius = 12
        amerikaKedelapanButton.layer.borderWidth = 0.1
        amerikaKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        australiaKedelapanButton.layer.cornerRadius = 12
        australiaKedelapanButton.layer.borderWidth = 0.1
        australiaKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        mesirKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        mesirKedelapanButton.layer.shadowRadius = 3
        mesirKedelapanButton.layer.shadowOpacity = 0.5
        mesirKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        mesirKedelapanButton.clipsToBounds = true
        mesirKedelapanButton.layer.masksToBounds = false
               
        jepangKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        jepangKedelapanButton.layer.shadowRadius = 3
        jepangKedelapanButton.layer.shadowOpacity = 0.5
        jepangKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        jepangKedelapanButton.clipsToBounds = true
        jepangKedelapanButton.layer.masksToBounds = false
               
        amerikaKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        amerikaKedelapanButton.layer.shadowRadius = 3
        amerikaKedelapanButton.layer.shadowOpacity = 0.5
        amerikaKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        amerikaKedelapanButton.clipsToBounds = true
        amerikaKedelapanButton.layer.masksToBounds = false
               
        australiaKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        australiaKedelapanButton.layer.shadowRadius = 3
        australiaKedelapanButton.layer.shadowOpacity = 0.5
        australiaKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        australiaKedelapanButton.clipsToBounds = true
        australiaKedelapanButton.layer.masksToBounds = false
        
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraBenarDelapanViewController") as! NegaraBenarDelapanViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraSalahDelapanViewController") as! NegaraSalahDelapanViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func mesirKedelapanButton(_ sender: UIButton) {
        mesirKedelapanButton.layer.borderWidth = 2
        mesirKedelapanButton.layer.borderColor = UIColor.grass.cgColor
        
        jepangKedelapanButton.layer.borderWidth = 0.1
        jepangKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKedelapanButton.layer.borderWidth = 0.1
        amerikaKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        australiaKedelapanButton.layer.borderWidth = 0.1
        australiaKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func jepangKedelapanButton(_ sender: UIButton) {
        jepangKedelapanButton.layer.borderWidth = 2
        jepangKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        mesirKedelapanButton.layer.borderWidth = 0.1
        mesirKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKedelapanButton.layer.borderWidth = 0.1
        amerikaKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        australiaKedelapanButton.layer.borderWidth = 0.1
        australiaKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func amerikaKedelapanButton(_ sender: UIButton) {
        amerikaKedelapanButton.layer.borderWidth = 2
        amerikaKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        mesirKedelapanButton.layer.borderWidth = 0.1
        mesirKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jepangKedelapanButton.layer.borderWidth = 0.1
        jepangKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        australiaKedelapanButton.layer.borderWidth = 0.1
        australiaKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func australiaKedelapanButton(_ sender: UIButton) {
        australiaKedelapanButton.layer.borderWidth = 2
        australiaKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        mesirKedelapanButton.layer.borderWidth = 0.1
        mesirKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jepangKedelapanButton.layer.borderWidth = 0.1
        jepangKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKedelapanButton.layer.borderWidth = 0.1
        amerikaKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
    }
    
    
    @IBAction func keluarKedelapanButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class NegaraKesembilan: NegaraViewController {
    
    // Variable
    @IBOutlet weak var jepangKesembilanButton: UIButton!
    @IBOutlet weak var cinaKesembilanButton: UIButton!
    @IBOutlet weak var jermanKesembilanButton: UIButton!
    @IBOutlet weak var inggrisKesembilanButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        jepangKesembilanButton.layer.cornerRadius = 12
        jepangKesembilanButton.layer.borderWidth = 0.1
        jepangKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        cinaKesembilanButton.layer.cornerRadius = 12
        cinaKesembilanButton.layer.borderWidth = 0.1
        cinaKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        jermanKesembilanButton.layer.cornerRadius = 12
        jermanKesembilanButton.layer.borderWidth = 0.1
        jermanKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        inggrisKesembilanButton.layer.cornerRadius = 12
        inggrisKesembilanButton.layer.borderWidth = 0.1
        inggrisKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        jepangKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        jepangKesembilanButton.layer.shadowRadius = 3
        jepangKesembilanButton.layer.shadowOpacity = 0.5
        jepangKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        jepangKesembilanButton.clipsToBounds = true
        jepangKesembilanButton.layer.masksToBounds = false
               
        cinaKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        cinaKesembilanButton.layer.shadowRadius = 3
        cinaKesembilanButton.layer.shadowOpacity = 0.5
        cinaKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        cinaKesembilanButton.clipsToBounds = true
        cinaKesembilanButton.layer.masksToBounds = false
               
        jermanKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        jermanKesembilanButton.layer.shadowRadius = 3
        jermanKesembilanButton.layer.shadowOpacity = 0.5
        jermanKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        jermanKesembilanButton.clipsToBounds = true
        jermanKesembilanButton.layer.masksToBounds = false
               
        inggrisKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        inggrisKesembilanButton.layer.shadowRadius = 3
        inggrisKesembilanButton.layer.shadowOpacity = 0.5
        inggrisKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        inggrisKesembilanButton.clipsToBounds = true
        inggrisKesembilanButton.layer.masksToBounds = false
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraBenarSembilanViewController") as! NegaraBenarSembilanViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraSalahSembilanViewController") as! NegaraSalahSembilanViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func jepangKesembilanButton(_ sender: UIButton) {
        jepangKesembilanButton.layer.borderWidth = 2
        jepangKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        cinaKesembilanButton.layer.borderWidth = 0.1
        cinaKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKesembilanButton.layer.borderWidth = 0.1
        jermanKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inggrisKesembilanButton.layer.borderWidth = 0.1
        inggrisKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func cinaKesembilanButton(_ sender: UIButton) {
        cinaKesembilanButton.layer.borderWidth = 2
        cinaKesembilanButton.layer.borderColor = UIColor.grass.cgColor
        
        jepangKesembilanButton.layer.borderWidth = 0.1
        jepangKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKesembilanButton.layer.borderWidth = 0.1
        jermanKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inggrisKesembilanButton.layer.borderWidth = 0.1
        inggrisKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func jermanKesembilanButton(_ sender: UIButton) {
        jermanKesembilanButton.layer.borderWidth = 2
        jermanKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        jepangKesembilanButton.layer.borderWidth = 0.1
        jepangKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        cinaKesembilanButton.layer.borderWidth = 0.1
        cinaKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inggrisKesembilanButton.layer.borderWidth = 0.1
        inggrisKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func inggrisKesembilanButton(_ sender: UIButton) {
        inggrisKesembilanButton.layer.borderWidth = 2
        inggrisKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        jepangKesembilanButton.layer.borderWidth = 0.1
        jepangKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        cinaKesembilanButton.layer.borderWidth = 0.1
        cinaKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKesembilanButton.layer.borderWidth = 0.1
        jermanKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKesembilanButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
        
    }
    
}

class NegaraKesepuluh: NegaraViewController {
    
    // Variable
    @IBOutlet weak var cinaKesepuluhButton: UIButton!
    @IBOutlet weak var koreaKesepuluhButton: UIButton!
    @IBOutlet weak var amerikaKesepuluhButton: UIButton!
    @IBOutlet weak var jermanKesepuluhButton: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        cinaKesepuluhButton.layer.cornerRadius = 12
        cinaKesepuluhButton.layer.borderWidth = 0.1
        cinaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        koreaKesepuluhButton.layer.cornerRadius = 12
        koreaKesepuluhButton.layer.borderWidth = 0.1
        koreaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        amerikaKesepuluhButton.layer.cornerRadius = 12
        amerikaKesepuluhButton.layer.borderWidth = 0.1
        amerikaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        jermanKesepuluhButton.layer.cornerRadius = 12
        jermanKesepuluhButton.layer.borderWidth = 0.1
        jermanKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        cinaKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        cinaKesepuluhButton.layer.shadowRadius = 3
        cinaKesepuluhButton.layer.shadowOpacity = 0.5
        cinaKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        cinaKesepuluhButton.clipsToBounds = true
        cinaKesepuluhButton.layer.masksToBounds = false
               
        koreaKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        koreaKesepuluhButton.layer.shadowRadius = 3
        koreaKesepuluhButton.layer.shadowOpacity = 0.5
        koreaKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        koreaKesepuluhButton.clipsToBounds = true
        koreaKesepuluhButton.layer.masksToBounds = false
               
        amerikaKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        amerikaKesepuluhButton.layer.shadowRadius = 3
        amerikaKesepuluhButton.layer.shadowOpacity = 0.5
        amerikaKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        amerikaKesepuluhButton.clipsToBounds = true
        amerikaKesepuluhButton.layer.masksToBounds = false
               
        jermanKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        jermanKesepuluhButton.layer.shadowRadius = 3
        jermanKesepuluhButton.layer.shadowOpacity = 0.5
        jermanKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        jermanKesepuluhButton.clipsToBounds = true
        jermanKesepuluhButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraBenarSepuluhViewController") as! NegaraBenarSepuluhViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraSalahSepuluhViewController") as! NegaraSalahSepuluhViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func cinaKesepuluhButton(_ sender: UIButton) {
        cinaKesepuluhButton.layer.borderWidth = 2
        cinaKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        koreaKesepuluhButton.layer.borderWidth = 0.1
        koreaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKesepuluhButton.layer.borderWidth = 0.1
        amerikaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKesepuluhButton.layer.borderWidth = 0.1
        jermanKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func koreaKesepuluhButton(_ sender: UIButton) {
        koreaKesepuluhButton.layer.borderWidth = 2
        koreaKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        cinaKesepuluhButton.layer.borderWidth = 0.1
        cinaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKesepuluhButton.layer.borderWidth = 0.1
        amerikaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKesepuluhButton.layer.borderWidth = 0.1
        jermanKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func amerikaKesepuluhButton(_ sender: UIButton) {
        amerikaKesepuluhButton.layer.borderWidth = 2
        amerikaKesepuluhButton.layer.borderColor = UIColor.grass.cgColor
        
        cinaKesepuluhButton.layer.borderWidth = 0.1
        cinaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        koreaKesepuluhButton.layer.borderWidth = 0.1
        koreaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        jermanKesepuluhButton.layer.borderWidth = 0.1
        jermanKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
    }
    
    @IBAction func jermanKesepuluhButton(_ sender: UIButton) {
        jermanKesepuluhButton.layer.borderWidth = 2
        jermanKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        cinaKesepuluhButton.layer.borderWidth = 0.1
        cinaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        koreaKesepuluhButton.layer.borderWidth = 0.1
        koreaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        amerikaKesepuluhButton.layer.borderWidth = 0.1
        amerikaKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
    }
    
    @IBAction func keluarKesepuluh(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class NegaraCoinViewController: NegaraViewController {
    
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
        
        let coinViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraDiamondViewController") as! NegaraDiamondViewController
        
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

class NegaraDiamondViewController: NegaraViewController {
    
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
        
        let diamondViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(diamondViewController)
        diamondViewController.view.frame = self.view.frame
        self.view.addSubview(diamondViewController.view)
        diamondViewController.didMove(toParent: self)
    }
}

