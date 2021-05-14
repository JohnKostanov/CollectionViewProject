//
//  AlbumsPresenter.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 7/5/21.
//

import UIKit

class AlbumsPresenter: AlbumsViewOutput {
    var view: AlbumsViewInput?

    var interactor: PresenterToInteractor?

    var router: PresenterToRouter?

    func startFetchingAlbums() {
        interactor?.fetchAlbums()
    }

    func showMovieController(navigationController: UINavigationController) {
        router?.pushToMovieScreen(navigationConroller:navigationController)
    }
}

extension AlbumsPresenter: InteractorToPresenter {
    func albumsFetchedSuccess(albumsModelArray: [AlbumsModel]) {
        view?.showAlbums(albumsArray: albumsModelArray)
    }

    func albumsFetchFailed() {
        view?.showError()
    }
}
