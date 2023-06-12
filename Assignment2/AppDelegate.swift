//
//  AppDelegate.swift
//  Assignment2
//
//  Created by user233437 on 6/12/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var balconyTicket = Ticket(price:1170.0, quantity:100, type:"Balcony Level Ticket")
    var lowLevelTicket = Ticket(price:10434.0, quantity:50, type:"Lower Level Ticket")
    var courtsideTicket = Ticket(price:27777.0, quantity:15, type:"Courtside")
    var ticketList = TicketList()

    var selectedType = Ticket()
    var selectedQuantity: Int = 0

    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions
                     
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
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


}

