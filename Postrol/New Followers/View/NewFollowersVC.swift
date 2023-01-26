//
//  NewFollowersVC.swift
//  Postrol
//
//  Created by PSI_ErsanV on 26.01.2023.
//

import UIKit

class NewFollowersVC: UIViewController {

    
    @IBOutlet weak var newFollowersTableView: UITableView!
    
    let newFollowers = "NewFollowersCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

       setupTableView()
        
    }
    

    private func setupTableView() {
        newFollowersTableView.delegate = self
        newFollowersTableView.dataSource = self
        newFollowersTableView.register(.init(nibName: newFollowers, bundle: nil), forCellReuseIdentifier: newFollowers)
    }
  

}


extension NewFollowersVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newFollowersTableView.dequeueReusableCell(withIdentifier: newFollowers) as! NewFollowersCell
        cell.selectionStyle = .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped tableview")
    }
    
    
    
}
