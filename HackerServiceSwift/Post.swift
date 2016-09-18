//
//  Post.swift
//  HackerServiceSwift
//
//  Created by leohe on 16/9/14.
//  Copyright © 2016年 leohe. All rights reserved.
//

import Foundation

open class Post: NSObject, NSCoding {
    open var id: Int?
    open var title: String?

    open var domain: String? {
        get {
            return ""
        }
    }
    open var points:Int = 0
    open var commentsCount:Int = 0
    open var postId:String?
    open var prettyTime:String?
    open var upvoteURL:String?
    open var type:PostFilter?

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

    open func encode(with aCoder: NSCoder) {
//        for key in 
    }

}


public extension Post{
    
    public typealias Response = (_ posts:[Post]?,_ error:Fetcher.ResponseError?,_ local:Bool) -> Void
    
    public class func fetch(_ filter:PostFilter,page:Int,completion:Response){
//        Fetcher.Fetch(<#T##ressource: String##String#>)
    }
    
    
    public class func fetch(_ filter:PostFilter,completion:Response){
        fetch(filter,page:1,completion:completion)
    }
    
}




