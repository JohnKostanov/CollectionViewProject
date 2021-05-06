//
//  AppDelegate.swift
//  CollectionViewProject
//
//  Created by Джон Костанов on 4/5/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window?.rootViewController = CollectionViewController()
        window?.makeKeyAndVisible()

        return true
    }
}

