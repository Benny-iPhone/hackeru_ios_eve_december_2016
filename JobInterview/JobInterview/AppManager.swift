//
//  AppManager.swift
//  JobInterview
//
//  Created by Benny Davidovitz on 09/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit
import Alamofire

class AppManager: NSObject {
    static let manager = AppManager()
    
    let baseURL = "http://www.omdbapi.com/"
    
    func search(by name : String, page : Int,
                completion : @escaping (Error?,[OMDBItem]?)->Void){
        
        let params : [String:Any] = ["s":name,"page":page]
        
        Alamofire.request(baseURL, method: .get, parameters: params).responseJSON { res in
            guard let value = res.result.value as? [String:Any] else {
                completion(res.result.error, nil)
                return
            }
            
            let arr = value["Search"] as? [[String:Any]] ?? []
            var finalArray : [OMDBItem] = []
            
            for dict in arr{
                let item = OMDBItem(dict)
                finalArray.append(item)
            }
            
            completion(nil,finalArray)
            
            
        }
        
    }
}



















