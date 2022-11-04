//
//  HomeInteractor.swift
//  diary-app
//
//  Created by Rayana Prata Neves on 04/11/22.
//

import Foundation

protocol HomeInteractorProtocol {
    func loadView()
}

class HomeInteractor: HomeInteractorProtocol {
    private let presenter: HomePresenterProtocol
    
    init(presenter: HomePresenterProtocol) {
        self.presenter = presenter
    }
    
    func loadView() {
        presenter.presentHomeView()
    }
}
