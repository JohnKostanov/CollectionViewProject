//
//  AlbumsRouter.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 7/5/21.
//

import UIKit

class AlbumsRouter: PresenterToRouterProtocol {


    static func createModule() -> AlbumsViewController {
        //???
        let view = AlbumsViewController()

        let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = AlbumsPresenter()
        let interactor: PresenterToInteractorProtocol = AlbumsInteractor()
        let router: PresenterToRouterProtocol = AlbumsRouter()

        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }

    func pushToMovieScreen(navigationConroller: UINavigationController) {
        // переход на другой модуль
    }

    
}
