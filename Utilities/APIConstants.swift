//
//  APIConstants.swift
//  Assessment_Xebia
//
//  Created by Vinay Sharma on 23/07/19.
//  Copyright © 2019 Vinay Sharma. All rights reserved.
//


import Foundation

class APIConstants: NSObject {
    
    // MARK: - StatusCodes
    struct StatusCodes {
        static let Success                  = 200
        static let Failure                  = 400
        static let NotResponding            = 503
    }
 
    // MARK: - URLs
    
    static let DevUrl                   = "https://api.nytimes.com/svc/mostpopular/v2/viewed/1.json?api-key="
    static let BaseUrl                  = APIConstants.DevUrl
    

    
    // MARK: - Keys
    
    static let SuccessKey               = "success"
    static let ErrorKey                 = "errors"
    static let DataKey                  = "data"
    static let ReasonKey                = "reason"
    static let StatusCodeKey            = "StatusCode"
    static let StatusKey                = "status"
    static let ValidationKey            = "validation"
    
    
    static let ResultsKey               = "results"
    static let UrlKey                   = "url"
    static let AdxKeywordsKey           = "adx_keywords"
    static let SectionKey               = "section"
    static let BylineKey                = "byline"
    static let TypeKey                  = "type"
    static let TitleKey                 = "title"
    static let AbstractKey              = "abstract"
    static let Published_dateKey        = "published_date"
    static let SourceKey                = "source"
    static let IDKey                    = "id"
    static let AssetIDKey               = "asset_id"
    static let UriKey                   = "uri"
      
}
