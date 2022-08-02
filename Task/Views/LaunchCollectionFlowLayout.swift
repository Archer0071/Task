//
//  LaunchCollectionLayout.swift
//  Task
//
//  Created by ARCHER on 02/08/2022.
//

import Foundation
import UIKit

class LaunchCollectionLayout:UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        self.scrollDirection = .vertical
        self.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        self.itemSize = CGSize(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.height/3)
        self.minimumInteritemSpacing = 0
        self.minimumLineSpacing = 0
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
