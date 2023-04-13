//
//  ViewControllerHOME.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 4/13/23.
//

import UIKit

class ViewControllerHOME: UIViewController {

    
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
//        layout.itemSize = CGSize(width: (view.frame.size.width/3)-3, height: (view.frame.size.width/3)-3)
        collectionView.collectionViewLayout = layout
        
        
        collectionView.register(MYCollectionViewCell.nib(), forCellWithReuseIdentifier: MYCollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    

}

extension ViewControllerHOME: UICollectionViewDelegate{
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        print("You tapped me")
    }
}

extension ViewControllerHOME: UICollectionViewDataSource{
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MYCollectionViewCell.identifier, for: indexPath) as! MYCollectionViewCell
        
        cell.configure(with: UIImage(named: "img3")!)
        
        return cell
    }
    
    
}

extension ViewControllerHOME: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath)->CGSize{
        return CGSize(width: (view.frame.size.width/1), height: (view.frame.size.width/1))
    }
    
}
  
