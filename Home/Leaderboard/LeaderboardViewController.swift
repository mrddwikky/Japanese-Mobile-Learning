//
//  Leaderboard.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 17/12/19.
//  Copyright © 2019 Dwikky Mardianto. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LeaderboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    // Variable
    var username = [String]()
    var koin = [Int] ()
    
    @IBOutlet weak var akunView: UIView!
    
    @IBOutlet weak var akunImageView: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var koinTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    //Methode
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self
    
        // View
        akunView.layer.borderWidth = 0.1
        akunView.layer.borderColor = UIColor.lightGray.cgColor
        akunView.layer.cornerRadius = 12
        
        // Shadow view
        akunView.layer.shadowColor = UIColor.lightGray.cgColor
        akunView.layer.shadowRadius = 3
        akunView.layer.shadowOpacity = 0.3
        akunView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        ambilData()

        // Do any additional setup after loading the view.
        
    }
    
    func ambilData(){
           let db = Firestore.firestore()
           guard let userUid = Auth.auth().currentUser?.uid else { return }
           
           // Mengambil data dari db untuk akunView
           db.collection("users").document(userUid).addSnapshotListener { (snapshot, err) in
               let username = snapshot?.data()!["username"] as? String
               let coins = snapshot?.data()!["coins"] as? Int
               
               self.usernameLabel.text = "\(username ?? "")"
                   
               self.koinTextField.text = "\(coins ?? 0)"
           }
           
           // Mengambil data dari db untuk tableView
           db.collection("users").order(by: "coins", descending: true).getDocuments { (snapshot, err) in
               if let err = err {
                   print("Error getting documents: \(err)")
               } else {
                   for document in snapshot!.documents {
                       let username = document.data()["username"] as? String
                       let coins = document.data()["coins"] as? Int
                       
                       self.username.append(username ?? "")
                      // self.rankUsernameLabel.text = "\(username ?? "")"
                   
                       self.koin.append(coins ?? 0)
                      // self.rankKoinTextField.text = "\(coins ?? 0)"
                   }
               }
               print(self.username)
               print(self.koin) // <-- This prints the content in db correctly
               
               self.tableView.reloadData()
            
           }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return koin.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeaderboardCell", for: indexPath) as! LeaderboardTableViewCell
        
        let usernameRank = username[indexPath.row]
        let koinRank = koin[indexPath.row]
        
        
        cell.usernameRankLabel.text = "\(usernameRank)"
        cell.koinRankTextField.text = "\(koinRank)"
        
        
        return cell
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
