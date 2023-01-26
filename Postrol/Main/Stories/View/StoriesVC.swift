//
//  StoriesVC.swift
//  Postrol
//
//  Created by PSI_ErsanV on 26.01.2023.
//

import UIKit

class StoriesVC: UIViewController {
    
    @IBOutlet weak var storiesCollectionView: UICollectionView!
    @IBOutlet weak var backButton: UIButton!
    
    let storiesCell = "StoriesCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupCollectionView()
        
    }
    
    
    private func setupCollectionView() {
        storiesCollectionView.delegate = self
        storiesCollectionView.dataSource = self
        storiesCollectionView.register(.init(nibName: storiesCell, bundle: nil), forCellWithReuseIdentifier: storiesCell)
    }
    
    private func setupUI() {
        
        backButton.layer.cornerRadius = 4
        
    }
    
    
    
    
    
    @IBAction func backButton(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
    
    
    
}



extension StoriesVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellA = storiesCollectionView.dequeueReusableCell(withReuseIdentifier: storiesCell, for: indexPath) as! StoriesCell
        return cellA
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tapped cell")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (storiesCollectionView.frame.width - 20) / 2 , height: storiesCollectionView.frame.height / 1.7)
    }
    
    
    
    
}
