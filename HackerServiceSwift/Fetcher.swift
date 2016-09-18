//
//  Fetcher.swift
//  HackerServiceSwift
//
//  Created by leohe on 16/9/14.
//  Copyright © 2016年 leohe. All rights reserved.
//

import Foundation

private let _Fetcher:Fetcher = Fetcher()


open class Fetcher {
    let baseURL = "https://news.ycombinator.com/"
    let APIURL = "https://hacker-news.firebaseio.com/v0/"
    let APIFormat = ".json"
    fileprivate let session = URLSession.shared
    
    public typealias FetchCompletion = (_ object:AnyObject?,_ error:ResponseError?,_ local:Bool) -> Void
    public typealias FetchParsing = (_ html:String?) -> AnyObject
    public typealias FetchParsingAPI = (_ json:AnyObject?) -> AnyObject!
    
    public enum ResponseError:String{
        case NoConnection = "You are not connected to the internet"
        case ErrorParsing = "An error occurred while fetching the requested page"
        case UnknownError = "An unknown error occurred"
    }
    
    public enum APIEndpoint:String{
        case Post = "item/"
        case User = "user/"
    }
    
    open class var sharedInstance:Fetcher {
        return _Fetcher
    }
    
    class func Fetch(_ ressource:String,parsing:FetchParsing,completion:FetchCompletion){
        
    }
    
    class func FetchJSON(_ endpoint:APIEndpoint,ressource:String?){
        
    }
    
}
