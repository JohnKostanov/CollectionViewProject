//
//  AlbumsProtocol.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 7/5/21.
//

import UIKit

// Мы используем протоколы для определения методов, которые компонент модуля может вызывать из других компонентов того же модуля. Мы можем просто сказать, что протоколы используются для связи между различными слоями.

protocol AlbumsViewOutput {

    var view: AlbumsViewInput? {get set}
    var interactor: PresenterToInteractor? {get set}
    var router: PresenterToRouter? {get set}
    func startFetchingAlbums()
    func showMovieController(navigationController:UINavigationController)

}

protocol AlbumsViewInput {
    func showAlbums(albumsArray: [AlbumsModel])
    func showError()
}

protocol PresenterToRouter {
    static func createModule() -> AlbumsViewController
    func pushToMovieScreen(navigationConroller:UINavigationController)
}

protocol PresenterToInteractor {
    var presenter:InteractorToPresenter? {get set}
    func fetchAlbums()
}

protocol InteractorToPresenter {
    func albumsFetchedSuccess(albumsModelArray: [AlbumsModel])
    func albumsFetchFailed()
}
