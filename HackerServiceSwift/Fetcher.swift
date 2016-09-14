//
//  Fetcher.swift
//  HackerServiceSwift
//
//  Created by leohe on 16/9/14.
//  Copyright © 2016年 leohe. All rights reserved.
//

import Foundation

private let _Fetcher:Fetcher = Fetcher()


public class Fetcher {
    let baseURL = "https://news.ycombinator.com/"
    let APIURL = "https://hacker-news.firebaseio.com/v0/"
    let APIFormat = ".json"
    private let session = NSURLSession.sharedSession()
    
    public enum ResponseError:String{
        case NoConnection = "You are not connected to the internet"
        case ErrorParsing = "An error occurred while fetching the requested page"
        case UnknownError = "An unknown error occurred"
    }
    
    public enum APIEndpoint:String{
        case Post = "item/"
        case User = "user/"
    }
    
    public class var sharedInstance:Fetcher {
        return _Fetcher
    }
    
    class func Fetch(ressource:String){
        
    }
    
    class func FetchJSON(endpoint:APIEndpoint,ressource:String?){
        
    }
    
}