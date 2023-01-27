//
//  FavoriteFollowingsVC.swift
//  Postrol
//
//  Created by PSI_ErsanV on 27.01.2023.
//

import UIKit

class FavoriteFollowingsVC: UIViewController {
    
    @IBOutlet weak var favoriteFollowingTableView: UITableView!
    

    let favoriteFollowings = "FavoriteFollowingsCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

       setupTableView()
        
    }
    

    private func setupTableView() {
        favoriteFollowingTableView.delegate = self
        favoriteFollowingTableView.dataSource = self
        favoriteFollowingTableView.register(.init(nibName: favoriteFollowings, bundle: nil), forCellReuseIdentifier: favoriteFollowings)
    }
  

}


extension FavoriteFollowingsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = favoriteFollowingTableView.dequeueReusableCell(withIdentifier: favoriteFollowings) as! FavoriteFollowingsCell
        cell.selectionStyle = .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped tableview")
    }
    
    
    
}
