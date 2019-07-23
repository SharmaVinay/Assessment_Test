//
//  APIManager.swift
//  Assessment_Xebia
//
//  Created by Vinay Sharma on 23/07/19.
//  Copyright © 2019 Vinay Sharma. All rights reserved.
//


import Foundation
import Alamofire

public typealias JSONDictionary = [String: AnyObject]
public typealias JSONObject = [String: Any]
typealias APIParams = Parameters?//[String : AnyObject]?

let sessionExpireAlertMsg = NSLocalizedString("Session expired. Please login again.", comment: "Session expired alert message")

open class APIManager {
    open class var sharedInstance: APIManager {
        struct Singleton {
            static let instance : APIManager = APIManager()
        }
        return Singleton.instance
    }
    

    //Shared Manager
    let alamofireManager: Alamofire.SessionManager = {
        let serverTrustPolicies: [String: ServerTrustPolicy] = [
            //SKAPIConstants.SSLByPassURL: .disableEvaluation
        :]
        
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = Alamofire.SessionManager.defaultHTTPHeaders
        configuration.timeoutIntervalForRequest = 60
        
        return Alamofire.SessionManager(
            configuration: configuration,
            serverTrustPolicyManager: ServerTrustPolicyManager(policies: serverTrustPolicies)
        )
    }()
  
   
    func getNewsList(_ params :APIParams,onSuccessClosure onSuccess :@escaping (_ response:JSONObject) ->(),onFailureClosure onFailure:  @escaping (_ error: String) -> ())
    {
        let UrlString = APIConstants.BaseUrl + Constants.ApiKey
        alamofireManager.request(UrlString)
            //.validate()
            //.authenticate(usingCredential: )
            
            .responseJSON { response in
                
                print("Request : \(String(describing: response.request?.url))")  // original URL request
                print("Params : \(String(describing: params))") // params
                print("Response: \(String(describing: response.response))") // URL response
                print("Data: \(String(describing: response.data))")     // server data
                print("Result: \(response.result)")   // result of response serialization
                if response.result.isSuccess {
                    let jsonDict = response.result.value as! JSONDictionary
                    onSuccess(jsonDict)
                } else {
                        onFailure(NSLocalizedString("Something went wrong, please try again.", comment: "Something went wrong, please try again."))
                    }
                }
        }
    }
    
    

