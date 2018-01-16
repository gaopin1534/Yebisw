//
//  ABTesterProtocol.swift
//  Yebisw
//
//  Created by 高松　幸平 on 2018/01/16.
//  Copyright © 2018年 高松　幸平. All rights reserved.
//

import Foundation

protocol ABTesterProtocol {
    associatedtype ABTestPatternType: ABTestPaternProtocol
    private var patterns: [String: ABTestPatternType] { get set }
    func getCurrentPatternKey() -> String
}

extension ABTesterProtocol {
    mutating func register(_ pattern: ABTestPatternType) {
        patterns.updateValue(pattern, forKey: pattern.key)
    }
    
    func getTargetPattern() -> ABTestPatternType {
        return patterns[getCurrentPatternKey()]
    }
}
