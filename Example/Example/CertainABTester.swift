//
//  CertainABTester.swift
//  Example
//
//  Created by 高松幸平 on 2018/03/06.
//  Copyright © 2018年 gaopin1534. All rights reserved.
//

import Foundation
import Yebisw

struct CertainABTester: ABTesterProtocol {
    func getCurrentPatternKey() -> CertainABTestKey {
        return .a
    }
    
    typealias ABTestPatternType = CertainABTestPatternDefault
    typealias ABTestKey = CertainABTestKey
    
    func getLable() -> String {
        return getCurrentPatternKey().pattern.getLabel()
    }
}

enum CertainABTestKey: ABTestKeyProtocol {
    
    var rawValue: String {
        switch self {
        case .a:
            return "A"
        case .b:
            return "B"
        }
    }
    
    var pattern: ABTestPatternType {
        switch self {
        case .a:
            return CertainABTestPatternDefault()
        case .b:
            return CertainABTestPatternB() as ABTestPatternType
        }
    }
    
    init?(rawValue: String) {
        return nil
    }
    
    typealias ABTestPatternType = CertainABTestPatternDefault
    
    typealias RawValue = String
    
    case a, b
}
