//
//  AppDelegate.swift
//  iOScopStretchyHeader
//
//  Created by Marcela Auslenter on 09/03/2019.
//  Copyright © 2019 Marcela Auslenter. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?
	
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		window = UIWindow()
		window?.rootViewController = StretchyHeaderCollectionViewController(collectionViewLayout: StretchyHeaderCustomLayout())
		
		return true
	}
}

