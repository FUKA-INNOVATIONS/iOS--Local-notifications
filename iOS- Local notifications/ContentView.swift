//
//  ContentView.swift
//  iOS- Local notifications
//
//  Created by FUKA on 22.4.2022.
//

import SwiftUI
import UserNotifications


struct ContentView: View {
    //@State var authorizationStatus: UNAuthorizationStatus?
    
    
    var body: some View {
        VStack {
            Text("Hello notification")
            Button("request permission") {
                // Request notification permission
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { isGranted, error in
                    if isGranted { print("permission granted") } else if let error = error { print("Error: \(error.localizedDescription) ") }
                }
            }
            
            Button("scedule notification") {
                let content = UNMutableNotificationContent()
                content.title = "SOS!"
                content.body = "Your friend needs help now!!"
                content.sound = UNNotificationSound.default
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
                
                let uuidString = UUID().uuidString
                let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }
            
        }.onAppear {
            
            
            
            
//
//            // Set notification content
//            let content = UNMutableNotificationContent()
//            content.title = "Weekly Staff Meeting"
//            content.body = "Every Tuesday at 2pm"
            
            // Create the trigger as a repeating event.
//            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
            
            // Create request
            
//            let uuidString = UUID().uuidString
//            let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
            
            
            // Schedule the request with the system.
//            let notificationCenter = UNUserNotificationCenter.current()
//            notificationCenter.add(request) { (error) in
//                if error != nil {
//                    // Handle any errors.
//                    print("Error sceduling notification")
//                }
//            }
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
