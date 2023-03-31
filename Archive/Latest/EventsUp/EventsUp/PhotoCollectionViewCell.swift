//
//  PhotoCollectionViewCell.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 3/31/23.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    
    static let identifier = "PhotoCollectionViewCell"
    
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images = [
        UIImage(named: "img1"),
        UIImage(named: "img2"),
        UIImage(named: "img3"),
        UIImage(named: "img4"),
        UIImage(named: "img5"),
        UIImage(named: "img6"),
        UIImage(named: "img7"),
        UIImage(named: "img8"),
        UIImage(named: "img9"),
        UIImage(named: "img10"),
        UIImage(named: "img11")
        
        ].compactMap({ $0 })
        imageView.image = images.randomElement()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
    
    
}
