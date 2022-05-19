//
//  NSLayoutConstraint.swift
//  
//
//  Created by p-x9 on 2022/05/20.
//  
//

import UIKit
import FoundationJapaneseTypealias

public extension レイアウト制約 {
    
    typealias 関係 = レイアウト制約.Relation
    
    var 優先度: UILayoutPriority {
        get {
            priority
        }
        set {
            priority = newValue
        }
    }
    
    var ずれ: CGFloat {
        get {
            constant
        }
        set {
            constant = newValue
        }
    }
    
    var 係数: CGFloat {
       multiplier
    }
    
    var 有効かどうか: 真理値 {
        get {
            isActive
        }
        set {
            isActive = newValue
        }
    }
    
    var 最初の錨: レイアウト錨<AnyObject> {
        firstAnchor
    }
    
    var 二番目の錨: レイアウト錨<AnyObject>? {
        secondAnchor
    }
    
    var 関係: 関係 {
        relation
    }
    
    var 識別子: 文字列? {
        get {
            identifier
        }
        set {
            identifier = newValue
        }
    }
}

public extension レイアウト制約 {
    class func 有効化(_ 制約: [レイアウト制約]) {
        レイアウト制約.activate(制約)
    }
    
    class func 無効化(_ 制約: [レイアウト制約]) {
        レイアウト制約.deactivate(制約)
    }
}
