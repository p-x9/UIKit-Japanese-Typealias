//
//  UICollectionViewCell.swift
//  
//
//  Created by p-x9 on 2022/06/10.
//  
//

import UIKit
import FoundationJapaneseTypealias

extension コレクションビューセル {
    
    @available(iOS 15.0, tvOS 15.0, *)
    public typealias 設定更新ハンドラ = コレクションビューセル.ConfigurationUpdateHandler
    
    @available(iOS 11.0, *)
    public typealias ドラッグ状態 = コレクションビューセル.DragState
    
    @available(iOS 14.0, *)
    public var コンテンツ設定を自動で更新するか: 真理値 {
        get {
            automaticallyUpdatesContentConfiguration
        }
        set {
            automaticallyUpdatesContentConfiguration = newValue
        }
    }
    
    public var コンテンツビュー: ビュー {
        contentView
    }
    
    public var 選択されているか: 真理値 {
        get {
            isSelected
        }
        set {
            isSelected = newValue
        }
    }
    
    public var ハイライトされているか: 真理値 {
        get {
            isHighlighted
        }
        set {
            isHighlighted = newValue
        }
    }
    
    @available(iOS 14.0, *)
    public var 背景設定を自動で更新するか: 真理値 {
        get {
            automaticallyUpdatesBackgroundConfiguration
        }
        set {
            automaticallyUpdatesBackgroundConfiguration = newValue
        }
    }
    
    public var 背景ビュー: ビュー? {
        get {
            backgroundView
        }
        set {
            backgroundView = newValue
        }
    }
    
    public var 選択時の背景ビュー: ビュー? {
        get {
            selectedBackgroundView
        }
        set {
            selectedBackgroundView = newValue
        }
    }
}

@available(iOS 14.0, tvOS 14.0, *)
extension コレクションビューセル {
    @available(iOS 14.0, tvOS 14.0, *)
    public var コンテンツ設定: UIContentConfiguration? {
        get {
            contentConfiguration
        }
        set {
            contentConfiguration = newValue
        }
    }
    
    @available(iOS 14.0, tvOS 14.0, *)
    public var 背景設定: UIBackgroundConfiguration? {
        get {
            backgroundConfiguration
        }
        set {
            backgroundConfiguration = newValue
        }
    }
    
    @available(iOS 14.0, tvOS 14.0, *)
    public var 設定状態: UIConfigurationState {
        configurationState
    }
    
    @available(iOS 15.0, tvOS 15.0, *)
    public var 設定更新ハンドラ: 設定更新ハンドラ? {
        get {
            configurationUpdateHandler
        }
        set {
            configurationUpdateHandler = newValue
        }
    }
}

extension コレクションビューセル {
    @available(iOS 14.0, *)
    public func 設定の更新が必要です() {
        setNeedsUpdateConfiguration()
    }
    
    @available(iOS 11.0, *)
    public func ドラッグ状態が変化した後(_ 状態: ドラッグ状態) {
        dragStateDidChange(状態)
    }
}

@available(iOS 14.0, tvOS 14.0, *)
extension コレクションビューセル {
    @available(iOS 14.0, tvOS 14.0, *)
    public func 設定を更新(状態: UICellConfigurationState) {
        updateConfiguration(using: 状態)
    }
}
