//
//  SceneDelegate.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import SwiftUI
import ALCoordinator

final class SceneDelegate: NSObject, UIWindowSceneDelegate {
    
    var mainCoordinator: MainCoordinator?
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        setupCoordinator(window: window, animated: true)
    }
    
    private func setupCoordinator(window: UIWindow?, animated: Bool = false) {
        mainCoordinator = .init()
        setupWindow(controller: mainCoordinator?.root)
        mainCoordinator?.start(animated: animated)
        BaseCoordinator.mainCoordinator = mainCoordinator
    }
    
    private func setupWindow(controller: UIViewController?) {
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}
