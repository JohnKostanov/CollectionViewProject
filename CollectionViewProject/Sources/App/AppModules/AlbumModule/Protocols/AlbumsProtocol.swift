//
//  AlbumsProtocol.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 7/5/21.
//

import UIKit

// Мы используем протоколы для определения методов, которые компонент модуля может вызывать из других компонентов того же модуля. Мы можем просто сказать, что протоколы используются для связи между различными слоями.

protocol ViewToPresenterProtocol: AnyObject {

    var view: PresenterToViewProtocol? {get set}
    var interactor: PresenterToInteractorProtocol? {get set}
    var router: PresenterToRouterProtocol? {get set}
    func startFetchingAlbums()
    func showMovieController(navigationController:UINavigationController)

}

protocol PresenterToViewProtocol: AnyObject {
    func showAlbums(albumsArray: [AlbumsModel])
    func showError()
}

protocol PresenterToRouterProtocol: AnyObject {
    static func createModule() -> AlbumsViewController
    func pushToMovieScreen(navigationConroller:UINavigationController)
}

protocol PresenterToInteractorProtocol: AnyObject {
    var presenter:InteractorToPresenterProtocol? {get set}
    func fetchAlbums()
}

protocol InteractorToPresenterProtocol: AnyObject {
    func albumsFetchedSuccess(albumsModelArray: [AlbumsModel])
    func albumsFetchFailed()
}
