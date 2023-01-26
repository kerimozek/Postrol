//
//  LostFollowersVC.swift
//  Postrol
//
//  Created by PSI_ErsanV on 26.01.2023.
//

import UIKit

class LostFollowersVC: UIViewController {

    @IBOutlet weak var lostFollowersTableView: UITableView!
    
    let lostFollowers = "LostFollowersCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

       setupTableView()
        
    }
    

    private func setupTableView() {
        lostFollowersTableView.delegate = self
        lostFollowersTableView.dataSource = self
        lostFollowersTableView.register(.init(nibName: lostFollowers, bundle: nil), forCellReuseIdentifier: lostFollowers)
    }
  

}


extension LostFollowersVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = lostFollowersTableView.dequeueReusableCell(withIdentifier: lostFollowers) as! LostFollowersCell
        cell.selectionStyle = .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped tableview")
    }
    
    
    
}
