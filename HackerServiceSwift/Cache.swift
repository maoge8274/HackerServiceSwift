//
//  Cache.swift
//  HackerServiceSwift
//
//  Created by leohe on 16/9/14.
//  Copyright © 2016年 leohe. All rights reserved.
//

import Foundation

private let _Cache = Cache()


public class Cache{
    init(){
        
    }
    public class var sharedCache:Cache{
        return _Cache
    }
}

public class DiskCache:Cache{
    
}

public class MemoryCache:Cache{
    private var memoryCache = NSCache()
    
    override init() {
        
    }
}