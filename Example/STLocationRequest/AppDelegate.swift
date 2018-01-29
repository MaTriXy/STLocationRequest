//
//  AppDelegate.swift
//  STLocationRequest_Example
//
//  Created by Sven Tiigi on 02.12.15.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
	var window: UIWindow?
	
    /// The UINavigationController with ViewController as rootViewController
    lazy var navigationController: UINavigationController = {
        let navigationController = UINavigationController(rootViewController: ViewController())
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.main]
        navigationController.navigationBar.tintColor = .main
        navigationController.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.main]
        return navigationController
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = self.navigationController
        self.window?.makeKeyAndVisible()
        return true
    }

}
