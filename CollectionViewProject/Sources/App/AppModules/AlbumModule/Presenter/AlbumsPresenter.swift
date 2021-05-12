//
//  AlbumsPresenter.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 7/5/21.
//

import UIKit

class AlbumsPresenter: ViewToPresenterProtocol {
    var view: PresenterToViewProtocol?

    var interactor: PresenterToInteractorProtocol?

    var router: PresenterToRouterProtocol?

    func startFetchingAlbums() {
        interactor?.fetchAlbums()
    }

    func showMovieController(navigationController: UINavigationController) {
        router?.pushToMovieScreen(navigationConroller:navigationController)
    }
}


extension AlbumsPresenter: InteractorToPresenterProtocol {
    func albumsFetchedSuccess(albumsModelArray: [AlbumsModel]) {
        view?.showAlbums(albumsArray: albumsModelArray)
    }

    func albumsFetchFailed() {
        view?.showError()
    }


}
