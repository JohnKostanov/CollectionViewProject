//
//  AlbumsRouter.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 7/5/21.
//

import UIKit

class AlbumsRouter: PresenterToRouter {


    static func createModule() -> AlbumsViewController {
        
        let view = AlbumsViewController()

        var presenter: AlbumsViewOutput & InteractorToPresenter = AlbumsPresenter()
        var interactor: PresenterToInteractor = AlbumsInteractor()
        let router: PresenterToRouter = AlbumsRouter()

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
