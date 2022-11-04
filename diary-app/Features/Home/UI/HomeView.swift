//
//  HomeView.swift
//  diary-app
//
//  Created by Rayana Prata Neves on 04/11/22.
//

import UIKit

class HomeView: UIView {
    
    private let labelTitle: UILabel
    private let buttonStart: UIButton
    
    var onStartAction: (() -> Void)?
    
    init() {
        labelTitle = UILabel()
        buttonStart = UIButton()
        super.init(frame: .zero)
        
        setupView()
        renderView()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubviews(labelTitle, buttonStart)
        subviews.forEach({$0.translatesAutoresizingMaskIntoConstraints = false})
        
        NSLayoutConstraint.activate([
            labelTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24),
            labelTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            labelTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            
            buttonStart.heightAnchor.constraint(equalToConstant: 48),
            buttonStart.leftAnchor.constraint(equalTo: leftAnchor, constant: 24),
            buttonStart.rightAnchor.constraint(equalTo: rightAnchor, constant: -24),
            buttonStart.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -48),
        ])
    }
    
    private func renderView() {
        backgroundColor = .yellowLight
        
        labelTitle.textAlignment = .center
        
        buttonStart.clipsToBounds = true
        buttonStart.layer.cornerRadius = 10
        buttonStart.backgroundColor = .greenDark
        buttonStart.addTarget(self, action: #selector(startButtonTap), for: .touchUpInside)
    }
    
    func setupData(with model: HomeViewModel) {
        labelTitle.text = model.title
        buttonStart.setTitle(model.buttonTitle, for: .normal)
    }
    
    @objc private func startButtonTap() {
        onStartAction?()
    }
}
