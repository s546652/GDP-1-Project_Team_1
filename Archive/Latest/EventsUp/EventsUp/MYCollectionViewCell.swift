//
//  MYCollectionViewCell.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 4/13/23.
//

import UIKit

class MYCollectionViewCell: UICollectionViewCell {

    @IBOutlet var imageView: UIImageView!
    
    
    static let identifier = "MYCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    public func configure(with image: UIImage){
        
        imageView.image = image
        
    }
    
    static func nib()-> UINib{
        return UINib(nibName: "MYCollectionViewCell", bundle: nil)
    }
    
    
    
    

}
