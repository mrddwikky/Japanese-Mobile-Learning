//
//  Hiragana.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 03/01/20.
//  Copyright © 2020 Dwikky Mardianto. All rights reserved.
//

import UIKit
import AVFoundation
import Firebase
import FirebaseAuth

class HiraganaViewController: UIViewController {
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func popUp(){
        self.view.transform = CGAffineTransform(scaleX: 0.5,y: 0.5)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, delay: 0.0, options: .curveEaseInOut, animations: {
            self.view.alpha = 1.0;
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    
    }
    
}

class HiraganaPertama: HiraganaViewController {
    
    // Variable

    @IBOutlet weak var iPertamaButton: UIButton!
    @IBOutlet weak var kaPertamaButton: UIButton!
    @IBOutlet weak var niPertamaButton: UIButton!
    @IBOutlet weak var aPertamaButton: UIButton!
    
    var iAudioPlayer = AVAudioPlayer()
    var kaAudioPlayer = AVAudioPlayer()
    var niAudioPlayer = AVAudioPlayer()
    var aAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            iAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "i", ofType: "m4a")!))
            iAudioPlayer.prepareToPlay()
            
            kaAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ka", ofType: "m4a")!))
            kaAudioPlayer.prepareToPlay()
            
            niAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ni", ofType: "m4a")!))
            niAudioPlayer.prepareToPlay()
            
            aAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "a", ofType: "m4a")!))
            aAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        iPertamaButton.layer.cornerRadius = 12
        iPertamaButton.layer.borderWidth = 0.1
        iPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        kaPertamaButton.layer.cornerRadius = 12
        kaPertamaButton.layer.borderWidth = 0.1
        kaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        niPertamaButton.layer.cornerRadius = 12
        niPertamaButton.layer.borderWidth = 0.1
        niPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        aPertamaButton.layer.cornerRadius = 12
        aPertamaButton.layer.borderWidth = 0.1
        aPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        // Shadow button
        iPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        iPertamaButton.layer.shadowRadius = 3
        iPertamaButton.layer.shadowOpacity = 0.5
        iPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        iPertamaButton.clipsToBounds = true
        iPertamaButton.layer.masksToBounds = false
            
        kaPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        kaPertamaButton.layer.shadowRadius = 3
        kaPertamaButton.layer.shadowOpacity = 0.5
        kaPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kaPertamaButton.clipsToBounds = true
        kaPertamaButton.layer.masksToBounds = false
            
        niPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        niPertamaButton.layer.shadowRadius = 3
        niPertamaButton.layer.shadowOpacity = 0.5
        niPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        niPertamaButton.clipsToBounds = true
        niPertamaButton.layer.masksToBounds = false
            
        aPertamaButton.layer.shadowColor = UIColor.lightGray.cgColor
        aPertamaButton.layer.shadowRadius = 3
        aPertamaButton.layer.shadowOpacity = 0.5
        aPertamaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        aPertamaButton.clipsToBounds = true
        aPertamaButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaBenarSatuViewController") as! HiraganaBenarSatuViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaSalahSatuViewController") as! HiraganaSalahSatuViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func iPertamaButton(_ sender: UIButton) {
        iPertamaButton.layer.borderWidth = 2
        iPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
            
        kaPertamaButton.layer.borderWidth = 0.1
        kaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        niPertamaButton.layer.borderWidth = 0.1
        niPertamaButton.layer.borderColor = UIColor.lightGray.cgColor

        aPertamaButton.layer.borderWidth = 0.1
        aPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        sender.pulseButton()
        
        self.salah()
        
        iAudioPlayer.play()
    }
        
    @IBAction func kaPertamaButton(_ sender: UIButton) {
        kaPertamaButton.layer.borderWidth = 2
        kaPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        iPertamaButton.layer.borderWidth = 0.1
        iPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        niPertamaButton.layer.borderWidth = 0.1
        niPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        aPertamaButton.layer.borderWidth = 0.1
        aPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        kaAudioPlayer.play()
    }
    
        
    @IBAction func niPertamaButton(_ sender: UIButton) {
        niPertamaButton.layer.borderWidth = 2
        niPertamaButton.layer.borderColor = UIColor.grass.cgColor
            
        iPertamaButton.layer.borderWidth = 0.1
        iPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        kaPertamaButton.layer.borderWidth = 0.1
        kaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        aPertamaButton.layer.borderWidth = 0.1
        aPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        sender.pulseButton()
        
        self.benar()
        
        niAudioPlayer.play()
    }
        
    @IBAction func aPertamaButton(_ sender: UIButton) {
        aPertamaButton.layer.borderWidth = 2
        aPertamaButton.layer.borderColor = UIColor.burgundy.cgColor
            
        iPertamaButton.layer.borderWidth = 0.1
        iPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        kaPertamaButton.layer.borderWidth = 0.1
        kaPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
            
        niPertamaButton.layer.borderWidth = 0.1
        niPertamaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        aAudioPlayer.play()
    }
    
    @IBAction func keluarPertamaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    
    }
}

class HiraganaKedua: HiraganaViewController {
    
    // Variable
    @IBOutlet weak var watashiKeduaButton: UIButton!
    @IBOutlet weak var gozaimasuKeduaButton: UIButton!
    @IBOutlet weak var masenKeduaButton: UIButton!
    @IBOutlet weak var imasuKeduaButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    
    var arigatouGozaimasuAudioPlayer = AVAudioPlayer()
    var watashiAudioPlayer = AVAudioPlayer()
    var gozaimasuAudioPlayer = AVAudioPlayer()
    var masenAudioPlayer = AVAudioPlayer()
    var imasuAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            arigatouGozaimasuAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "arigatou-gozaimasu", ofType: "m4a")!))
            arigatouGozaimasuAudioPlayer.prepareToPlay()
            
            watashiAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "watashi", ofType: "m4a")!))
            watashiAudioPlayer.prepareToPlay()
            
            gozaimasuAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "gozaimasu", ofType: "m4a")!))
            gozaimasuAudioPlayer.prepareToPlay()
            
            masenAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "masen", ofType: "m4a")!))
            masenAudioPlayer.prepareToPlay()
            
            imasuAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "imasu", ofType: "m4a")!))
            imasuAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        watashiKeduaButton.layer.cornerRadius = 12
        watashiKeduaButton.layer.borderWidth = 0.1
        watashiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        gozaimasuKeduaButton.layer.cornerRadius = 12
        gozaimasuKeduaButton.layer.borderWidth = 0.1
        gozaimasuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        masenKeduaButton.layer.cornerRadius = 12
        masenKeduaButton.layer.borderWidth = 0.1
        masenKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        imasuKeduaButton.layer.cornerRadius = 12
        imasuKeduaButton.layer.borderWidth = 0.1
        imasuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        soundButton.layer.cornerRadius = 8
        soundButton.layer.borderWidth = 0.1
        soundButton.layer.borderColor = UIColor.oceanBlue.cgColor

        // Shadow button
        watashiKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        watashiKeduaButton.layer.shadowRadius = 3
        watashiKeduaButton.layer.shadowOpacity = 0.5
        watashiKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        watashiKeduaButton.clipsToBounds = true
        watashiKeduaButton.layer.masksToBounds = false
        
        gozaimasuKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        gozaimasuKeduaButton.layer.shadowRadius = 3
        gozaimasuKeduaButton.layer.shadowOpacity = 0.5
        gozaimasuKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        gozaimasuKeduaButton.clipsToBounds = true
        gozaimasuKeduaButton.layer.masksToBounds = false
        
        masenKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        masenKeduaButton.layer.shadowRadius = 3
        masenKeduaButton.layer.shadowOpacity = 0.5
        masenKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        masenKeduaButton.clipsToBounds = true
        masenKeduaButton.layer.masksToBounds = false
        
        imasuKeduaButton.layer.shadowColor = UIColor.lightGray.cgColor
        imasuKeduaButton.layer.shadowRadius = 3
        imasuKeduaButton.layer.shadowOpacity = 0.5
        imasuKeduaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        imasuKeduaButton.clipsToBounds = true
        imasuKeduaButton.layer.masksToBounds = false
        
        soundButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        soundButton.layer.shadowRadius = 3
        soundButton.layer.shadowOpacity = 0.5
        soundButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        soundButton.clipsToBounds = true
        soundButton.layer.masksToBounds = false
        
        arigatouGozaimasuAudioPlayer.play()
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaBenarDuaViewController") as! HiraganaBenarDuaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaSalahDuaViewController") as! HiraganaSalahDuaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
        
    }
    
    @IBAction func watashiKeduaButton(_ sender: UIButton) {
        watashiKeduaButton.layer.borderWidth = 2
        watashiKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        gozaimasuKeduaButton.layer.borderWidth = 0.1
        gozaimasuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        masenKeduaButton.layer.borderWidth = 0.1
        masenKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        imasuKeduaButton.layer.borderWidth = 0.1
        imasuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        watashiAudioPlayer.play()
    }
    
    @IBAction func gozaimasuKeduaButton(_ sender: UIButton) {
        gozaimasuKeduaButton.layer.borderWidth = 2
        gozaimasuKeduaButton.layer.borderColor = UIColor.grass.cgColor
        
        watashiKeduaButton.layer.borderWidth = 0.1
        watashiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        masenKeduaButton.layer.borderWidth = 0.1
        masenKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        imasuKeduaButton.layer.borderWidth = 0.1
        imasuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        gozaimasuAudioPlayer.play()
    }
    
    @IBAction func masenKeduaButton(_ sender: UIButton) {
        masenKeduaButton.layer.borderWidth = 2
        masenKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        watashiKeduaButton.layer.borderWidth = 0.1
        watashiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        gozaimasuKeduaButton.layer.borderWidth = 0.1
        gozaimasuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        imasuKeduaButton.layer.borderWidth = 0.1
        imasuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        masenAudioPlayer.play()
    }
    
    @IBAction func imasuKeduaButton(_ sender: UIButton) {
        imasuKeduaButton.layer.borderWidth = 2
        imasuKeduaButton.layer.borderColor = UIColor.burgundy.cgColor
                   
        watashiKeduaButton.layer.borderWidth = 0.1
        watashiKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        gozaimasuKeduaButton.layer.borderWidth = 0.1
        gozaimasuKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        masenKeduaButton.layer.borderWidth = 0.1
        masenKeduaButton.layer.borderColor = UIColor.lightGray.cgColor
                   
        sender.pulseButton()
        
        self.salah()
        
        imasuAudioPlayer.play()
    }
    
    @IBAction func keluarKeduaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
    
    @IBAction func soundButton(_ sender: UIButton) {
        sender.pulseButton()
        
        arigatouGozaimasuAudioPlayer.play()
    }
}

class HiraganaKetiga: HiraganaViewController {
    
    // Variable
    @IBOutlet weak var asaKetigaButton: UIButton!
    @IBOutlet weak var hiruKetigaButton: UIButton!
    @IBOutlet weak var yoruKetigaButton: UIButton!
    @IBOutlet weak var inuKetigaButton: UIButton!
    
    var asaAudioPlayer = AVAudioPlayer()
    var hiruAudioPlayer = AVAudioPlayer()
    var yoruAudioPlayer = AVAudioPlayer()
    var inuAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            asaAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "asa", ofType: "m4a")!))
            asaAudioPlayer.prepareToPlay()
            
            hiruAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "hiru", ofType: "m4a")!))
            hiruAudioPlayer.prepareToPlay()
            
            yoruAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "yoru", ofType: "m4a")!))
            yoruAudioPlayer.prepareToPlay()
            
            inuAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "inu", ofType: "m4a")!))
            inuAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        asaKetigaButton.layer.cornerRadius = 12
        asaKetigaButton.layer.borderWidth = 0.1
        asaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        hiruKetigaButton.layer.cornerRadius = 12
        hiruKetigaButton.layer.borderWidth = 0.1
        hiruKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yoruKetigaButton.layer.cornerRadius = 12
        yoruKetigaButton.layer.borderWidth = 0.1
        yoruKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inuKetigaButton.layer.cornerRadius = 12
        inuKetigaButton.layer.borderWidth = 0.1
        inuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        asaKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        asaKetigaButton.layer.shadowRadius = 3
        asaKetigaButton.layer.shadowOpacity = 0.5
        asaKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        asaKetigaButton.clipsToBounds = true
        asaKetigaButton.layer.masksToBounds = false
        
        hiruKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        hiruKetigaButton.layer.shadowRadius = 3
        hiruKetigaButton.layer.shadowOpacity = 0.5
        hiruKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        hiruKetigaButton.clipsToBounds = true
        hiruKetigaButton.layer.masksToBounds = false
        
        yoruKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        yoruKetigaButton.layer.shadowRadius = 3
        yoruKetigaButton.layer.shadowOpacity = 0.5
        yoruKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        yoruKetigaButton.clipsToBounds = true
        yoruKetigaButton.layer.masksToBounds = false
        
        inuKetigaButton.layer.shadowColor = UIColor.lightGray.cgColor
        inuKetigaButton.layer.shadowRadius = 3
        inuKetigaButton.layer.shadowOpacity = 0.5
        inuKetigaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        inuKetigaButton.clipsToBounds = true
        inuKetigaButton.layer.masksToBounds = false
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaBenarTigaViewController") as! HiraganaBenarTigaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaSalahTigaViewController") as! HiraganaSalahTigaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func asaKetigaButton(_ sender: UIButton) {
        asaKetigaButton.layer.borderWidth = 2
        asaKetigaButton.layer.borderColor = UIColor.grass.cgColor
        
        inuKetigaButton.layer.borderWidth = 0.1
        inuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        hiruKetigaButton.layer.borderWidth = 0.1
        hiruKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yoruKetigaButton.layer.borderWidth = 0.1
        yoruKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        asaAudioPlayer.play()

    }
    
    @IBAction func hiruKetigaButton(_ sender: UIButton) {
        hiruKetigaButton.layer.borderWidth = 2
        hiruKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        asaKetigaButton.layer.borderWidth = 0.1
        asaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inuKetigaButton.layer.borderWidth = 0.1
        inuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yoruKetigaButton.layer.borderWidth = 0.1
        yoruKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        hiruAudioPlayer.play()
    }
    
    @IBAction func yoruKetigaButton(_ sender: UIButton) {
        yoruKetigaButton.layer.borderWidth = 2
        yoruKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        asaKetigaButton.layer.borderWidth = 0.1
        asaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        hiruKetigaButton.layer.borderWidth = 0.1
        hiruKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inuKetigaButton.layer.borderWidth = 0.1
        inuKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        yoruAudioPlayer.play()
    }
    
    @IBAction func inuKetigaButton(_ sender: UIButton) {
        inuKetigaButton.layer.borderWidth = 2
        inuKetigaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        asaKetigaButton.layer.borderWidth = 0.1
        asaKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        hiruKetigaButton.layer.borderWidth = 0.1
        hiruKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yoruKetigaButton.layer.borderWidth = 0.1
        yoruKetigaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        inuAudioPlayer.play()
    }
    
    @IBAction func keluarKetigaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class HiraganaKeempat: HiraganaViewController {
    
    // Variable
    @IBOutlet weak var oKeempatButton: UIButton!
    @IBOutlet weak var uKeempatButton: UIButton!
    @IBOutlet weak var ruKeempatButton: UIButton!
    @IBOutlet weak var yoKeempatButton: UIButton!
    
    var oAudioPlayer = AVAudioPlayer()
    var uAudioPlayer = AVAudioPlayer()
    var ruAudioPlayer = AVAudioPlayer()
    var yoAudioPlayer = AVAudioPlayer()

    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            oAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "o", ofType: "m4a")!))
            oAudioPlayer.prepareToPlay()
            
            uAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "u", ofType: "m4a")!))
            uAudioPlayer.prepareToPlay()
            
            ruAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ru", ofType: "m4a")!))
            ruAudioPlayer.prepareToPlay()
            
            yoAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "yo", ofType: "m4a")!))
            yoAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        oKeempatButton.layer.cornerRadius = 12
        oKeempatButton.layer.borderWidth = 0.1
        oKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        uKeempatButton.layer.cornerRadius = 12
        uKeempatButton.layer.borderWidth = 0.1
        uKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        ruKeempatButton.layer.cornerRadius = 12
        ruKeempatButton.layer.borderWidth = 0.1
        ruKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
               
        yoKeempatButton.layer.cornerRadius = 12
        yoKeempatButton.layer.borderWidth = 0.1
        yoKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        oKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        oKeempatButton.layer.shadowRadius = 3
        oKeempatButton.layer.shadowOpacity = 0.5
        oKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        oKeempatButton.clipsToBounds = true
        oKeempatButton.layer.masksToBounds = false
               
        uKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        uKeempatButton.layer.shadowRadius = 3
        uKeempatButton.layer.shadowOpacity = 0.5
        uKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        uKeempatButton.clipsToBounds = true
        uKeempatButton.layer.masksToBounds = false
               
        ruKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        ruKeempatButton.layer.shadowRadius = 3
        ruKeempatButton.layer.shadowOpacity = 0.5
        ruKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        ruKeempatButton.clipsToBounds = true
        ruKeempatButton.layer.masksToBounds = false
               
        yoKeempatButton.layer.shadowColor = UIColor.lightGray.cgColor
        yoKeempatButton.layer.shadowRadius = 3
        yoKeempatButton.layer.shadowOpacity = 0.5
        yoKeempatButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        yoKeempatButton.clipsToBounds = true
        yoKeempatButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaBenarEmpatViewController") as! HiraganaBenarEmpatViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaSalahEmpatViewController") as! HiraganaSalahEmpatViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func oKeempatButton(_ sender: UIButton) {
        oKeempatButton.layer.borderWidth = 2
        oKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        uKeempatButton.layer.borderWidth = 0.1
        uKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ruKeempatButton.layer.borderWidth = 0.1
        ruKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yoKeempatButton.layer.borderWidth = 0.1
        yoKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        oAudioPlayer.play()
    }
    
    @IBAction func uKeempatButton(_ sender: UIButton) {
        uKeempatButton.layer.borderWidth = 2
        uKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        oKeempatButton.layer.borderWidth = 0.1
        oKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ruKeempatButton.layer.borderWidth = 0.1
        ruKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yoKeempatButton.layer.borderWidth = 0.1
        yoKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        uAudioPlayer.play()
    }
    
    @IBAction func ruKeempatButton(_ sender: UIButton) {
        ruKeempatButton.layer.borderWidth = 2
        ruKeempatButton.layer.borderColor = UIColor.burgundy.cgColor
        
        oKeempatButton.layer.borderWidth = 0.1
        oKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        uKeempatButton.layer.borderWidth = 0.1
        uKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yoKeempatButton.layer.borderWidth = 0.1
        yoKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        ruAudioPlayer.play()
    }
    
    @IBAction func yoKeempatButton(_ sender: UIButton) {
        yoKeempatButton.layer.borderWidth = 2
        yoKeempatButton.layer.borderColor = UIColor.grass.cgColor
        
        oKeempatButton.layer.borderWidth = 0.1
        oKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        uKeempatButton.layer.borderWidth = 0.1
        uKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        ruKeempatButton.layer.borderWidth = 0.1
        ruKeempatButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        yoAudioPlayer.play()
    }
    
    @IBAction func keluarKeempatButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class HiraganaKelima: HiraganaViewController {
    
    // Variable
    @IBOutlet weak var asaKelimaButton: UIButton!
    @IBOutlet weak var hiruKelimaButton: UIButton!
    @IBOutlet weak var yoruKelimaButton: UIButton!
    @IBOutlet weak var nekoKelimaButton: UIButton!
    
    var asaAudioPlayer = AVAudioPlayer()
    var hiruAudioPlayer = AVAudioPlayer()
    var yoruAudioPlayer = AVAudioPlayer()
    var nekoAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            asaAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "asa", ofType: "m4a")!))
            asaAudioPlayer.prepareToPlay()
            
            hiruAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "hiru", ofType: "m4a")!))
            hiruAudioPlayer.prepareToPlay()
            
            yoruAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "yoru", ofType: "m4a")!))
            yoruAudioPlayer.prepareToPlay()
            
            nekoAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "neko", ofType: "m4a")!))
            nekoAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        asaKelimaButton.layer.cornerRadius = 12
        asaKelimaButton.layer.borderWidth = 0.1
        asaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        hiruKelimaButton.layer.cornerRadius = 12
        hiruKelimaButton.layer.borderWidth = 0.1
        hiruKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        yoruKelimaButton.layer.cornerRadius = 12
        yoruKelimaButton.layer.borderWidth = 0.1
        yoruKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        nekoKelimaButton.layer.cornerRadius = 12
        nekoKelimaButton.layer.borderWidth = 0.1
        nekoKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        asaKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        asaKelimaButton.layer.shadowRadius = 3
        asaKelimaButton.layer.shadowOpacity = 0.5
        asaKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        asaKelimaButton.clipsToBounds = true
        asaKelimaButton.layer.masksToBounds = false
               
        hiruKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        hiruKelimaButton.layer.shadowRadius = 3
        hiruKelimaButton.layer.shadowOpacity = 0.5
        hiruKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        hiruKelimaButton.clipsToBounds = true
        hiruKelimaButton.layer.masksToBounds = false
               
        yoruKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        yoruKelimaButton.layer.shadowRadius = 3
        yoruKelimaButton.layer.shadowOpacity = 0.5
        yoruKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        yoruKelimaButton.clipsToBounds = true
        yoruKelimaButton.layer.masksToBounds = false
               
        nekoKelimaButton.layer.shadowColor = UIColor.lightGray.cgColor
        nekoKelimaButton.layer.shadowRadius = 3
        nekoKelimaButton.layer.shadowOpacity = 0.5
        nekoKelimaButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        nekoKelimaButton.clipsToBounds = true
        nekoKelimaButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaBenarLimaViewController") as! HiraganaBenarLimaViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaSalahLimaViewController") as! HiraganaSalahLimaViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func asaKelimaButton(_ sender: UIButton) {
        asaKelimaButton.layer.borderWidth = 2
        asaKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        hiruKelimaButton.layer.borderWidth = 0.1
        hiruKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yoruKelimaButton.layer.borderWidth = 0.1
        yoruKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nekoKelimaButton.layer.borderWidth = 0.1
        nekoKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        asaAudioPlayer.play()
    }
    
    @IBAction func hiruKelimaButton(_ sender: UIButton) {
        hiruKelimaButton.layer.borderWidth = 2
        hiruKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        asaKelimaButton.layer.borderWidth = 0.1
        asaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yoruKelimaButton.layer.borderWidth = 0.1
        yoruKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nekoKelimaButton.layer.borderWidth = 0.1
        nekoKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        hiruAudioPlayer.play()
    }
    
    @IBAction func yoruKelimaButton(_ sender: UIButton) {
        yoruKelimaButton.layer.borderWidth = 2
        yoruKelimaButton.layer.borderColor = UIColor.grass.cgColor
        
        asaKelimaButton.layer.borderWidth = 0.1
        asaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        hiruKelimaButton.layer.borderWidth = 0.1
        hiruKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nekoKelimaButton.layer.borderWidth = 0.1
        nekoKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        yoruAudioPlayer.play()
    }
    
    @IBAction func nekoKelimaButton(_ sender: UIButton) {
        nekoKelimaButton.layer.borderWidth = 2
        nekoKelimaButton.layer.borderColor = UIColor.burgundy.cgColor
        
        asaKelimaButton.layer.borderWidth = 0.1
        asaKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        hiruKelimaButton.layer.borderWidth = 0.1
        hiruKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yoruKelimaButton.layer.borderWidth = 0.1
        yoruKelimaButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        nekoAudioPlayer.play()
    }
    
    @IBAction func keluarKelimaButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class HiraganaKeenam: HiraganaViewController {
    
    // Variable
    @IBOutlet weak var saKeenamButton: UIButton!
    @IBOutlet weak var kaKeenamButton: UIButton!
    @IBOutlet weak var chiKeenamButton: UIButton!
    @IBOutlet weak var nKeenamButton: UIButton!
    
    var saAudioPlayer = AVAudioPlayer()
    var kaAudioPlayer = AVAudioPlayer()
    var chiAudioPlayer = AVAudioPlayer()
    var nAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            saAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sa", ofType: "m4a")!))
            saAudioPlayer.prepareToPlay()
            
            kaAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ka", ofType: "m4a")!))
            kaAudioPlayer.prepareToPlay()
            
            chiAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "chi", ofType: "m4a")!))
            chiAudioPlayer.prepareToPlay()
            
            nAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "n", ofType: "m4a")!))
            nAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        saKeenamButton.layer.cornerRadius = 12
        saKeenamButton.layer.borderWidth = 0.1
        saKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        kaKeenamButton.layer.cornerRadius = 12
        kaKeenamButton.layer.borderWidth = 0.1
        kaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        chiKeenamButton.layer.cornerRadius = 12
        chiKeenamButton.layer.borderWidth = 0.1
        chiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        nKeenamButton.layer.cornerRadius = 12
        nKeenamButton.layer.borderWidth = 0.1
        nKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        saKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        saKeenamButton.layer.shadowRadius = 3
        saKeenamButton.layer.shadowOpacity = 0.5
        saKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        saKeenamButton.clipsToBounds = true
        saKeenamButton.layer.masksToBounds = false
               
        kaKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        kaKeenamButton.layer.shadowRadius = 3
        kaKeenamButton.layer.shadowOpacity = 0.5
        kaKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kaKeenamButton.clipsToBounds = true
        kaKeenamButton.layer.masksToBounds = false
               
        chiKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        chiKeenamButton.layer.shadowRadius = 3
        chiKeenamButton.layer.shadowOpacity = 0.5
        chiKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        chiKeenamButton.clipsToBounds = true
        chiKeenamButton.layer.masksToBounds = false
               
        nKeenamButton.layer.shadowColor = UIColor.lightGray.cgColor
        nKeenamButton.layer.shadowRadius = 3
        nKeenamButton.layer.shadowOpacity = 0.5
        nKeenamButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        nKeenamButton.clipsToBounds = true
        nKeenamButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaBenarEnamViewController") as! HiraganaBenarEnamViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaSalahEnamViewController") as! HiraganaSalahEnamViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func saKeenamButton(_ sender: UIButton) {
        saKeenamButton.layer.borderWidth = 2
        saKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kaKeenamButton.layer.borderWidth = 0.1
        kaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        chiKeenamButton.layer.borderWidth = 0.1
        chiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nKeenamButton.layer.borderWidth = 0.1
        nKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        saAudioPlayer.play()
    }
    
    @IBAction func kaKeenamButton(_ sender: UIButton) {
        kaKeenamButton.layer.borderWidth = 2
        kaKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        saKeenamButton.layer.borderWidth = 0.1
        saKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        chiKeenamButton.layer.borderWidth = 0.1
        chiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nKeenamButton.layer.borderWidth = 0.1
        nKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        kaAudioPlayer.play()
    }
    
    @IBAction func chiKeenamButton(_ sender: UIButton) {
        chiKeenamButton.layer.borderWidth = 2
        chiKeenamButton.layer.borderColor = UIColor.grass.cgColor
        
        saKeenamButton.layer.borderWidth = 0.1
        saKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kaKeenamButton.layer.borderWidth = 0.1
        kaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nKeenamButton.layer.borderWidth = 0.1
        nKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        chiAudioPlayer.play()
    }
    
    @IBAction func nKeenamButton(_ sender: UIButton) {
        nKeenamButton.layer.borderWidth = 2
        nKeenamButton.layer.borderColor = UIColor.burgundy.cgColor
        
        saKeenamButton.layer.borderWidth = 0.1
        saKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kaKeenamButton.layer.borderWidth = 0.1
        kaKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        chiKeenamButton.layer.borderWidth = 0.1
        chiKeenamButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        nAudioPlayer.play()
    }
    
    @IBAction func keluarKeenamButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class HiraganaKetujuh: HiraganaViewController {
    
    // Variable
    @IBOutlet weak var toriKetujuhButton: UIButton!
    @IBOutlet weak var nekoKetujuhButton: UIButton!
    @IBOutlet weak var mendoriKetujuhButton: UIButton!
    @IBOutlet weak var inuKetujuhButton: UIButton!
    
    var toriAudioPlayer = AVAudioPlayer()
    var nekoAudioPlayer = AVAudioPlayer()
    var mendoriAudioPlayer = AVAudioPlayer()
    var inuAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            toriAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "tori", ofType: "m4a")!))
            toriAudioPlayer.prepareToPlay()
            
            nekoAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "neko", ofType: "m4a")!))
            nekoAudioPlayer.prepareToPlay()
            
            mendoriAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "mendori", ofType: "m4a")!))
            mendoriAudioPlayer.prepareToPlay()
            
            inuAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "inu", ofType: "m4a")!))
            inuAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        toriKetujuhButton.layer.cornerRadius = 12
        toriKetujuhButton.layer.borderWidth = 0.1
        toriKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                    
        nekoKetujuhButton.layer.cornerRadius = 12
        nekoKetujuhButton.layer.borderWidth = 0.1
        nekoKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        mendoriKetujuhButton.layer.cornerRadius = 12
        mendoriKetujuhButton.layer.borderWidth = 0.1
        mendoriKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        inuKetujuhButton.layer.cornerRadius = 12
        inuKetujuhButton.layer.borderWidth = 0.1
        inuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        toriKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        toriKetujuhButton.layer.shadowRadius = 3
        toriKetujuhButton.layer.shadowOpacity = 0.5
        toriKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        toriKetujuhButton.clipsToBounds = true
        toriKetujuhButton.layer.masksToBounds = false
               
        nekoKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        nekoKetujuhButton.layer.shadowRadius = 3
        nekoKetujuhButton.layer.shadowOpacity = 0.5
        nekoKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        nekoKetujuhButton.clipsToBounds = true
        nekoKetujuhButton.layer.masksToBounds = false
               
        mendoriKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        mendoriKetujuhButton.layer.shadowRadius = 3
        mendoriKetujuhButton.layer.shadowOpacity = 0.5
        mendoriKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        mendoriKetujuhButton.clipsToBounds = true
        mendoriKetujuhButton.layer.masksToBounds = false
               
        inuKetujuhButton.layer.shadowColor = UIColor.lightGray.cgColor
        inuKetujuhButton.layer.shadowRadius = 3
        inuKetujuhButton.layer.shadowOpacity = 0.5
        inuKetujuhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        inuKetujuhButton.clipsToBounds = true
        inuKetujuhButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaBenarTujuhViewController") as! HiraganaBenarTujuhViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaSalahTujuhViewController") as! HiraganaSalahTujuhViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    
   @IBAction func toriKetujuhButton(_ sender: UIButton) {
        toriKetujuhButton.layer.borderWidth = 2
        toriKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        nekoKetujuhButton.layer.borderWidth = 0.1
        nekoKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        mendoriKetujuhButton.layer.borderWidth = 0.1
        mendoriKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inuKetujuhButton.layer.borderWidth = 0.1
        inuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
    
        sender.pulseButton()
    
        self.salah()
        
        toriAudioPlayer.play()
    }
    
    @IBAction func nekoKetujuhButton(_ sender: UIButton) {
        nekoKetujuhButton.layer.borderWidth = 2
        nekoKetujuhButton.layer.borderColor = UIColor.grass.cgColor
        
        toriKetujuhButton.layer.borderWidth = 0.1
        toriKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        mendoriKetujuhButton.layer.borderWidth = 0.1
        mendoriKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inuKetujuhButton.layer.borderWidth = 0.1
        inuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        nekoAudioPlayer.play()
    }
    
    @IBAction func mendoriKetujuhButton(_ sender: UIButton) {
        mendoriKetujuhButton.layer.borderWidth = 2
        mendoriKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        toriKetujuhButton.layer.borderWidth = 0.1
        toriKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nekoKetujuhButton.layer.borderWidth = 0.1
        nekoKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        inuKetujuhButton.layer.borderWidth = 0.1
        inuKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        mendoriAudioPlayer.play()
    }
    
    @IBAction func inuKetujuhButton(_ sender: UIButton) {
        inuKetujuhButton.layer.borderWidth = 2
        inuKetujuhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        toriKetujuhButton.layer.borderWidth = 0.1
        toriKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nekoKetujuhButton.layer.borderWidth = 0.1
        nekoKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        mendoriKetujuhButton.layer.borderWidth = 0.1
        mendoriKetujuhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        inuAudioPlayer.play()
    }
    
    @IBAction func keluarKetujuh(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class HiraganaKedelapan: HiraganaViewController {
    
    // Variable
    @IBOutlet weak var ichiKedelapanButton: UIButton!
    @IBOutlet weak var niKedelapanButton: UIButton!
    @IBOutlet weak var sanKedelapanButton: UIButton!
    @IBOutlet weak var yonKedelapanButton: UIButton!
    
    var ichiAudioPlayer = AVAudioPlayer()
    var niAudioPlayer = AVAudioPlayer()
    var sanAudioPlayer = AVAudioPlayer()
    var yonAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            ichiAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ichi", ofType: "m4a")!))
            ichiAudioPlayer.prepareToPlay()
            
            niAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ni", ofType: "m4a")!))
            niAudioPlayer.prepareToPlay()
            
            sanAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "san", ofType: "m4a")!))
            sanAudioPlayer.prepareToPlay()
            
            yonAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "yon", ofType: "m4a")!))
            yonAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        ichiKedelapanButton.layer.cornerRadius = 12
        ichiKedelapanButton.layer.borderWidth = 0.1
        ichiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        niKedelapanButton.layer.cornerRadius = 12
        niKedelapanButton.layer.borderWidth = 0.1
        niKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        sanKedelapanButton.layer.cornerRadius = 12
        sanKedelapanButton.layer.borderWidth = 0.1
        sanKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        yonKedelapanButton.layer.cornerRadius = 12
        yonKedelapanButton.layer.borderWidth = 0.1
        yonKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        ichiKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        ichiKedelapanButton.layer.shadowRadius = 3
        ichiKedelapanButton.layer.shadowOpacity = 0.5
        ichiKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        ichiKedelapanButton.clipsToBounds = true
        ichiKedelapanButton.layer.masksToBounds = false
               
        niKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        niKedelapanButton.layer.shadowRadius = 3
        niKedelapanButton.layer.shadowOpacity = 0.5
        niKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        niKedelapanButton.clipsToBounds = true
        niKedelapanButton.layer.masksToBounds = false
               
        sanKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        sanKedelapanButton.layer.shadowRadius = 3
        sanKedelapanButton.layer.shadowOpacity = 0.5
        sanKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        sanKedelapanButton.clipsToBounds = true
        sanKedelapanButton.layer.masksToBounds = false
               
        yonKedelapanButton.layer.shadowColor = UIColor.lightGray.cgColor
        yonKedelapanButton.layer.shadowRadius = 3
        yonKedelapanButton.layer.shadowOpacity = 0.5
        yonKedelapanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        yonKedelapanButton.clipsToBounds = true
        yonKedelapanButton.layer.masksToBounds = false
        
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaBenarDelapanViewController") as! HiraganaBenarDelapanViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaSalahDelapanViewController") as! HiraganaSalahDelapanViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func ichiKedelapanButton(_ sender: UIButton) {
        ichiKedelapanButton.layer.borderWidth = 2
        ichiKedelapanButton.layer.borderColor = UIColor.grass.cgColor
        
        niKedelapanButton.layer.borderWidth = 0.1
        niKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sanKedelapanButton.layer.borderWidth = 0.1
        sanKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yonKedelapanButton.layer.borderWidth = 0.1
        yonKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        ichiAudioPlayer.play()
    }
    
    @IBAction func niKedelapanButton(_ sender: UIButton) {
        niKedelapanButton.layer.borderWidth = 2
        niKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        ichiKedelapanButton.layer.borderWidth = 0.1
        ichiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sanKedelapanButton.layer.borderWidth = 0.1
        sanKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yonKedelapanButton.layer.borderWidth = 0.1
        yonKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        niAudioPlayer.play()
    }
    
    @IBAction func sanKedelapanButton(_ sender: UIButton) {
        sanKedelapanButton.layer.borderWidth = 2
        sanKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        ichiKedelapanButton.layer.borderWidth = 0.1
        ichiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        niKedelapanButton.layer.borderWidth = 0.1
        niKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        yonKedelapanButton.layer.borderWidth = 0.1
        yonKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        sanAudioPlayer.play()
    }
    
    @IBAction func yonKedelapanButton(_ sender: UIButton) {
        yonKedelapanButton.layer.borderWidth = 2
        yonKedelapanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        ichiKedelapanButton.layer.borderWidth = 0.1
        ichiKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        niKedelapanButton.layer.borderWidth = 0.1
        niKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sanKedelapanButton.layer.borderWidth = 0.1
        sanKedelapanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        yonAudioPlayer.play()
    }
    
    
    @IBAction func keluarKedelapanButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
}

class HiraganaKesembilan: HiraganaViewController {
    
    // Variable
    @IBOutlet weak var koKesembilanButton: UIButton!
    @IBOutlet weak var kiKesembilanButton: UIButton!
    @IBOutlet weak var eKesembilanButton: UIButton!
    @IBOutlet weak var waKesembilanButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    
    var koAudioPlayer = AVAudioPlayer()
    var kiAudioPlayer = AVAudioPlayer()
    var eAudioPlayer = AVAudioPlayer()
    var waAudioPlayer = AVAudioPlayer()
    var watashiwasuzukidesuAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            koAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ko", ofType: "m4a")!))
            koAudioPlayer.prepareToPlay()
            
            kiAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ki", ofType: "m4a")!))
            kiAudioPlayer.prepareToPlay()
            
            eAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "e", ofType: "m4a")!))
            eAudioPlayer.prepareToPlay()
            
            waAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "wa", ofType: "m4a")!))
            waAudioPlayer.prepareToPlay()
            
            watashiwasuzukidesuAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "watashi-wa-suzuki-desu", ofType: "m4a")!))
            watashiwasuzukidesuAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        koKesembilanButton.layer.cornerRadius = 12
        koKesembilanButton.layer.borderWidth = 0.1
        koKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        kiKesembilanButton.layer.cornerRadius = 12
        kiKesembilanButton.layer.borderWidth = 0.1
        kiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        eKesembilanButton.layer.cornerRadius = 12
        eKesembilanButton.layer.borderWidth = 0.1
        eKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        waKesembilanButton.layer.cornerRadius = 12
        waKesembilanButton.layer.borderWidth = 0.1
        waKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        soundButton.layer.cornerRadius = 8
        soundButton.layer.borderWidth = 0.1
        soundButton.layer.borderColor = UIColor.oceanBlue.cgColor
        
        // Shadow button
        koKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        koKesembilanButton.layer.shadowRadius = 3
        koKesembilanButton.layer.shadowOpacity = 0.5
        koKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        koKesembilanButton.clipsToBounds = true
        koKesembilanButton.layer.masksToBounds = false
        
        kiKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        kiKesembilanButton.layer.shadowRadius = 3
        kiKesembilanButton.layer.shadowOpacity = 0.5
        kiKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        kiKesembilanButton.clipsToBounds = true
        kiKesembilanButton.layer.masksToBounds = false
               
        eKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        eKesembilanButton.layer.shadowRadius = 3
        eKesembilanButton.layer.shadowOpacity = 0.5
        eKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        eKesembilanButton.clipsToBounds = true
        eKesembilanButton.layer.masksToBounds = false
        
        waKesembilanButton.layer.shadowColor = UIColor.lightGray.cgColor
        waKesembilanButton.layer.shadowRadius = 3
        waKesembilanButton.layer.shadowOpacity = 0.5
        waKesembilanButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        waKesembilanButton.clipsToBounds = true
        waKesembilanButton.layer.masksToBounds = false
        
        soundButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        soundButton.layer.shadowRadius = 3
        soundButton.layer.shadowOpacity = 0.5
        soundButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        soundButton.clipsToBounds = true
        soundButton.layer.masksToBounds = false
        
        watashiwasuzukidesuAudioPlayer.play()
        
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaBenarSembilanViewController") as! HiraganaBenarSembilanViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaSalahSembilanViewController") as! HiraganaSalahSembilanViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func koKesembilanButton(_ sender: UIButton) {
        koKesembilanButton.layer.borderWidth = 2
        koKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        kiKesembilanButton.layer.borderWidth = 0.1
        kiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        eKesembilanButton.layer.borderWidth = 0.1
        eKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        waKesembilanButton.layer.borderWidth = 0.1
        waKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        koAudioPlayer.play()
    }
    
    @IBAction func kiKesembilanButton(_ sender: UIButton) {
        kiKesembilanButton.layer.borderWidth = 2
        kiKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        waKesembilanButton.layer.borderWidth = 0.1
        waKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        eKesembilanButton.layer.borderWidth = 0.1
        eKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        koKesembilanButton.layer.borderWidth = 0.1
        koKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        kiAudioPlayer.play()
    }
    
    @IBAction func eKesembilanButton(_ sender: UIButton) {
        eKesembilanButton.layer.borderWidth = 2
        eKesembilanButton.layer.borderColor = UIColor.burgundy.cgColor
        
        waKesembilanButton.layer.borderWidth = 0.1
        waKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kiKesembilanButton.layer.borderWidth = 0.1
        kiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        koKesembilanButton.layer.borderWidth = 0.1
        koKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        eAudioPlayer.play()
    }
    
    @IBAction func waKesembilanButton(_ sender: UIButton) {
        waKesembilanButton.layer.borderWidth = 2
        waKesembilanButton.layer.borderColor = UIColor.grass.cgColor
        
        koKesembilanButton.layer.borderWidth = 0.1
        koKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        kiKesembilanButton.layer.borderWidth = 0.1
        kiKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        eKesembilanButton.layer.borderWidth = 0.1
        eKesembilanButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        waAudioPlayer.play()
    }
    
    @IBAction func keluarKesembilanButton(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
    
    @IBAction func soundButton(_ sender: UIButton) {
        sender.pulseButton()
        
        watashiwasuzukidesuAudioPlayer.play()
    }
    
}

class HiraganaKesepuluh: HiraganaViewController {
    
    // Variable
    @IBOutlet weak var toriKesepuluhButton: UIButton!
    @IBOutlet weak var nekoKesepuluhButton: UIButton!
    @IBOutlet weak var mendoriKesepuluhButton: UIButton!
    @IBOutlet weak var mouseKesepuluhButton: UIButton!
    
    var toriAudioPlayer = AVAudioPlayer()
    var nekoAudioPlayer = AVAudioPlayer()
    var mendoriAudioPlayer = AVAudioPlayer()
    var mouseAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
        do {
            toriAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "tori", ofType: "m4a")!))
            toriAudioPlayer.prepareToPlay()
            
            nekoAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "neko", ofType: "m4a")!))
            nekoAudioPlayer.prepareToPlay()
            
            mendoriAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "mendori", ofType: "m4a")!))
            mendoriAudioPlayer.prepareToPlay()
            
            mouseAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "mouse", ofType: "m4a")!))
            mouseAudioPlayer.prepareToPlay()
        }catch{
            print (error)
        }
        
        // Button
        toriKesepuluhButton.layer.cornerRadius = 12
        toriKesepuluhButton.layer.borderWidth = 0.1
        toriKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        nekoKesepuluhButton.layer.cornerRadius = 12
        nekoKesepuluhButton.layer.borderWidth = 0.1
        nekoKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        mendoriKesepuluhButton.layer.cornerRadius = 12
        mendoriKesepuluhButton.layer.borderWidth = 0.1
        mendoriKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
                      
        mouseKesepuluhButton.layer.cornerRadius = 12
        mouseKesepuluhButton.layer.borderWidth = 0.1
        mouseKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shadow button
        toriKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        toriKesepuluhButton.layer.shadowRadius = 3
        toriKesepuluhButton.layer.shadowOpacity = 0.5
        toriKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        toriKesepuluhButton.clipsToBounds = true
        toriKesepuluhButton.layer.masksToBounds = false
               
        nekoKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        nekoKesepuluhButton.layer.shadowRadius = 3
        nekoKesepuluhButton.layer.shadowOpacity = 0.5
        nekoKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        nekoKesepuluhButton.clipsToBounds = true
        nekoKesepuluhButton.layer.masksToBounds = false
               
        mendoriKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        mendoriKesepuluhButton.layer.shadowRadius = 3
        mendoriKesepuluhButton.layer.shadowOpacity = 0.5
        mendoriKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        mendoriKesepuluhButton.clipsToBounds = true
        mendoriKesepuluhButton.layer.masksToBounds = false
               
        mouseKesepuluhButton.layer.shadowColor = UIColor.lightGray.cgColor
        mouseKesepuluhButton.layer.shadowRadius = 3
        mouseKesepuluhButton.layer.shadowOpacity = 0.5
        mouseKesepuluhButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        mouseKesepuluhButton.clipsToBounds = true
        mouseKesepuluhButton.layer.masksToBounds = false
    }
    
    func benar() {
        let benarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaBenarSepuluhViewController") as! HiraganaBenarSepuluhViewController
        
        self.addChild(benarViewController)
        benarViewController.view.frame = self.view.frame
        self.view.addSubview(benarViewController.view)
        benarViewController.didMove(toParent: self)
    }
    
    func salah() {
        let salahViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaSalahSepuluhViewController") as! HiraganaSalahSepuluhViewController
        
        self.addChild(salahViewController)
        salahViewController.view.frame = self.view.frame
        self.view.addSubview(salahViewController.view)
        salahViewController.didMove(toParent: self)
    }
    
    @IBAction func toriKesepuluhButton(_ sender: UIButton) {
        toriKesepuluhButton.layer.borderWidth = 2
        toriKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        nekoKesepuluhButton.layer.borderWidth = 0.1
        nekoKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        mendoriKesepuluhButton.layer.borderWidth = 0.1
        mendoriKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        mouseKesepuluhButton.layer.borderWidth = 0.1
        mouseKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        toriAudioPlayer.play()
    }
    
    @IBAction func nekoKesepuluhButton(_ sender: UIButton) {
        nekoKesepuluhButton.layer.borderWidth = 2
        nekoKesepuluhButton.layer.borderColor = UIColor.grass.cgColor
        
        toriKesepuluhButton.layer.borderWidth = 0.1
        toriKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        mendoriKesepuluhButton.layer.borderWidth = 0.1
        mendoriKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        mouseKesepuluhButton.layer.borderWidth = 0.1
        mouseKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.benar()
        
        nekoAudioPlayer.play()
    }
    
    @IBAction func mendoriKesepuluhButton(_ sender: UIButton) {
        mendoriKesepuluhButton.layer.borderWidth = 2
        mendoriKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        toriKesepuluhButton.layer.borderWidth = 0.1
        toriKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nekoKesepuluhButton.layer.borderWidth = 0.1
        nekoKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        mouseKesepuluhButton.layer.borderWidth = 0.1
        mouseKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        mendoriAudioPlayer.play()
    }
    
    @IBAction func mouseKesepuluhButton(_ sender: UIButton) {
        mouseKesepuluhButton.layer.borderWidth = 2
        mouseKesepuluhButton.layer.borderColor = UIColor.burgundy.cgColor
        
        mendoriKesepuluhButton.layer.borderWidth = 0.1
        mendoriKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        toriKesepuluhButton.layer.borderWidth = 0.1
        toriKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        nekoKesepuluhButton.layer.borderWidth = 0.1
        nekoKesepuluhButton.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.pulseButton()
        
        self.salah()
        
        mouseAudioPlayer.play()
    }
    
    @IBAction func keluarKesepuluh(_ sender: UIButton) {
        let keluarViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(keluarViewController)
        keluarViewController.view.frame = self.view.frame
        self.view.addSubview(keluarViewController.view)
        keluarViewController.didMove(toParent: self)
    }
}

class HiraganaCoinViewController: HiraganaViewController {
    
    // Variable
    @IBOutlet weak var coinButton: UIButton!
    
    var badgeAudioPlayer = AVAudioPlayer()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set nama file sound dan extension
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
        
        let coinViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "HiraganaDiamondViewController") as! HiraganaDiamondViewController
        
        self.addChild(coinViewController)
        coinViewController.view.frame = self.view.frame
        self.view.addSubview(coinViewController.view)
        coinViewController.didMove(toParent: self)
        
        self.popUp()
        
        // Mengambil data koin dari db
        /*let db = Firestore.firestore()
        guard let userUid = Auth.auth().currentUser?.uid else { return }
        
        db.collection("users").document(userUid).addSnapshotListener { (snapshot, err) in
            let koin = snapshot?.data()!["coins"] as! Int
        
            // Menghitung jumlah koin
            let jumlahKoin = koin + 100
        
            // Update data koin ke db
            db.collection("users").document(userUid).updateData(["coins": jumlahKoin])
        
            //let nilai = "\(koin)" + 100 as! Int
            /*var koin = snapshot?.data()!["coins"] as! Int
            let totalKoin = 100
            
            // Menghitung jumlah koin
            if (koin>=totalKoin) {
                koin = 0
            } else {
                koin += 100
            }*/
        
        }*/
    }
}


class HiraganaDiamondViewController: HiraganaViewController {
    
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
        
        let diamondViewController = UIStoryboard(name: "Hiragana", bundle: nil).instantiateViewController(identifier: "Home") as! HomeTabBarController
        
        self.addChild(diamondViewController)
        diamondViewController.view.frame = self.view.frame
        self.view.addSubview(diamondViewController.view)
        diamondViewController.didMove(toParent: self)
    }
}
