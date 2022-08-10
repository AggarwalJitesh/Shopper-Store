//
//  DashboardViewController.swift
//  Shooooping
//
//  Created by Jitesh Aggarwal on 10/08/22.
//

import UIKit
import FirebaseAuth

class DashboardViewController: UIViewController, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var messeges:[Messege] = [
        Messege(name: "Apple", price: 90 , img: #imageLiteral(resourceName: "apple")),
        Messege(name: "Kiwi", price: 190, img: #imageLiteral(resourceName: "kiwi")),
        Messege(name: "Banana", price: 60, img: #imageLiteral(resourceName: "banana")),
        Messege(name: "Oranges", price: 120, img: #imageLiteral(resourceName: "oranges")),
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self

        title = "SHOPPERS MART"
        navigationItem.hidesBackButton = true
        
        tableView.register(UINib(nibName: "DisplayCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
    do {
      try Auth.auth().signOut()
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
      
        
        
    }
    

}

extension DashboardViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messeges.count
    }
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
    as! DisplayCell
    
    cell.nameLabel.text = messeges[indexPath.row].name
    cell.priceLabel.text = String( messeges[indexPath.row].price)
    cell.imageView?.image =  messeges[indexPath.row].img
    

    return cell
    
    
}
    
    

}
