//
//  LoginVC.swift
//  Postrol
//
//  Created by PSI_ErsanV on 27.01.2023.
//

import UIKit

class LoginVC: UIViewController {

    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.layer.cornerRadius = 6
       
        
    }
    

    @IBAction func loginButtonTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let tabBar = storyboard.instantiateViewController(identifier: "tabBar")
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(tabBar)
        }
        
    

}
