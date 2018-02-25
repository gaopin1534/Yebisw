//
//  ABTestObjectProtocol.swift
//  Yebisw
//
//  Created by 高松幸平 on 2018/02/25.
//

import Foundation

public protocol ABTestObjectProtocol {
    associatedtype ABTestPatternType: ABTestPatternProtocol
    associatedtype ABTestKey: ABTestKeyProtocol
    func getCurrentPatternKey() -> ABTestKey
}

extension ABTestObjectProtocol {
    private func getTargetPattern() -> ABTestPatternType? {
        return getCurrentPatternKey().pattern as? Self.ABTestPatternType
    }
}
