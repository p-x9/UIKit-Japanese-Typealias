//
//  NSCollectionLayoutSection.swift
//  
//
//  Created by p-x9 on 2022/06/28.
//  
//

import UIKit

@available(iOS 13.0, *)
extension コレクションレイアウトセクション {
    
    public convenience init(グループ: コレクションレイアウトグループ) {
        self.init(group: グループ)
    }
    
    public var コンテンツインセット: 方向エッジインセット {
        get {
            contentInsets
        }
        set {
            contentInsets = newValue
        }
    }
    
    public var グループ中の間隔: CGFloat {
        get {
            interGroupSpacing
        }
        set {
            interGroupSpacing = newValue
        }
    }
    
    @available(iOS 14.0, *)
    public var コンテンツインセット関係: コンテンツインセット関係 {
        get {
            contentInsetsReference
        }
        set {
            contentInsetsReference = newValue
        }
    }
    
    public var 直行スクロールの挙動: コレクションレイアウトセクション直行スクロール挙動 {
        get {
            orthogonalScrollingBehavior
        }
        set {
            orthogonalScrollingBehavior = newValue
        }
    }
    
    public var 境界の補足アイテム: [コレクションレイアウト境界補足アイテム] {
        get {
            boundarySupplementaryItems
        }
        set {
            boundarySupplementaryItems = newValue
        }
    }
    
    public var 補足アイテムがコンテンツインセットに従うか: 真理値 {
        get {
            supplementariesFollowContentInsets
        }
        set {
            supplementariesFollowContentInsets = newValue
        }
    }
    
    public var 可視アイテム無効化ハンドラ: コレクションレイアウトセクション可視アイテム無効化ハンドラ? {
        get {
            visibleItemsInvalidationHandler
        }
        set {
            visibleItemsInvalidationHandler = newValue
        }
    }
    
    public var 装飾アイテム: [コレクションレイアウト装飾アイテム] {
        get {
            decorationItems
        }
        set {
            decorationItems = newValue
        }
    }
}

@available(iOS 14.0, tvOS 14.0, *)
extension コレクションレイアウトセクション {
    public static func リスト(設定: コレクションビューレイアウトリスト設定, レイアウト環境: コレクションレイアウト環境) -> コレクションレイアウトセクション {
        Self.list(using: 設定, layoutEnvironment: レイアウト環境)
    }
}
