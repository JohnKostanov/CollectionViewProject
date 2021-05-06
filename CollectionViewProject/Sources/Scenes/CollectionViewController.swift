//
//  CollectionViewController.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 4/5/21.
//

import UIKit

class CollectionViewController: UIViewController {

    let arrayCell = Albums.getSettings()

    lazy var titleAlbums: UILabel = {
        let titleAlbums = UILabel()
        titleAlbums.textColor = .white
        titleAlbums.text = arrayCell[0].title
        titleAlbums.font = UIFont(name: "Menlo", size: 25)
        return titleAlbums
    }()

    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height), collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")

        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        hierarchyView()
        setupLayout()
    }

    func hierarchyView() {
        view.addSubview(titleAlbums)
        view.addSubview(collectionView)
    }
    func setupLayout() {
        titleAlbums.translatesAutoresizingMaskIntoConstraints = false
        titleAlbums.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        titleAlbums.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        titleAlbums.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 5).isActive = true

        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: titleAlbums.bottomAnchor, constant: 20).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }

}

extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayCell[section].countAlbums.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = arrayCell[indexPath.section].countAlbums[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.icon.image = data.imageAlbum
        cell.titleView.text = data.nameAlbum
        cell.countLabel.text = String(data.countImages)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.bounds.width / 2) - 5, height: (view.bounds.width / 2) - 5)
    }

}
