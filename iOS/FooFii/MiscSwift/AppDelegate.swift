//
//  AppDelegate.swift
//  FooFii
//
//  Copyright © 2018 Global App Initiative. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import GoogleMaps
import GooglePlaces


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //GMSPlacesClient.provideAPIKey("AIzaSyDHv1H8F-f-lpmRE-k-s229071HjCcWOzE")
        //GMSServices.provideAPIKey("AIzaSyDHv1H8F-f-lpmRE-k-s229071HjCcWOzE")
        FirebaseApp.configure()
        Auth.auth().signInAnonymously() { (user, error) in
            if let e = error {
                print("Error: \(e)")
            }
            //let isAnonymous = user!.isAnonymous  // true
            //let uid = user!.uid
        }
        
        // Set color of navigation bar
        UINavigationBar.appearance().barTintColor = UIColor(red: 67/255, green: 157/255, blue: 40/255, alpha: 1)
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()

        // Set status bar style
        UIApplication.shared.statusBarStyle = .default
        self.window?.tintColor = UIColor(red: 67/255, green: 157/255, blue: 40/255, alpha: 1)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
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
