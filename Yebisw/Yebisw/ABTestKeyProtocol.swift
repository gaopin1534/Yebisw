//
//  ABTestKeyProtocol.swift
//  Yebisw
//
//  Created by 高松幸平 on 2018/02/24.
//  Copyright © 2018年 高松　幸平. All rights reserved.
//

import Foundation

protocol ABTestKeyProtocol: RawRepresentable {
    var pattern: ABTestPatternProtocol { get }
}