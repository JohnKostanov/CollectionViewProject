//
//  AlbumsModel.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 7/5/21.
//

import UIKit

enum NameAlbums: String {
    case myAlbums = "Мои альбомы"
    case shareAlbums = "Общие альбомы"
}

struct AlbumsModel {
    let title: NameAlbums
    let countAlbums: [AlbumModel]
}

extension AlbumsModel {
    static func fetchData() -> [AlbumsModel] {
        return [
            AlbumsModel(title: .myAlbums, countAlbums: [
                AlbumModel(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Недавнее", countImages: 9364, title: .myAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "Избранное", countImages: 52, title: .myAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Инстаграм", countImages: 9364, title: .myAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "WatsApp", countImages: 52, title: .myAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Недавнее", countImages: 9364, title: .myAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "Избранное", countImages: 52, title: .myAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Инстаграм", countImages: 9364, title: .myAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "WatsApp", countImages: 52, title: .myAlbums)

                    ]),
            AlbumsModel(title: .shareAlbums, countAlbums: [
                AlbumModel(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Недавнее", countImages: 9364, title: .shareAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "Избранное", countImages: 52, title: .shareAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Инстаграм", countImages: 9364, title: .shareAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "WatsApp", countImages: 52, title: .shareAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Недавнее", countImages: 9364, title: .shareAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "Избранное", countImages: 52, title: .shareAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Инстаграм", countImages: 9364, title: .shareAlbums),
                AlbumModel(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "WatsApp", countImages: 52, title: .shareAlbums)

                    ])

        ]
    }
}
