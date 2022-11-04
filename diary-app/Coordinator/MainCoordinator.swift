//
//  MainCoordinator.swift
//  diary-app
//
//  Created by Rayana Prata Neves on 04/11/22.
//

import UIKit

protocol MainCoordinatorProtocol {
    func start()
    func backButtonClicked()
}

final class MainCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let presenter = HomePresenter()
        let interactor = HomeInteractor(presenter: presenter)
        let homeViewController = HomeViewController(interactor: interactor, coordinator: self)
        presenter.view = homeViewController
        
        navigationController.modalPresentationStyle = .fullScreen
        navigationController.pushViewController(homeViewController, animated: true)
    }

    func backButtonClicked() {
        navigationController.dismiss(animated: true, completion: nil)
    }
}
