//
//  Strength.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 17/12/19.
//  Copyright © 2019 Dwikky Mardianto. All rights reserved.
//

import UIKit
import Firebase

class StrengthViewController: UIViewController {

    // Variable
    @IBOutlet weak var strengthButton: UIButton!
    var arrayOfNames = [String]()
    
    // Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        strengthButton.layer.cornerRadius = 12
        
        // Shadow button
        strengthButton.layer.shadowColor = UIColor.oceanBlue.cgColor
        strengthButton.layer.shadowRadius = 3
        strengthButton.layer.shadowOpacity = 0.5
        strengthButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        strengthButton.clipsToBounds = true
        strengthButton.layer.masksToBounds = false
        
        arrayOfNames = ["Hiragana","Katakana", "Negara", "Profesi"]
        
        /*if strengthButton.isSelected{
            transisiHome()
        }*/
        // Do any additional setup after loading the view.
    }
    
   /* func transisiHome() {
        let home = self.storyboard?.instantiateViewController(identifier: Constant.Storyboard.homeStoryboard) as? HomeTabBarController
        
        view.window?.rootViewController = home
        view.window?.makeKeyAndVisible()
    } */
    
    @IBAction func strengthButton(_ sender: UIButton) {
        sender.pulseButton()
        
        let numberOfNames = UInt32(arrayOfNames.count)
        let randomNumber = Int(arc4random() % numberOfNames)
        let vcName = arrayOfNames[randomNumber]
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(identifier: vcName)
        
        self.present(vc, animated: false, completion: nil)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
