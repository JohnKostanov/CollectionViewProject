//
//  Albums.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 6/5/21.
//

import UIKit

struct Albums {
    let title: String
    let countAlbums: [Album]
}

extension Albums {
    static func getSettings() -> [Albums] {
        return [
            Albums(title: "Мои альбомы", countAlbums: [
                    Album(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Недавнее", countImages: 9364),
                    Album(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "Избранное", countImages: 52),
                    Album(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Недавнее", countImages: 9364),
                    Album(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "Избранное", countImages: 52)

                    ]),
            Albums(title: "Мои альбомы", countAlbums: [
                    Album(imageAlbum: UIImage(named: "Недавнее"), nameAlbum: "Недавнее", countImages: 9364),
                    Album(imageAlbum: UIImage(named: "Избранное"), nameAlbum: "Избранное", countImages: 52)

                    ])

        ]
    }
}
