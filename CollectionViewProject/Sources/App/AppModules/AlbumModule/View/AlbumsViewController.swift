//
//  AlbumsViewController.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 7/5/21.
//

import UIKit

class AlbumsViewController: UIViewController {

    var presenter: AlbumsViewOutput?

    var albumsArray: [AlbumsModel] = []

    lazy var titleAlbums: UILabel = {
        let titleAlbums = UILabel()
        titleAlbums.textColor = .white
        titleAlbums.font = UIFont(name: "Times New Roman", size: 30)
        return titleAlbums
    }()

    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height), collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(AlbumsSell.self, forCellWithReuseIdentifier: "cell")
    
        return collectionView
    }()

    override func viewDidLoad() {
        self.title = "Альбомы"
        titleAlbums.text = "Мои альбомы"
        hierarchyView()
        setupLayout()
        presenter?.startFetchingAlbums()
    }

    func hierarchyView() {
        view.addSubviews(titleAlbums, collectionView)
    }

    func setupLayout() {
        titleAlbums.addConstraints(top: view.topAnchor, paddingTop: 100,
                                   left: view.leadingAnchor, paddingLeft: 5,
                                   right: view.trailingAnchor, paddingRight: 5)
        collectionView.addConstraints(top: titleAlbums.bottomAnchor, paddingTop: 20,
                                      left: view.leadingAnchor,
                                      right: view.trailingAnchor,
                                      bottom: view.bottomAnchor)
    }
}

extension AlbumsViewController: AlbumsViewInput {
    func showAlbums(albumsArray: [AlbumsModel]) {
        self.albumsArray = albumsArray
    }

    func showError() {
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching Notice", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
    }
}

extension AlbumsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return albumsArray.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        albumsArray[section].countAlbums.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = albumsArray[indexPath.section].countAlbums[indexPath.row]

        switch data.title {
        case .myAlbums:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! AlbumsSell

            cell.icon.image = data.imageAlbum
            cell.titleView.text = data.nameAlbum
            cell.countLabel.text = String(data.countImages)
            return cell
        case .shareAlbums:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! AlbumsSell

            cell.icon.image = data.imageAlbum
            cell.titleView.text = data.nameAlbum
            cell.countLabel.text = String(data.countImages)
            return cell
        }
    }
}

extension AlbumsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.bounds.width / 2) - 5, height: (view.bounds.width / 2) - 5)
    }
}
