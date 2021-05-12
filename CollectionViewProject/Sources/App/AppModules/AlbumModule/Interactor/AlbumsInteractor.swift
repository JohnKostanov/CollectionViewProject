//
//  AlbumsInteractor.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 7/5/21.
//

import UIKit

class AlbumsInteractor: PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol?

    func fetchAlbums() {
        let arrayAlbums = AlbumsModel.fetchData()
        if arrayAlbums.isEmpty {
            self.presenter?.albumsFetchFailed()
        } else {
            self.presenter?.albumsFetchedSuccess(albumsModelArray: arrayAlbums)
        }
    }

    
}
