//
//  AppDelegate.swift
//  Design Inspiration
//
//  Created by Charel Kremer on 29.03.18.
//  Copyright © 2018 charelkremer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	let reset = true

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.

		MyData.loadPresetYears()
		
		window = UIWindow(frame: UIScreen.main.bounds)
		let storyBoard = UIStoryboard(name: "Main", bundle: nil)
		var vc: UIViewController
		
		if MyData.isFirstLaunch() {
			// show the onboarding screen
			MyData.loadDefaultValues()
			vc = storyBoard.instantiateViewController(withIdentifier: "ClassConfigTableViewController")
			print("This is the first launch")
		} else {
			MyData.load()
			vc = storyBoard.instantiateInitialViewController()!
		}
		
		window?.rootViewController = vc
		window?.makeKeyAndVisible()
		
//		MyData.loadValues()
//
//		if !isKeyPresentInUserDefaults(key: "FirstLaunch") || reset {
//			print("this is the first launch")
//			MyData.loadValues()
//			UserDefaults.standard.set("temp", forKey: "FirstLaunch")
//		} else {
//			MyData.activeYear = MyData.loadData()
//		}
		
		return true
	}
	
	func isKeyPresentInUserDefaults(key: String) -> Bool {
		return UserDefaults.standard.object(forKey: key) != nil
	}

	func applicationWillResignActive(_ application: UIApplication) {
		// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
		// Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
	}

	func applicationDidEnterBackground(_ application: UIApplication) {
		// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
		// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
//		MyData.saveData(year: MyData.activeYear)
		MyData.save()
	}

	func applicationWillEnterForeground(_ application: UIApplication) {
		// Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
	}

	func applicationDidBecomeActive(_ application: UIApplication) {
		// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	}

	func applicationWillTerminate(_ application: UIApplication) {
		// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
	}


}
