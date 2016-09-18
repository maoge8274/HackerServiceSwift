//
//  Cache.swift
//  HackerServiceSwift
//
//  Created by leohe on 16/9/14.
//  Copyright © 2016年 leohe. All rights reserved.
//

import Foundation

private let _Cache = Cache()


open class Cache{
    init(){
        
    }
    open class var sharedCache:Cache{
        return _Cache
    }
}

open class DiskCache:Cache{
    
}

open class MemoryCache:Cache{
    fileprivate var memoryCache = NSCache()
    
    override init() {
        
    }
}
