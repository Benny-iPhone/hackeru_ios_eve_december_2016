//
//  AppDelegate.swift
//  NotificationsProject
//
//  Created by hackeru on 03/04/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit
import CoreData
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        application.applicationIconBadgeNumber = 0
        
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().requestAuthorization(options: [.badge, .alert, .sound]) { (accepted, error) in
                
                if !accepted{
                    print("user denied")
                }
                
            }
        } else {
            // Fallback on earlier versions
            requestNotificationsPermission()
        }
        
        
        
        
        return true
    }
    
    func requestNotificationsPermission(){
        
        let laterAction = UIMutableUserNotificationAction()
        laterAction.identifier = "later"
        laterAction.title = "מחר כך"
        laterAction.isDestructive = true
        laterAction.isAuthenticationRequired = false
        laterAction.activationMode = .background
        
        let showAction = UIMutableUserNotificationAction()
        showAction.identifier = "show"
        showAction.title = "תראה"
        
        let replyAction = UIMutableUserNotificationAction()
        replyAction.title = "reply"
        replyAction.identifier = "reply"
        replyAction.activationMode = .background
        replyAction.behavior = .textInput
        
        let category = UIMutableUserNotificationCategory()
        category.identifier = "cat"
        category.setActions([laterAction,replyAction], for: .default)
        
        let application = UIApplication.shared
        
        let settings = UIUserNotificationSettings(types: [.alert, .badge , .sound], categories: [category])
        application.registerUserNotificationSettings(settings)
        
    }
    

    func application(_ application: UIApplication, didReceive notification: UILocalNotification) {
        
        let state = application.applicationState
        switch state {
        case .active:
            print("active")
        case .background:
            print("background")
        case .inactive:
            print("inactive")
        }
        
        let userInfo = notification.userInfo ?? [:]
        print(userInfo)
        
        application.applicationIconBadgeNumber = 0
        
    }

    
    func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, for notification: UILocalNotification, completionHandler: @escaping () -> Void) {
        
        if identifier == "later"{
            notification.fireDate = Date(timeIntervalSinceNow: 10)
            application.scheduleLocalNotification(notification)
        } else if identifier == "show"{
            print("show \(notification.userInfo)")
        }
        
        completionHandler()
        
    }
    
    
    func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, for notification: UILocalNotification, withResponseInfo responseInfo: [AnyHashable : Any], completionHandler: @escaping () -> Void) {
        
        print(responseInfo)
        
        if let text = responseInfo[UIUserNotificationActionResponseTypedTextKey] as? String{
            print(text)
        }
        
        completionHandler()
        
    }
    
}

















