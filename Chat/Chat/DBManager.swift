//
//  DBManager.swift
//  Chat
//
//  Created by hackeru on 27/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit
import FirebaseDatabase
import JSQMessagesViewController

class DBManager: NSObject {
    static let manager = DBManager()
    
    var uid : String = "vladi"
    var ref : FIRDatabaseReference!
    
    override init() {
        super.init()
        
        ref = FIRDatabase.database().reference()
    }
    
    func createMessage(text : String){
        let msg : [String:Any] = [
            "uid":uid,
            "name":uid,
            "text":text,
            "date":Date().timeIntervalSince1970
        ]
        
        ref.child("chat").childByAutoId().setValue(msg)
    }
    
    func notifyOnNewMessage(with copmletion : @escaping (_ msg : JSQMessage) -> Void){
        //remove old ovservation
        ref.child("chat").removeAllObservers()
        
        //new
        ref.child("chat").observe(.childAdded, with: { (snapshot) in
            
            guard let val = snapshot.value as? [String:Any] else{
                return
            }
            
            let uid = val["uid"] as? String ?? ""
            let name = val["name"] as? String ?? ""
            let text = val["text"] as? String ?? ""
            let dateRaw = val["date"] as? Double ?? 0
            let date = Date(timeIntervalSince1970: dateRaw)
            
            guard let msg = JSQMessage(senderId: uid, senderDisplayName: name, date: date, text: text) else{
                return
            }
            
            copmletion(msg)
            
        })
        
    }
    
    
}
















