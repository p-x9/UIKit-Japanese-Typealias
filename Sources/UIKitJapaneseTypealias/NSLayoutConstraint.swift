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
    typealias 属性 = レイアウト制約.Attribute
    
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
    
    var 最初のアイテム: AnyObject? {
        firstItem
    }
    
    var 二番目のアイテム: AnyObject? {
        secondItem
    }
    
    var 最初の属性: 属性 {
        firstAttribute
    }
    
    var 二番目の属性: 属性 {
        secondAttribute
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

public extension レイアウト制約.関係 {
    static let 以下 = Self.lessThanOrEqual
    static let 等しい = Self.equal
    static let 以上 = Self.greaterThanOrEqual
}

public extension レイアウト制約.属性 {
    static let 左 = Self.left
    static let 右 = Self.right
    static let 上 = Self.top
    static let 下 = Self.bottom
    static let 前縁 = Self.leading
    static let 後縁 = Self.trailing
    static let 横幅 = Self.width
    static let 高さ = Self.height
    static let 最初の基準線 = Self.firstBaseline
    static let 最後の基準線 = Self.lastBaseline
    static let 左右中心 = Self.centerX
    static let 上下中心 = Self.centerY
    
    static let 左余白 = Self.leftMargin
    static let 右余白 = Self.rightMargin
    static let 上余白 = Self.topMargin
    static let 下余白 = Self.bottomMargin
    static let 前縁余白 = Self.leadingMargin
    static let 後縁余白 = Self.trailingMargin
    static let 余白を含む左右中心 = Self.centerXWithinMargins
    static let 余白を含む上下中心 = Self.centerYWithinMargins
    
    static let 属性でない = Self.notAnAttribute
}
