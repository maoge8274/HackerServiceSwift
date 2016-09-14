//
//  Post.swift
//  HackerServiceSwift
//
//  Created by leohe on 16/9/14.
//  Copyright © 2016年 leohe. All rights reserved.
//

import Foundation

public class Post: NSObject, NSCoding {
    public var id: Int?
    public var title: String?

    public var domain: String? {
        get {
            return ""
        }
    }
    public var points:Int = 0
    public var commentsCount:Int = 0
    public var postId:String?
    public var prettyTime:String?
    public var upvoteURL:String?
    public var type:PostFilter?

    public enum PostFilter: String {
        case Top = ""
        case Default = "default"
        case Ask = "ask"
    }
    
    internal enum serialization:String{
        case title = "title"
        case username = "username"
    }
    
    internal enum JSONField:String{
        case id = "id"
        case by = "by"
    }

    public override init(){
        super.init()
    }
    
    required public init?(coder aDecoder:NSCoder){
        super.init()
    }

    public func encodeWithCoder(aCoder: NSCoder) {
//        for key in 
    }

}