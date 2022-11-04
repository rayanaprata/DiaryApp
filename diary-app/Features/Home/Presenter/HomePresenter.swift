//
//  HomePresenter.swift
//  diary-app
//
//  Created by Rayana Prata Neves on 04/11/22.
//

import Foundation

protocol HomePresenterProtocol {
    func presentHomeView()
}

class HomePresenter: HomePresenterProtocol {
    weak var view: HomeViewProtocol?
    
    func presentHomeView() {
        let model = HomeViewModel(
            title: "Escreva e relaxe",
            buttonTitle: "Comece agora")
        view?.showHomeView(with: model)
    }
}
