//
//  NSLayoutDimension.swift
//  
//
//  Created by p-x9 on 2022/05/20.
//  
//

import UIKit

public extension 寸法のレイアウト錨 {
    func 制約(次と等しい 値: CGFloat) -> レイアウト制約 {
        constraint(equalToConstant: 値)
    }
    
    func 制約(次以上 値: CGFloat) -> レイアウト制約 {
        constraint(greaterThanOrEqualToConstant: 値)
    }
    
    func 制約(次以下 値: CGFloat) -> レイアウト制約 {
        constraint(lessThanOrEqualToConstant: 値)
    }
    
    func 制約(次と等しい 錨: 寸法のレイアウト錨, 係数: CGFloat = 1, ずれ: CGFloat = 0) -> レイアウト制約 {
        constraint(equalTo: 錨, multiplier: 係数, constant: ずれ)
    }
    
    func 制約(次以上 錨: 寸法のレイアウト錨, 係数: CGFloat = 1, ずれ: CGFloat = 0) -> レイアウト制約 {
        constraint(greaterThanOrEqualTo: 錨, multiplier: 係数, constant: ずれ)
    }
    
    func 制約(次以下 錨: 寸法のレイアウト錨, 係数: CGFloat = 1, ずれ: CGFloat = 0) -> レイアウト制約 {
        constraint(lessThanOrEqualTo: 錨, multiplier: 係数, constant: ずれ)
    }
}
