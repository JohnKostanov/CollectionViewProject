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
//        icon.contentMode = .scaleToFill
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
        addSubview(icon)
        addSubview(titleView)
        addSubview(countLabel)
    }

    func setupLayout() {
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        icon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        icon.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true

        titleView.translatesAutoresizingMaskIntoConstraints = false
        titleView.topAnchor.constraint(equalTo: icon.bottomAnchor).isActive = true
        titleView.leadingAnchor.constraint(equalTo: icon.leadingAnchor).isActive = true

        countLabel.translatesAutoresizingMaskIntoConstraints = false
        countLabel.topAnchor.constraint(equalTo: titleView.bottomAnchor).isActive = true
        countLabel.leadingAnchor.constraint(equalTo: icon.leadingAnchor).isActive = true
    }
}
