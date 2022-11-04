//
//  SceneDelegate.swift
//  diary-app
//
//  Created by Rayana Prata Neves on 04/11/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  var coordinator: MainCoordinator?
  
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = scene as? UIWindowScene else { return }
    let navigationController = UINavigationController()
    coordinator = MainCoordinator(navigationController: navigationController)
    coordinator?.start()
    window = UIWindow(frame: .zero)
    window?.makeKeyAndVisible()
    window?.rootViewController = navigationController
    window?.windowScene = windowScene
  }
}
