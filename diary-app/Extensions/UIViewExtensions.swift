//
//  UIViewExtensions.swift
//  diary-app
//
//  Created by Rayana Prata Neves on 04/11/22.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
    
    func removeAllSubviews() {
        subviews.forEach { $0.removeFromSuperview() }
    }
}
