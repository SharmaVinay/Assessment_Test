    //
    //  NewsModelClass.swift
    //  Assessment_Xebia
    //
    //  Created by Vinay Sharma on 23/07/19.
    //  Copyright © 2019 Vinay Sharma. All rights reserved.
    //
    
    import Foundation
    import UIKit
    
    class NewsModelClass
    {
        var url: String!
        var adx_keywords: String!
        var section: String!
        var byline: String!
        var type: String!
        var title: String!
        var abstract: String!
        var published_date: String!
        var source: String!
        //var id: String!
        //var asset_id: String!
        var uri: String!
        
        
        init?(dictionary: NSDictionary)
        {
            self.url = (dictionary[APIConstants.UrlKey] as! String)
            self.adx_keywords = dictionary[APIConstants.AdxKeywordsKey] as? String
            self.section = (dictionary[APIConstants.SectionKey] as! String)
            self.byline = (dictionary[APIConstants.BylineKey] as! String)
            self.type = (dictionary[APIConstants.TypeKey] as! String)
            self.title = (dictionary[APIConstants.TitleKey] as! String)
            self.abstract = (dictionary[APIConstants.AbstractKey] as! String)
            self.published_date = (dictionary[APIConstants.Published_dateKey] as! String)
            self.source = (dictionary[APIConstants.SourceKey] as! String)
            //self.id = (dictionary[APIConstants.IDKey] as! String)
            //self.asset_id = (dictionary[APIConstants.AssetIDKey] as! String)
            self.uri = (dictionary[APIConstants.UriKey] as! String)
        }
    }
