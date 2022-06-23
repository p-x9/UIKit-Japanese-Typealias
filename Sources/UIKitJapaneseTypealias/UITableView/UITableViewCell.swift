//
//  UITableViewCell.swift
//  
//
//  Created by p-x9 on 2022/06/05.
//  
//

import UIKit

extension テーブルビューセル {
    
    public typealias 選択スタイル = テーブルビューセル.SelectionStyle
    public typealias 編集スタイル = テーブルビューセル.EditingStyle
    public typealias 装飾タイプ = テーブルビューセル.AccessoryType
    public typealias フォーカススタイル = テーブルビューセル.FocusStyle
    
    @available(iOS 15.0, tvOS 15.0, *)
    public typealias 設定更新ハンドラ = テーブルビューセル.ConfigurationUpdateHandler
    
    @available(iOS 11.0, *)
    public typealias ドラッグ状態 = テーブルビューセル.DragState
    
    
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
    
    public var 画像ビュー: 画像ビュー? {
        imageView
    }
    
    public var テキストラベル: ラベル? {
        textLabel
    }
    
    public var 詳細テキストラベル: ラベル? {
        detailTextLabel
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
    
    public var 複数選択時の背景ビュー: ビュー? {
        get {
            multipleSelectionBackgroundView
        }
        set {
            multipleSelectionBackgroundView = newValue
        }
    }
    
    public var 再利用識別子: 文字列? {
        reuseIdentifier
    }
    
    public var 選択スタイル: 選択スタイル {
        get {
            selectionStyle
        }
        set {
            selectionStyle = newValue
        }
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
    
    public var 編集スタイル: 編集スタイル {
        editingStyle
    }
    
    public var 並べ替え操作を表示するか: 真理値 {
        get {
            showsReorderControl
        }
        set {
            showsReorderControl = newValue
        }
    }
    
    public var 編集中にインデントするべきか: 真理値 {
        get {
            shouldIndentWhileEditing
        }
        set {
            shouldIndentWhileEditing = newValue
        }
    }
    
    public var 装飾タイプ: 装飾タイプ {
        get {
            accessoryType
        }
        set {
            accessoryType = newValue
        }
    }
    
    public var 装飾ビュー: ビュー? {
        get {
            accessoryView
        }
        set {
            accessoryView = newValue
        }
    }
    
    public var 編集中の装飾タイプ: 装飾タイプ {
        get {
            editingAccessoryType
        }
        set {
            editingAccessoryType = newValue
        }
    }
    
    public var 編集中の装飾ビュー: ビュー? {
        get {
            editingAccessoryView
        }
        set {
            editingAccessoryView = newValue
        }
    }
    
    public var インデントレベル: 整数 {
        get {
            indentationLevel
        }
        set {
            indentationLevel = newValue
        }
    }
    
    public var インデント幅: CGFloat {
        get {
            indentationWidth
        }
        set {
            indentationWidth = newValue
        }
    }
    
    public var セパレータインセット: エッジインセット {
        get {
            separatorInset
        }
        set {
            separatorInset = newValue
        }
    }
    
    public var 編集中か: 真理値 {
        get {
            isEditing
        }
        set {
            isEditing = newValue
        }
    }
    
    public var 削除確認を表示中か: 真理値 {
        showingDeleteConfirmation
    }
    
    public var フォーカススタイル: フォーカススタイル {
        get {
            focusStyle
        }
        set {
            focusStyle = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var ドラッグ中にユーザインタラクションを有効にするか: 真理値 {
        get {
            userInteractionEnabledWhileDragging
        }
        set {
            userInteractionEnabledWhileDragging = newValue
        }
    }
}

@available(iOS 14.0, tvOS 14.0, *)
extension テーブルビューセル {
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

extension テーブルビューセル {
    @available(iOS 14.0, *)
    public func 設定の更新が必要です() {
        setNeedsUpdateConfiguration()
    }
    
    @objc
    open func 再利用の準備() {
        if Self.テーブルビューセルを日本語で全部書きたい {
            再利用の準備()
        } else {
            prepareForReuse()
        }
    }
    
    @objc
    open func 選択を設定(_ 選択されているか: 真理値, アニメーションと共に: 真理値) {
        
        if Self.テーブルビューセルを日本語で全部書きたい {
            選択を設定(選択されているか, アニメーションと共に: アニメーションと共に)
        } else {
            setSelected(選択されているか, animated: アニメーションと共に)
        }
    }
    
    @objc
    open func ハイライトを設定(_ ハイライトされているか: 真理値, アニメーションと共に: 真理値) {
        if Self.テーブルビューセルを日本語で全部書きたい {
            ハイライトを設定(ハイライトされているか, アニメーションと共に: アニメーションと共に)
        } else {
            setHighlighted(ハイライトされているか, animated: アニメーションと共に)
        }
    }
    
    @objc
    open func 編集中を設定(_ 編集中か: 真理値, アニメーションと共に: 真理値) {
        if Self.テーブルビューセルを日本語で全部書きたい {
            編集中を設定(編集中か, アニメーションと共に: アニメーションと共に)
        } else {
            setEditing(編集中か, animated: アニメーションと共に)
        }
    }
    
    @objc
    open func 遷移前(次の状態に 状態: UITableViewCell.StateMask) {
        if Self.テーブルビューセルを日本語で全部書きたい {
            遷移前(次の状態に: 状態)
        } else {
            willTransition(to: 状態)
        }
    }
    
    @objc
    open func 遷移後(次の状態に 状態: UITableViewCell.StateMask) {
        if Self.テーブルビューセルを日本語で全部書きたい {
            遷移後(次の状態に: 状態)
        } else {
            didTransition(to: 状態)
        }
    }
    
    public func ドラッグ状態が変化した後(_ 状態: ドラッグ状態) {
        dragStateDidChange(状態)
    }
}

@available(iOS 14.0, tvOS 14.0, *)
extension テーブルビューセル {
    @available(iOS 14.0, tvOS 14.0, *)
    public func デフォルトコンテンツ設定() ->  UIListContentConfiguration {
        defaultContentConfiguration()
    }
    
    @available(iOS 14.0, tvOS 14.0, *)
    public func 設定を更新(状態: UICellConfigurationState) {
        updateConfiguration(using: 状態)
    }
}
