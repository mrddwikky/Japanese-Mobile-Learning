//
//  KatakanaSalahViewController.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 21/01/20.
//  Copyright © 2020 Dwikky Mardianto. All rights reserved.
//

import UIKit

class KatakanaSalahViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func fromRight() {
        self.view.transform = CGAffineTransform(translationX: self.view.frame.size.width, y: 0)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, options: .curveEaseInOut, animations: {
            self.view.transform = CGAffineTransform(translationX: 0, y: 0)
            
        })
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

class KatakanaSalahSatuViewController: KatakanaSalahViewController {
    
    // Variable
    @IBOutlet weak var perbaiki1Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        perbaiki1Button.layer.cornerRadius = 12
        perbaiki1Button.layer.borderWidth = 0.5
        perbaiki1Button.layer.borderColor = UIColor.darkRed.cgColor
                      
        //ShadowButton
        perbaiki1Button.layer.shadowColor = UIColor.darkRed.cgColor
        perbaiki1Button.layer.shadowRadius = 3
        perbaiki1Button.layer.shadowOpacity = 0.5
        perbaiki1Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perbaiki1Button.clipsToBounds = true
        perbaiki1Button.layer.masksToBounds = false
        
    }
    
    @IBAction func perbaiki1Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let perbaiki1ViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaPertama") as! KatakanaPertama
        
        self.addChild(perbaiki1ViewController)
        perbaiki1ViewController.view.frame = self.view.frame
        self.view.addSubview(perbaiki1ViewController.view)
        perbaiki1ViewController.didMove(toParent: self)
        
        self.fromRight()
        
    }
    
}

class KatakanaSalahDuaViewController: KatakanaSalahViewController {
    
    // Variable
    @IBOutlet weak var perbaiki2Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        perbaiki2Button.layer.cornerRadius = 12
        perbaiki2Button.layer.borderWidth = 0.5
        perbaiki2Button.layer.borderColor = UIColor.darkRed.cgColor
                      
        //ShadowButton
        perbaiki2Button.layer.shadowColor = UIColor.darkRed.cgColor
        perbaiki2Button.layer.shadowRadius = 3
        perbaiki2Button.layer.shadowOpacity = 0.5
        perbaiki2Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perbaiki2Button.clipsToBounds = true
        perbaiki2Button.layer.masksToBounds = false
        
    }

    @IBAction func perbaiki2Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let perbaiki2ViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaKedua") as! KatakanaKedua
        
        self.addChild(perbaiki2ViewController)
        perbaiki2ViewController.view.frame = self.view.frame
        self.view.addSubview(perbaiki2ViewController.view)
        perbaiki2ViewController.didMove(toParent: self)
        
        self.fromRight()
    }
    
}

class KatakanaSalahTigaViewController: KatakanaSalahViewController {
    
    // Variable
    @IBOutlet weak var perbaiki3Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        perbaiki3Button.layer.cornerRadius = 12
        perbaiki3Button.layer.borderWidth = 0.5
        perbaiki3Button.layer.borderColor = UIColor.darkRed.cgColor
                      
        //ShadowButton
        perbaiki3Button.layer.shadowColor = UIColor.darkRed.cgColor
        perbaiki3Button.layer.shadowRadius = 3
        perbaiki3Button.layer.shadowOpacity = 0.5
        perbaiki3Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perbaiki3Button.clipsToBounds = true
        perbaiki3Button.layer.masksToBounds = false
        
    }
    
    @IBAction func perbaiki3Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let perbaiki3ViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaKetiga") as! KatakanaKetiga
        
        self.addChild(perbaiki3ViewController)
        perbaiki3ViewController.view.frame = self.view.frame
        self.view.addSubview(perbaiki3ViewController.view)
        perbaiki3ViewController.didMove(toParent: self)
        
        self.fromRight()
    }
    
}

class KatakanaSalahEmpatViewController: KatakanaSalahViewController {
    
    // Variable
    @IBOutlet weak var perbaiki4Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        perbaiki4Button.layer.cornerRadius = 12
        perbaiki4Button.layer.borderWidth = 0.5
        perbaiki4Button.layer.borderColor = UIColor.darkRed.cgColor
                      
        //ShadowButton
        perbaiki4Button.layer.shadowColor = UIColor.darkRed.cgColor
        perbaiki4Button.layer.shadowRadius = 3
        perbaiki4Button.layer.shadowOpacity = 0.5
        perbaiki4Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perbaiki4Button.clipsToBounds = true
        perbaiki4Button.layer.masksToBounds = false
        
    }
    
    @IBAction func perbaiki5Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let perbaiki4ViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaKeempat") as! KatakanaKeempat
        
        self.addChild(perbaiki4ViewController)
        perbaiki4ViewController.view.frame = self.view.frame
        self.view.addSubview(perbaiki4ViewController.view)
        perbaiki4ViewController.didMove(toParent: self)
        
        self.fromRight()
    }
    

}

class KatakanaSalahLimaViewController: KatakanaSalahViewController {
    
    // Variable
    @IBOutlet weak var perbaiki5Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        perbaiki5Button.layer.cornerRadius = 12
        perbaiki5Button.layer.borderWidth = 0.5
        perbaiki5Button.layer.borderColor = UIColor.darkRed.cgColor
                      
        //ShadowButton
        perbaiki5Button.layer.shadowColor = UIColor.darkRed.cgColor
        perbaiki5Button.layer.shadowRadius = 3
        perbaiki5Button.layer.shadowOpacity = 0.5
        perbaiki5Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perbaiki5Button.clipsToBounds = true
        perbaiki5Button.layer.masksToBounds = false
        
    }
    
    @IBAction func perbaiki5Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let perbaiki5ViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaKelima") as! KatakanaKelima
        
        self.addChild(perbaiki5ViewController)
        perbaiki5ViewController.view.frame = self.view.frame
        self.view.addSubview(perbaiki5ViewController.view)
        perbaiki5ViewController.didMove(toParent: self)
        
        self.fromRight()
    }
    
}

class KatakanaSalahEnamViewController: KatakanaSalahViewController {
    
    // Variable
    @IBOutlet weak var perbaiki6Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        perbaiki6Button.layer.cornerRadius = 12
        perbaiki6Button.layer.borderWidth = 0.5
        perbaiki6Button.layer.borderColor = UIColor.darkRed.cgColor
                      
        //ShadowButton
        perbaiki6Button.layer.shadowColor = UIColor.darkRed.cgColor
        perbaiki6Button.layer.shadowRadius = 3
        perbaiki6Button.layer.shadowOpacity = 0.5
        perbaiki6Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perbaiki6Button.clipsToBounds = true
        perbaiki6Button.layer.masksToBounds = false
        
    }
    
    @IBAction func perbaiki6Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let perbaiki6ViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaKeenam") as! KatakanaKeenam
        
        self.addChild(perbaiki6ViewController)
        perbaiki6ViewController.view.frame = self.view.frame
        self.view.addSubview(perbaiki6ViewController.view)
        perbaiki6ViewController.didMove(toParent: self)
        
        self.fromRight()
    }
    
}

class KatakanaSalahTujuhViewController: KatakanaSalahViewController {
    
    // Variable
    @IBOutlet weak var perbaiki7Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        perbaiki7Button.layer.cornerRadius = 12
        perbaiki7Button.layer.borderWidth = 0.5
        perbaiki7Button.layer.borderColor = UIColor.darkRed.cgColor
                      
        //ShadowButton
        perbaiki7Button.layer.shadowColor = UIColor.darkRed.cgColor
        perbaiki7Button.layer.shadowRadius = 3
        perbaiki7Button.layer.shadowOpacity = 0.5
        perbaiki7Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perbaiki7Button.clipsToBounds = true
        perbaiki7Button.layer.masksToBounds = false
        
    }
    
    @IBAction func perbaiki7Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let perbaiki7ViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaKetujuh") as! KatakanaKetujuh
        
        self.addChild(perbaiki7ViewController)
        perbaiki7ViewController.view.frame = self.view.frame
        self.view.addSubview(perbaiki7ViewController.view)
        perbaiki7ViewController.didMove(toParent: self)
        
        self.fromRight()
    }
    
}

class KatakanaSalahDelapanViewController: KatakanaSalahViewController {
    
    // Variable
    @IBOutlet weak var perbaiki8Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        perbaiki8Button.layer.cornerRadius = 12
        perbaiki8Button.layer.borderWidth = 0.5
        perbaiki8Button.layer.borderColor = UIColor.darkRed.cgColor
                      
        //ShadowButton
        perbaiki8Button.layer.shadowColor = UIColor.darkRed.cgColor
        perbaiki8Button.layer.shadowRadius = 3
        perbaiki8Button.layer.shadowOpacity = 0.5
        perbaiki8Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perbaiki8Button.clipsToBounds = true
        perbaiki8Button.layer.masksToBounds = false
        
    }
    
    @IBAction func perbaiki8Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let perbaiki8ViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaKedelapan") as! KatakanaKedelapan
        
        self.addChild(perbaiki8ViewController)
        perbaiki8ViewController.view.frame = self.view.frame
        self.view.addSubview(perbaiki8ViewController.view)
        perbaiki8ViewController.didMove(toParent: self)
        
        self.fromRight()
    }
    
}

class KatakanaSalahSembilanViewController: KatakanaSalahViewController {
    
    // Variable
    @IBOutlet weak var perbaiki9Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        perbaiki9Button.layer.cornerRadius = 12
        perbaiki9Button.layer.borderWidth = 0.5
        perbaiki9Button.layer.borderColor = UIColor.darkRed.cgColor
                      
        //ShadowButton
        perbaiki9Button.layer.shadowColor = UIColor.darkRed.cgColor
        perbaiki9Button.layer.shadowRadius = 3
        perbaiki9Button.layer.shadowOpacity = 0.5
        perbaiki9Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perbaiki9Button.clipsToBounds = true
        perbaiki9Button.layer.masksToBounds = false
        
    }
    
    @IBAction func perbaiki9Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let perbaiki9ViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaKesembilan") as! KatakanaKesembilan
        
        self.addChild(perbaiki9ViewController)
        perbaiki9ViewController.view.frame = self.view.frame
        self.view.addSubview(perbaiki9ViewController.view)
        perbaiki9ViewController.didMove(toParent: self)
        
        self.fromRight()
    }
    
}

class KatakanaSalahSepuluhViewController: KatakanaSalahViewController {
    
    // Variable
    @IBOutlet weak var perbaiki10Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        perbaiki10Button.layer.cornerRadius = 12
        perbaiki10Button.layer.borderWidth = 0.5
        perbaiki10Button.layer.borderColor = UIColor.darkRed.cgColor
                      
        //ShadowButton
        perbaiki10Button.layer.shadowColor = UIColor.darkRed.cgColor
        perbaiki10Button.layer.shadowRadius = 3
        perbaiki10Button.layer.shadowOpacity = 0.5
        perbaiki10Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        perbaiki10Button.clipsToBounds = true
        perbaiki10Button.layer.masksToBounds = false
    
    }
    
    @IBAction func perbaiki10Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let perbaiki10ViewController = UIStoryboard(name: "Katakana", bundle: nil).instantiateViewController(identifier: "KatakanaKesepuluh") as! KatakanaKesepuluh
        
        self.addChild(perbaiki10ViewController)
        perbaiki10ViewController.view.frame = self.view.frame
        self.view.addSubview(perbaiki10ViewController.view)
        perbaiki10ViewController.didMove(toParent: self)
        
        self.fromRight()
    }
    
}

