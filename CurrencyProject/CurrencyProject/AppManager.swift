//
//  AppManager.swift
//  CurrencyProject
//
//  Created by hackeru on 23/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit
import Alamofire

class AppManager: NSObject {
    static let manager = AppManager()
    
    let baseURL = "http://api.fixer.io/latest"
    
    func fetch(base : String = "USD",symbols : [String]? = nil, with completion : @escaping (Error?,Result?) -> Void){
        
        var params : [String:Any] = [
            "base":base,
        ]
        
        if let symbols = symbols{
            params["symbols"] = symbols
        }
        
        Alamofire.request(baseURL, method: .get, parameters: params).responseJSON { response in
            
            guard let dict = response.result.value as? [String:Any] else{
                completion(response.result.error, nil)
                return
            }
            
            completion(nil, Result(dict))
            
        }
        
        /*
        Alamofire.request(baseURL).responseJSON { response in
            
            guard let dict = response.result.value as? [String:Any] else{
                completion(response.result.error, nil)
                return
            }
            
            completion(nil, Result(dict))
            
        }*/
        
        
    }
}


















