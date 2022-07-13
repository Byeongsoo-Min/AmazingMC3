//
//  SceneDelegate.swift
//  MC3
//
//  Created by MBSoo on 2022/07/12.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let mainNavigationController = UINavigationController(rootViewController: QuizViewController())
        //windowscene 의 전체 크기를 받아옴
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        //initalize
        window?.windowScene = windowScene
        window?.rootViewController = mainNavigationController
        //- keyWindow로 설정
        //- keyWindow: window가 여러개 존재할 때, 가장 앞쪽에 배치된 window를 `key window`라고 지칭
        //window의 rootViewController를 위에서 세팅해주고 makeKeyAndVisible() 부르면 마침내 지정한 rootViewController가 상호작용을 받는 현재 화면으로 세팅 완료
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

