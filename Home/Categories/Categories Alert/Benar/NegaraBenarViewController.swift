//
//  NegaraBenarViewController.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 21/01/20.
//  Copyright © 2020 Dwikky Mardianto. All rights reserved.
//

import UIKit

class NegaraBenarViewController: UIViewController {

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

class NegaraBenarSatuViewController: NegaraBenarViewController {
    
    //Variable
    @IBOutlet weak var lanjut1Button: UIButton!
    
    //Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        lanjut1Button.layer.cornerRadius = 12
        lanjut1Button.layer.borderWidth = 0.5
        lanjut1Button.layer.borderColor = UIColor.oldGreen.cgColor
        
        //ShadowButton
        lanjut1Button.layer.shadowColor = UIColor.oldGreen.cgColor
        lanjut1Button.layer.shadowRadius = 3
        lanjut1Button.layer.shadowOpacity = 0.5
        lanjut1Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lanjut1Button.clipsToBounds = true
        lanjut1Button.layer.masksToBounds = false
        
    }
    
    @IBAction func lanjut1Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let lanjut1ViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraKedua") as! NegaraKedua
        
        self.addChild(lanjut1ViewController)
        lanjut1ViewController.view.frame = self.view.frame
        self.view.addSubview(lanjut1ViewController.view)
        lanjut1ViewController.didMove(toParent: self)
        
        self.fromRight()
    }
    
    
    
}

class NegaraBenarDuaViewController: NegaraBenarViewController {

    // Variable
    @IBOutlet weak var lanjut2Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        lanjut2Button.layer.cornerRadius = 12
        lanjut2Button.layer.borderWidth = 0.5
        lanjut2Button.layer.borderColor = UIColor.oldGreen.cgColor
               
        //ShadowButton
        lanjut2Button.layer.shadowColor = UIColor.oldGreen.cgColor
        lanjut2Button.layer.shadowRadius = 3
        lanjut2Button.layer.shadowOpacity = 0.5
        lanjut2Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lanjut2Button.clipsToBounds = true
        lanjut2Button.layer.masksToBounds = false
        
    }
    
    @IBAction func lanjut2Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let lanjut2ViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraKetiga") as! NegaraKetiga
        
        self.addChild(lanjut2ViewController)
        lanjut2ViewController.view.frame = self.view.frame
        self.view.addSubview(lanjut2ViewController.view)
        lanjut2ViewController.didMove(toParent: self)
        
        self.fromRight()

    }
    
}

class NegaraBenarTigaViewController: NegaraBenarViewController {
   
    // Variable
    @IBOutlet weak var lanjut3Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        lanjut3Button.layer.cornerRadius = 12
        lanjut3Button.layer.borderWidth = 0.5
        lanjut3Button.layer.borderColor = UIColor.oldGreen.cgColor
               
        //ShadowButton
        lanjut3Button.layer.shadowColor = UIColor.oldGreen.cgColor
        lanjut3Button.layer.shadowRadius = 3
        lanjut3Button.layer.shadowOpacity = 0.5
        lanjut3Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lanjut3Button.clipsToBounds = true
        lanjut3Button.layer.masksToBounds = false
        
    }
    
    @IBAction func lanjut3Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let lanjut3ViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraKeempat") as! NegaraKeempat
        
        self.addChild(lanjut3ViewController)
        lanjut3ViewController.view.frame = self.view.frame
        self.view.addSubview(lanjut3ViewController.view)
        lanjut3ViewController.didMove(toParent: self)
        
        self.fromRight()

    }
    
}

class NegaraBenarEmpatViewController: NegaraBenarViewController {
    
    // Variable
    @IBOutlet weak var lanjut4Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        lanjut4Button.layer.cornerRadius = 12
        lanjut4Button.layer.borderWidth = 0.5
        lanjut4Button.layer.borderColor = UIColor.oldGreen.cgColor
               
        //ShadowButton
        lanjut4Button.layer.shadowColor = UIColor.oldGreen.cgColor
        lanjut4Button.layer.shadowRadius = 3
        lanjut4Button.layer.shadowOpacity = 0.5
        lanjut4Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lanjut4Button.clipsToBounds = true
        lanjut4Button.layer.masksToBounds = false
        
    }
    
    @IBAction func lanjut4Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let lanjut4ViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraKelima") as! NegaraKelima
        
        self.addChild(lanjut4ViewController)
        lanjut4ViewController.view.frame = self.view.frame
        self.view.addSubview(lanjut4ViewController.view)
        lanjut4ViewController.didMove(toParent: self)
        
        self.fromRight()

    }
    
}

class NegaraBenarLimaViewController: NegaraBenarViewController {
    
    // Variable
    @IBOutlet weak var lanjut5Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        lanjut5Button.layer.cornerRadius = 12
        lanjut5Button.layer.borderWidth = 0.5
        lanjut5Button.layer.borderColor = UIColor.oldGreen.cgColor
               
        //ShadowButton
        lanjut5Button.layer.shadowColor = UIColor.oldGreen.cgColor
        lanjut5Button.layer.shadowRadius = 3
        lanjut5Button.layer.shadowOpacity = 0.5
        lanjut5Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lanjut5Button.clipsToBounds = true
        lanjut5Button.layer.masksToBounds = false
        
    }
    
    @IBAction func lanjut5Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let lanjut5ViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraKeenam") as! NegaraKeenam
        
        self.addChild(lanjut5ViewController)
        lanjut5ViewController.view.frame = self.view.frame
        self.view.addSubview(lanjut5ViewController.view)
        lanjut5ViewController.didMove(toParent: self)
        
        self.fromRight()


    }
    
}

class NegaraBenarEnamViewController: NegaraBenarViewController {
    
    // Variable
    @IBOutlet weak var lanjut6Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        lanjut6Button.layer.cornerRadius = 12
        lanjut6Button.layer.borderWidth = 0.5
        lanjut6Button.layer.borderColor = UIColor.oldGreen.cgColor
               
        //ShadowButton
        lanjut6Button.layer.shadowColor = UIColor.oldGreen.cgColor
        lanjut6Button.layer.shadowRadius = 3
        lanjut6Button.layer.shadowOpacity = 0.5
        lanjut6Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lanjut6Button.clipsToBounds = true
        lanjut6Button.layer.masksToBounds = false
        
    }
    
    @IBAction func lanjut6Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let lanjut6ViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraKetujuh") as! NegaraKetujuh
        
        self.addChild(lanjut6ViewController)
        lanjut6ViewController.view.frame = self.view.frame
        self.view.addSubview(lanjut6ViewController.view)
        lanjut6ViewController.didMove(toParent: self)
        
        self.fromRight()

    }
    
}

class NegaraBenarTujuhViewController: NegaraBenarViewController {
    
    // Variable
    @IBOutlet weak var lanjut7Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        lanjut7Button.layer.cornerRadius = 12
        lanjut7Button.layer.borderWidth = 0.5
        lanjut7Button.layer.borderColor = UIColor.oldGreen.cgColor
               
        //ShadowButton
        lanjut7Button.layer.shadowColor = UIColor.oldGreen.cgColor
        lanjut7Button.layer.shadowRadius = 3
        lanjut7Button.layer.shadowOpacity = 0.5
        lanjut7Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lanjut7Button.clipsToBounds = true
        lanjut7Button.layer.masksToBounds = false
        
    }
    
    @IBAction func lanjut7Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let lanjut7ViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraKedelapan") as! NegaraKedelapan
        
        self.addChild(lanjut7ViewController)
        lanjut7ViewController.view.frame = self.view.frame
        self.view.addSubview(lanjut7ViewController.view)
        lanjut7ViewController.didMove(toParent: self)
        
        self.fromRight()

    }
    
}

class NegaraBenarDelapanViewController: NegaraBenarViewController {
    
    // Variable
    @IBOutlet weak var lanjut8Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        lanjut8Button.layer.cornerRadius = 12
        lanjut8Button.layer.borderWidth = 0.5
        lanjut8Button.layer.borderColor = UIColor.oldGreen.cgColor
               
        //ShadowButton
        lanjut8Button.layer.shadowColor = UIColor.oldGreen.cgColor
        lanjut8Button.layer.shadowRadius = 3
        lanjut8Button.layer.shadowOpacity = 0.5
        lanjut8Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lanjut8Button.clipsToBounds = true
        lanjut8Button.layer.masksToBounds = false
        
    }
    
    @IBAction func lanjut8Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let lanjut8ViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraKesembilan") as! NegaraKesembilan
        
        self.addChild(lanjut8ViewController)
        lanjut8ViewController.view.frame = self.view.frame
        self.view.addSubview(lanjut8ViewController.view)
        lanjut8ViewController.didMove(toParent: self)
        
        self.fromRight()

    }
    
}

class NegaraBenarSembilanViewController: NegaraBenarViewController {
    
    // Variable
    @IBOutlet weak var lanjut9Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        lanjut9Button.layer.cornerRadius = 12
        lanjut9Button.layer.borderWidth = 0.5
        lanjut9Button.layer.borderColor = UIColor.oldGreen.cgColor
               
        //ShadowButton
        lanjut9Button.layer.shadowColor = UIColor.oldGreen.cgColor
        lanjut9Button.layer.shadowRadius = 3
        lanjut9Button.layer.shadowOpacity = 0.5
        lanjut9Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lanjut9Button.clipsToBounds = true
        lanjut9Button.layer.masksToBounds = false
        
    }
    
    @IBAction func lanju9Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let lanjut9ViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraKesepuluh") as! NegaraKesepuluh
        
        self.addChild(lanjut9ViewController)
        lanjut9ViewController.view.frame = self.view.frame
        self.view.addSubview(lanjut9ViewController.view)
        lanjut9ViewController.didMove(toParent: self)
        
        self.fromRight()

    }
    
}

class NegaraBenarSepuluhViewController: NegaraBenarViewController {
    
    // Variable
    @IBOutlet weak var lanjut10Button: UIButton!
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        lanjut10Button.layer.cornerRadius = 12
        lanjut10Button.layer.borderWidth = 0.5
        lanjut10Button.layer.borderColor = UIColor.oldGreen.cgColor
               
        //ShadowButton
        lanjut10Button.layer.shadowColor = UIColor.oldGreen.cgColor
        lanjut10Button.layer.shadowRadius = 3
        lanjut10Button.layer.shadowOpacity = 0.5
        lanjut10Button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        lanjut10Button.clipsToBounds = true
        lanjut10Button.layer.masksToBounds = false
        
    }
    
    @IBAction func lanjut10Button(_ sender: UIButton) {
        sender.pulseButton()
        
        let lanjut10ViewController = UIStoryboard(name: "Negara", bundle: nil).instantiateViewController(identifier: "NegaraCoinViewController") as! NegaraCoinViewController
        
        self.addChild(lanjut10ViewController)
        lanjut10ViewController.view.frame = self.view.frame
        self.view.addSubview(lanjut10ViewController.view)
        lanjut10ViewController.didMove(toParent: self)
        
        self.popUp()

    }
    
}


