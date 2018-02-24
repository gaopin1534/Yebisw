//
//  ABTestObjectProtocol.swift
//  Yebisw
//
//  Created by 高松　幸平 on 2018/01/16.
//  Copyright © 2018年 高松　幸平. All rights reserved.
//

import Foundation

protocol ABTestObjectProtocol {
    associatedtype ABTestPatternType: ABTestPatternProtocol
    associatedtype ABTestKey: ABTestKeyProtocol
    func getCurrentPatternKey() -> ABTestKey
}

extension ABTestObjectProtocol {
    private func getTargetPattern() -> ABTestPatternType {
        return getCurrentPatternKey().pattern
    }
}
