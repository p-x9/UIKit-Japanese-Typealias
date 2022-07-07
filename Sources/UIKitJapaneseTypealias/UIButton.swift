//
//  UIButton.swift
//  
//
//  Created by p-x9 on 2022/06/29.
//  
//

import UIKit

extension ボタン {
    @available(iOS 15.0, *)
    public typealias 設定更新ハンドラ = ボタン.ConfigurationUpdateHandler
    
    @available(iOS 14.0, *)
    public typealias 役割 = ボタン.Role
    
    public typealias ボタンタイプ = ボタン.ButtonType
    
    @available(iOS 15.0, *)
    public var 設定更新ハンドラ: 設定更新ハンドラ? {
        get {
            configurationUpdateHandler
        }
        set {
            configurationUpdateHandler = newValue
        }
    }
    
    @available(iOS 15.0, *)
    public var 自動で設定を更新する: 真理値 {
        get {
            automaticallyUpdatesConfiguration
        }
        set {
            automaticallyUpdatesConfiguration = newValue
        }
    }
    
    public var ティント色: 色 {
        get {
            tintColor
        }
        set {
            tintColor = newValue
        }
    }
    
    public var ボタンタイプ: ボタンタイプ {
        buttonType
    }
    
    @available(iOS 15.0, *)
    public var ホバー中か: 真理値 {
        isHovered
    }
    
    @available(iOS 15.0, *)
    public var メニューが開かれているか: 真理値 {
        isHeld
    }
    
    @available(iOS 14.0, *)
    public var 役割: 役割 {
        get {
            role
        }
        set {
            role = newValue
        }
    }
    
    @available(iOS 13.4, *)
    public var ポインタでの操作が有効か: 真理値 {
        get {
            isPointerInteractionEnabled
        }
        set {
            isPointerInteractionEnabled = newValue
        }
    }
    
    @available(iOS 14.0, *)
    public var メニュー: メニュー? {
        get {
            menu
        }
        set {
            menu = newValue
        }
    }
    
    @available(iOS 15.0, *)
    public var 主要アクションとして選択を変更するか: 真理値 {
        get {
            changesSelectionAsPrimaryAction
        }
        set {
            changesSelectionAsPrimaryAction = newValue
        }
    }
    
    public var 現在のタイトル: 文字列? {
        currentTitle
    }
    
    public var 現在のタイトルの色: 色 {
        currentTitleColor
    }
    
    public var 現在のタイトルの影の色: 色? {
        currentTitleShadowColor
    }
    
    public var 現在の画像: 画像? {
        currentImage
    }
    
    public var 現在の背景画像: 画像? {
        currentBackgroundImage
    }
    
    @available(iOS 13.0, *)
    public var 現在の希望するシンボル設定: 画像.SymbolConfiguration? {
        currentPreferredSymbolConfiguration
    }
    
    public var 現在の属性付きタイトル: NSAttributedString? {
        currentAttributedTitle
    }
    
    public var タイトルラベル: ラベル? {
        titleLabel
    }
    
    public var 画像ビュー: 画像ビュー? {
        imageView
    }
    
    @available(iOS 15.0, *)
    public var サブタイトルラベル: ラベル? {
        subtitleLabel
    }
}

extension ボタン {
    
    @available(iOS 15.0, *)
    public func 設定の更新が必要です() {
        setNeedsUpdateConfiguration()
    }
    
    @available(iOS 15.0, *)
    public func 設定を更新() {
        updateConfiguration()
    }
    
    public func タイトルをセット(_ タイトル: 文字列?, 次の状態の時 状態: コントロール.State) {
        setTitle(タイトル, for: 状態)
    }
    
    public func タイトルの色をセット(_ 色: 色?, 次の状態の時 状態: コントロール.State) {
        setTitleColor(色, for: 状態)
    }
    
    public func タイトルの影の色をセット(_ 色: 色?, 次の状態の時 状態: コントロール.State) {
        setTitleShadowColor(色, for: 状態)
    }
    
    public func 画像をセット(_ 画像: 画像?, 次の状態の時 状態: コントロール.State) {
        setImage(画像, for: 状態)
    }
    
    public func 背景画像をセット(_ 画像: 画像?, 次の状態の時 状態: コントロール.State) {
        setBackgroundImage(画像, for: 状態)
    }
    
    @available(iOS 13.0, *)
    public func 希望するシンボル設定をセット(_ 設定: UIImage.SymbolConfiguration?, 次の状態の時 状態: コントロール.State) {
        setPreferredSymbolConfiguration(設定, forImageIn: 状態)
    }
    
    public func 属性付きタイトルをセット(_ タイトル: NSAttributedString?, 次の状態の時 状態: コントロール.State) {
        setAttributedTitle(タイトル, for: 状態)
    }
    
    public func タイトル(次の状態の時 状態: コントロール.State) -> 文字列? {
        title(for: 状態)
    }
    
    public func タイトルの色(次の状態の時 状態: コントロール.State) -> 色? {
        titleColor(for: 状態)
    }
    
    public func タイトルの影の色(次の状態の時 状態: コントロール.State) -> 色? {
        titleShadowColor(for: 状態)
    }
    
    public func 画像(次の状態の時 状態: コントロール.State) -> 画像? {
        image(for: 状態)
    }
    
    public func 背景画像(次の状態の時 状態: コントロール.State) -> 画像? {
        backgroundImage(for: 状態)
    }
    
    @available(iOS 13.0, *)
    public func 希望するシンボル設定(次の状態の時 状態: コントロール.State) -> 画像.SymbolConfiguration? {
        preferredSymbolConfigurationForImage(in: 状態)
    }
    
    public func 属性付きタイトル(次の状態の時 状態: コントロール.State) -> NSAttributedString? {
        attributedTitle(for: 状態)
    }
}


@available(iOS 13.4, *)
extension ボタン {
    public typealias ポインタスタイルプロバイダ = (_ ボタン: ボタン, _ 提案するエフェクト: ポインタエフェクト, _ 提案する形: ポインタ形) -> ポインタスタイル?
    
    public var ポインタスタイルプロバイダ: ボタン.ポインタスタイルプロバイダ? {
        get {
            pointerStyleProvider
        }
        set {
            pointerStyleProvider = newValue
        }
    }
}

@available(iOS 15.0, tvOS 15.0, *)
extension ボタン {
    public typealias 設定 = Configuration
    
    public var 設定: ボタン.設定? {
        get {
            configuration
        }
        set {
            configuration = newValue
        }
    }
}

@available(iOS 15.0, tvOS 15.0, *)
extension ボタン.設定 {
    public typealias サイズ = Size
    public typealias タイトルの整列 = TitleAlignment
    public typealias 角スタイル = CornerStyle
}


extension ボタン {
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "このプロパティはボタン.設定を使用する場合、無視されます。")
    public var コンテンツエッジインセット: エッジインセット {
        get {
            contentEdgeInsets
        }
        set {
            contentEdgeInsets = newValue
        }
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "このプロパティはボタン.設定を使用する場合、無視されます。")
    public var タイトルエッジインセット: エッジインセット {
        get {
            titleEdgeInsets
        }
        set {
            titleEdgeInsets = newValue
        }
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "このプロパティはボタン.設定を使用する場合、無視されます。")
    public var 画像エッジインセット: エッジインセット {
        get {
            imageEdgeInsets
        }
        set {
            imageEdgeInsets = newValue
        }
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "このプロパティはボタン.設定を使用する場合、無視されます。この挙動を再現するために、設定更新ハンドラをカスタマイズすることができます。")
    public var タイトルの影をハイライト時に反転するか: 真理値 {
        get {
            reversesTitleShadowWhenHighlighted
        }
        set {
            reversesTitleShadowWhenHighlighted = newValue
        }
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "このプロパティはボタン.設定を使用する場合、無視されます。この挙動を再現するために、設定更新ハンドラをカスタマイズすることができます。")
    public var ハイライト時に画像を調整するか: 真理値 {
        get {
            adjustsImageWhenHighlighted
        }
        set {
            adjustsImageWhenHighlighted = newValue
        }
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "このプロパティはボタン.設定を使用する場合、無視されます。この挙動を再現するために、設定更新ハンドラをカスタマイズすることができます。")
    public var 無効化時に画像を調整するか: 真理値 {
        get {
            adjustsImageWhenDisabled
        }
        set {
            adjustsImageWhenDisabled = newValue
        }
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "このプロパティはボタン.設定を使用する場合、無視されます。")
    public var ハイライト時にタッチを表示するか: 真理値 {
        get {
            showsTouchWhenHighlighted
        }
        set {
            showsTouchWhenHighlighted = newValue
        }
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "「子供をレイアウト」をオーバライドして配置する")
    public func 背景の位置と大きさ(次の絶対位置と大きさの場合 絶対位置と大きさ: 位置と大きさ) -> 位置と大きさ {
        backgroundRect(forBounds: 絶対位置と大きさ)
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "「子供をレイアウト」をオーバライドして配置する")
    public func コンテンツの位置と大きさ(次の絶対位置と大きさの場合 絶対位置と大きさ: 位置と大きさ) -> 位置と大きさ {
        contentRect(forBounds: 絶対位置と大きさ)
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "「子供をレイアウト」をオーバライドして配置する")
    public func タイトルの位置と大きさ(次の絶対位置と大きさの場合 絶対位置と大きさ: 位置と大きさ) -> 位置と大きさ {
        titleRect(forContentRect: 絶対位置と大きさ)
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "「子供をレイアウト」をオーバライドして配置する")
    public func 画像の位置と大きさ(次の絶対位置と大きさの場合 絶対位置と大きさ: 位置と大きさ) -> 位置と大きさ {
        imageRect(forContentRect: 絶対位置と大きさ)
    }
}
