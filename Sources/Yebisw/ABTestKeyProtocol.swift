//
//  ABTestKeyProtocol.swift
//  Yebisw
//
//  Created by 高松幸平 on 2018/02/25.
//

import Foundation

public protocol ABTestKeyProtocol: RawRepresentable {
    associatedtype ABTestPatternType: ABTestPatternProtocol
    var pattern: ABTestPatternType { get }
}
