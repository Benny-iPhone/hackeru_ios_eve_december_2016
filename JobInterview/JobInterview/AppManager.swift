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
                completion : @escaping (Error?,[OMDBItem]?,Int?)->Void){
        
        let params : [String:Any] = ["s":name,"page":page]
        
        Alamofire.request(baseURL, method: .get, parameters: params).responseJSON { res in
            guard let value = res.result.value as? [String:Any] else {
                completion(res.result.error, nil, nil)
                return
            }
            
            let arr = value["Search"] as? [[String:Any]] ?? []
            var finalArray : [OMDBItem] = []
            
            for dict in arr{
                let item = OMDBItem(dict)
                finalArray.append(item)
            }
            
            let total = Int(value["totalResults"] as? String ?? "0")
            
            completion(nil,finalArray,total)
            
            
        }
        
    }
    
    
    func getDetails(of item : OMDBItem, completion : @escaping (_ error : Error?, _ item : OMDBItem?) -> Void){
        //create url string with get query
        let urlString = baseURL + "?i=" + item.imdbID
        //create http request object
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "GET"
        
        //call the server with the request, get result in completion block
        URLSession.shared.dataTask(with: request) { (data, res, err) in
            //make sure we have data
            guard let data = data else{
                completion(err, nil)
                return
            }
            //parse to json object (dictionary)
            guard
                let json = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers),
                let dict = json as? [String:Any] else{
                    
                    let error = NSError(domain: "com.myapp", code: 3, userInfo: [NSLocalizedDescriptionKey:"invalid data format"])
                    completion(error as Error, nil)
                    return
            }
            
            //populate item with dict
            item.populate(with: dict)
            //notify completion, on main thread
            DispatchQueue.main.async {
                completion(nil, item)
            }
            
        }.resume()
    }
    
}


































