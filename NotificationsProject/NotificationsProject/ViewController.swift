//
//  ViewController.swift
//  NotificationsProject
//
//  Created by hackeru on 03/04/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timestamp = Int(Date().timeIntervalSince1970) //18:36:24
        timestamp -= timestamp % 60 //18:36:00
        timestamp += 60 //18:37:00
        
        let date = Date(timeIntervalSince1970: TimeInterval(timestamp))
        
        datePicker.date = date
        datePicker.minimumDate = date
        
        
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        
        
        if #available(iOS 10.0, *) {
            let interval = datePicker.date.timeIntervalSinceNow
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: interval, repeats: false)
            
            let content = UNMutableNotificationContent()
            content.title = "title"
            content.body = "body"
            content.sound = UNNotificationSound(named: "sound.mp3")
            
            if let url = Bundle.main.url(forResource: "video", withExtension: "mp4"),
                let attach = try? UNNotificationAttachment(identifier: "image", url: url, options: nil){
                content.attachments = [attach]
                
            }
            
            let request = UNNotificationRequest(identifier: "my_note", content: content, trigger: trigger)
            
            //UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
            UNUserNotificationCenter.current().add(request) { (err) in
                if let err = err{
                    print(err)
                }
            }
        } else {
            // Fallback on earlier versions
            let note = UILocalNotification()
            note.fireDate = datePicker.date
            note.alertBody = textField.text
            note.applicationIconBadgeNumber = 42
            note.soundName = "sound.mp3"
            note.userInfo = ["event_id":30]
            note.category = "cat"
            
            UIApplication.shared.scheduleLocalNotification(note)
        }
        
        
        
        
        
    }
    
    @IBAction func tapAction(_ sender: Any) {
        textField.resignFirstResponder()
    }
    
    
}









