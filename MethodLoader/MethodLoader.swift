//
//  MethodLoader.swift
//  MethodLoader
//
//  Created by 张伟 on 2018/3/10.
//  Copyright © 2018年 zevwings. All rights reserved.
//

import Foundation

/**
 项目启动时调用该方法，用作类初始化
 类似load, initialize，
 该协议会在 self.application(_:didFinishLaunchingWithOptions:) 之前调用
 swift 4.0 initilize 的替代方法
 */
public protocol MethodLoaderDelegate: class {
    static func awake()
}

public class MethodLoader {
    
    public static let once: Void = {
        
        let typeCount = Int(objc_getClassList(nil, 0))
        let types = UnsafeMutablePointer<AnyClass>.allocate(capacity: typeCount)
        let autoreleaseintTypes = AutoreleasingUnsafeMutablePointer<AnyClass>(types)
        objc_getClassList(autoreleaseintTypes, Int32(typeCount))
        for index in 0 ..< typeCount {
            guard let type = types[index] as? MethodLoaderDelegate.Type else { continue }
            type.awake()
        }
        types.deallocate(capacity: typeCount)
    }()
}

extension UIApplication {
    
    override open var next: UIResponder? {
        MethodLoader.once
        return super.next
    }
}
