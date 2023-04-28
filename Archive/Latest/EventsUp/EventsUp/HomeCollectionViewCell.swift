//
//  HomeCollectionViewCell.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 4/27/23.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var imagsOL: UIImageView!
  
    func assignMovie(with image: UIImage){
      //  print("zdhgfjHSDbjhdzbgfjabkydb",image)
        imagsOL.image = image
        }
}
