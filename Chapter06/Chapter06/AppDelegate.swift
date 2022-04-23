//
//  AppDelegate.swift
//  Chapter06
//
//  Created by 강동영 on 2022/04/23.
//

import UIKit
import UserNotifications

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    //앱이 처음 실행될 때
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let notiCenter = UNUserNotificationCenter.current()
        notiCenter.requestAuthorization(options: [.alert, .badge, .sound]) { (didAllow, e) in}
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            if settings.authorizationStatus == UNAuthorizationStatus.authorized {
                
                let notiContent = UNMutableNotificationContent()
                notiContent.badge = 1
                notiContent.title = "로컬 알림 메시지"
                notiContent.subtitle = "앱 다시 열어 !"
                notiContent.body = "왜 나가 ! 다시 들어와 !"
                notiContent.sound = UNNotificationSound.default
                notiContent.userInfo = ["name":"강동영"]
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                let request = UNNotificationRequest(identifier: "wakeup", content: notiContent, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            } else {
                print("사용자가 동의하지 않음")
            }
        }
    }


}

