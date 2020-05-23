//
//  AppCenter.swift
//  SceneSwift
//
//  Created by hugengya on 2020/5/21.
//  Copyright © 2020 com.hefeichenye. All rights reserved.
//

import UIKit

class AppCenter: NSObject {

    
    func notAppear(_: Void) -> Void {
        
        // 0 error window could not appear
        let window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = UIViewController()
        viewController.view.backgroundColor = .clear
        window.rootViewController = viewController
        window.windowLevel = UIWindow.Level.statusBar + 1
        window.makeKeyAndVisible()
        
    }
    
    func getWindow() {
        
        
        //1
        var window: UIWindow?
        if #available(iOS 13.0, *) {
              window = (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.window
        } else {
              window = UIApplication.shared.keyWindow
        }
        
        //2
        window = UIApplication.shared.windows.first
                
        //3
        let windowScene = UIApplication.shared
                        .connectedScenes
                        .filter { $0.activationState == .foregroundActive }
                        .first
        if let windowScene = windowScene as? UIWindowScene {
            // 该window是全局变量
            window = UIWindow(windowScene: windowScene)
            window?.frame = UIScreen.main.bounds
            window?.backgroundColor = .clear
        }
        
        
        
    }
    
    
}
