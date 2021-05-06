//
//  CollectionViewCell.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 5/5/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    lazy var cardView: UIView = {
        let cardView = UIView()
        return cardView
    }()

    lazy var imageView: UIView = {
        let imageView = UIView()
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupViews(){
        backgroundColor = UIColor.red
    }    
}
