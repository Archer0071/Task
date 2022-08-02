//
//  LaunchCollectionCell.swift
//  Task
//
//  Created by ARCHER on 02/08/2022.
//

import Foundation
import UIKit

class LaunchCollectionCell: UICollectionViewCell {
    static let reuseIdentifier = "Cell"

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
   private let Name : UILabel = {
       let label = UILabel()
       label.textColor = .white
       label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        
       return label
   }()
    
   private let BackgroundImage : UIImageView = {
        let Image = UIImageView(frame: .zero)
        Image.contentMode  = .scaleAspectFill
        Image.translatesAutoresizingMaskIntoConstraints = false
        Image.clipsToBounds = true
        Image.layer.cornerRadius = 10
        return Image
    }()
    
   
    func configureUI(){
      
        contentView.addSubview(BackgroundImage)
        contentView.addSubview(Name)
        
        
        NSLayoutConstraint.activate([
            BackgroundImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            BackgroundImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            BackgroundImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -5),
            BackgroundImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -5),
            
            
            Name.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            Name.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            Name.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            Name.topAnchor.constraint(equalTo: contentView.topAnchor)
            
        ])
        
        
    }
    func configureCell(launches:Launch){
        Name.text = launches.missionName
        BackgroundImage.image = UIImage(named: "Logo")
    }

   

}
