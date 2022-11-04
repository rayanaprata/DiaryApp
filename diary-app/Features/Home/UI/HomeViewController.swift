//
//  HomeViewController.swift
//  diary-app
//
//  Created by Rayana Prata Neves on 04/11/22.
//

import UIKit

protocol HomeViewProtocol: AnyObject {
    func showHomeView(with model: HomeViewModel)
}

class HomeViewController: UIViewController {
    private let interactor: HomeInteractorProtocol
    private let coordinator: MainCoordinator
    
    private var theView: HomeView {
        return view as! HomeView
    }
    
    init(interactor: HomeInteractorProtocol, coordinator: MainCoordinator) {
        self.interactor = interactor
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.loadView()
    }
    
    override func loadView() {
        super.loadView()
        let theView = HomeView()
        theView.onStartAction = { [weak self] in
//            TODO: desenvolver navegação para a tela de listagem
//            self?.coordinator.goToList()
        }
        self.view = theView
    }
}

extension HomeViewController: HomeViewProtocol {
    func showHomeView(with model: HomeViewModel) {
        theView.setupData(with: model)
    }
}
