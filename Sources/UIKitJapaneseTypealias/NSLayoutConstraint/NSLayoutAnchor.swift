//
//  File.swift
//  
//
//  Created by p-x9 on 2022/05/20.
//  
//

import UIKit

public extension レイアウト錨 /*where AnchorType: AnyObject*/ {
    typealias 錨タイプ = AnchorType
    
    @objc
    func 制約(次と等しい 錨: レイアウト錨<錨タイプ>, ずれ: CGFloat = 0) -> レイアウト制約 {
        constraint(equalTo: 錨, constant: ずれ)
    }
    
    @objc
    func 制約(次以上 錨: レイアウト錨<錨タイプ>, ずれ: CGFloat = 0) -> レイアウト制約 {
        constraint(greaterThanOrEqualTo: 錨, constant: ずれ)
    }
    
    @objc
    func 制約(次以下 錨: レイアウト錨<錨タイプ>, ずれ: CGFloat = 0) -> レイアウト制約 {
        constraint(lessThanOrEqualTo: 錨, constant: ずれ)
    }
}
