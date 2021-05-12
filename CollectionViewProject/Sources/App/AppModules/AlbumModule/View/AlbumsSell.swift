//
//  AlbumsSell.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 7/5/21.
//

import UIKit

class AlbumsSell: UICollectionViewCell {
    lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleToFill
        icon.layer.cornerRadius = 8
        icon.layer.masksToBounds = true
        return icon
    }()

    lazy var titleView: UILabel = {
        let titleView = UILabel()
        titleView.textColor = .white
        return titleView
    }()
    lazy var countLabel: UILabel = {
        let countLabel = UILabel()
        countLabel.textColor = .lightGray
        return countLabel
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func setupHierarchy() {
        addSubviews(icon, titleView, countLabel)
    }

    func setupLayout() {
        icon.addConstraints(top: contentView.topAnchor, paddingTop: 20, left: contentView.leadingAnchor, bottom: contentView.bottomAnchor)
        titleView.addConstraints(top: icon.bottomAnchor, left: icon.leadingAnchor)
        countLabel.addConstraints(top: titleView.bottomAnchor, left: icon.leadingAnchor)
    }
}
