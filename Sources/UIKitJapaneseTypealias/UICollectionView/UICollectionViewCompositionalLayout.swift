//
//  UICollectionViewCompositionalLayout.swift
//  
//
//  Created by p-x9 on 2022/06/28.
//  
//

import UIKit

@available(iOS 13.0, *)
extension コレクションビュー構成レイアウト {
    public convenience init(セクション: コレクションレイアウトセクション) {
        self.init(section: セクション)
    }
    
    public convenience init(セクション: コレクションレイアウトセクション, 設定: コレクションビュー構成レイアウト設定) {
        self.init(section: セクション, configuration: 設定)
    }
    
    public convenience init(セクションプロバイダ: @escaping コレクションビュー構成レイアウトセクションプロバイダ) {
        self.init(sectionProvider: セクションプロバイダ)
    }
    
    public convenience init(セクションプロバイダ: @escaping コレクションビュー構成レイアウトセクションプロバイダ, 設定: コレクションビュー構成レイアウト設定) {
        self.init(sectionProvider: セクションプロバイダ, configuration: 設定)
    }
    
    public var 設定: コレクションビュー構成レイアウト設定 {
        get {
            configuration
        }
        set {
            configuration = newValue
        }
    }
}

@available(iOS 14.0, tvOS 14.0, *)
extension コレクションビュー構成レイアウト {
    public static func リスト(設定: コレクションビューレイアウトリスト設定) -> コレクションビュー構成レイアウト {
        Self.list(using: 設定)
    }
}
