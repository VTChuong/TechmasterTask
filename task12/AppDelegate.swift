//
//  AppDelegate.swift
//  task12
//
//  Created by Thien Chuong on 11/12/14.
//  Copyright (c) 2014 TMT. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        let menu = Menu()
        let navMenu = UINavigationController(rootViewController: menu)
            navMenu.tabBarItem = UITabBarItem(title: "Menu", image: UIImage(named: "menu.png"), tag: 0)
        
        let contact = Contact()
        let navContact = UINavigationController(rootViewController: contact)
        navContact.tabBarItem = UITabBarItem(title: "Contact", image: UIImage(named: "contact.png"), tag: 1)
        
        let branch = Branch()
        let navBranch = UINavigationController(rootViewController: branch)
        navBranch.tabBarItem = UITabBarItem(title: "Branch", image: UIImage(named: "shop.png"), tag: 2)
        
        let about = AboutUs()
        let navAbout = UINavigationController(rootViewController: about)
        navAbout.tabBarItem = UITabBarItem(title: "About Us", image: UIImage(named: "about.png"), tag: 3)
            
        let tabBarController = UITabBarController()
        
        tabBarController.viewControllers = [navMenu,navContact,navBranch,navAbout]
        var tabBarBackground = UIImage(named: "tabbar.png")
        UITabBar.appearance().backgroundImage = tabBarBackground
        
        UITabBar.appearance().selectionIndicatorImage = UIImage(named: "selection-tab.png")
        
        window?.rootViewController = tabBarController
        
        window?.makeKeyAndVisible()
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

