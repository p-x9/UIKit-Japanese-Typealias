//
//  UIViewController.swift
//  
//
//  Created by p-x9 on 2022/06/01.
//  
//

import UIKit
import FoundationJapaneseTypealias

extension ビューコントローラ {
    public var ビュー: ビュー {
        get {
            view
        }
        set {
            view = newValue
        }
    }
    public var 既に読み込まれていた場合のビュー: ビュー? {
        viewIfLoaded
    }
    
    public var ビューが読み込まれているか: 真理値 {
        isViewLoaded
    }
    
    public var nibの名前: 文字列? {
        nibName
    }
    
    public var nibのバンドル: Bundle? {
        nibBundle
    }
    
    public var ストーリーボード: ストーリーボード? {
        storyboard
    }
    
    public var タイトル: 文字列? {
        get {
            title
        }
        set {
            title = newValue
        }
    }
    
    public var 親: ビューコントローラ? {
        parent
    }
    
    public var モーダル表示しているビューコントローラ: ビューコントローラ? {
        presentedViewController
    }
    
    public var 自分をモーダル表示しているビューコントローラ: ビューコントローラ? {
        presentingViewController
    }
    
    public var 表示されている最中か: 真理値 {
        isBeingPresented
    }
    
    public var 閉じられる最中か: 真理値 {
        isBeingDismissed
    }
    
    public var 親へ移動する最中か: 真理値 {
        isMovingToParent
    }
    
    public var 親から移動する最中か: 真理値 {
        isMovingFromParent
    }
    
    public var モーダル遷移スタイル: モーダル遷移スタイル {
        get {
            modalTransitionStyle
        }
        set {
            modalTransitionStyle = newValue
        }
    }
    
    public var モーダル表示スタイル: モーダル表示スタイル {
        get {
            modalPresentationStyle
        }
        set {
            modalPresentationStyle = newValue
        }
    }
    
    public var 非フルスクリーンモーダルの場合ステータスバーの外観を引き継ぐか: 真理値 {
        get {
            modalPresentationCapturesStatusBarAppearance
        }
        set {
            modalPresentationCapturesStatusBarAppearance = newValue
        }
    }
    
    public var 希望するコンテンツの大きさ: 大きさ {
        get {
            preferredContentSize
        }
        set {
            preferredContentSize = newValue
        }
    }
    
    @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use UIScrollView's contentInsetAdjustmentBehavior instead")
    public var スクロールビューのインセットを自動調整するか: 真理値 {
        get {
            automaticallyAdjustsScrollViewInsets
        }
        set {
            automaticallyAdjustsScrollViewInsets = newValue
        }
    }
    
    public var 自動回転するべきか: 真理値 {
        shouldAutorotate
    }
    
    @objc
    open var 対応している画面の向き: ビューコントローラが対応する画面の向き {
        if Self.ビューコントローラを日本語で全部書きたい {
            return self.対応している画面の向き
        } else {
            return supportedInterfaceOrientations
        }
    }
    
    @objc
    open var 表示時に希望する画面の向き: UIの向き {
        if Self.ビューコントローラを日本語で全部書きたい {
            return self.表示時に希望する画面の向き
        } else {
            return preferredInterfaceOrientationForPresentation
        }
    }
    
    @available(iOS, introduced: 2.0, deprecated: 8.0)
    public var 現在の画面の向き: UIの向き {
        interfaceOrientation
    }
    
    public var 編集中か: 真理値 {
        get {
            isEditing
        }
        set {
            isEditing = newValue
        }
    }
    
    public var 編集ボタンアイテム: バーボタンアイテム {
        editButtonItem
    }
    
    public var 子供たち: [ビューコントローラ] {
        children
    }
    
}
extension ビューコントローラ {
    
    @objc
    open func ビューを読み込み() {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.ビューを読み込み()
        } else {
            self.loadView()
        }
    }
    
    @objc
    open func 必要ならビューを読み込む() {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.必要ならビューを読み込む()
        } else {
            self.loadViewIfNeeded()
        }
    }
    
    @objc
    open func ビューが読み込まれた後() {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.ビューが読み込まれた後()
        } else {
            self.viewDidLoad()
        }
    }
    
    @objc
    open func ビューがこれから現れる(_ アニメーションと共に: 真理値) {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.ビューがこれから現れる(アニメーションと共に)
        } else {
            self.viewWillAppear(アニメーションと共に)
        }
    }
    
    @objc
    open func ビューが現れた後(_ アニメーションと共に: 真理値) {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.ビューが現れた後(アニメーションと共に)
        } else {
            self.viewDidAppear(アニメーションと共に)
        }
    }
    
    @objc
    open func ビューがこれから消える(_ アニメーションと共に: 真理値) {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.ビューがこれから消える(アニメーションと共に)
        } else {
            self.viewWillDisappear(アニメーションと共に)
        }
    }
    
    @objc
    open func ビューが消えた後(_ アニメーションと共に: 真理値) {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.ビューが消えた後(アニメーションと共に)
        } else {
            self.viewDidDisappear(アニメーションと共に)
        }
    }
    
    @objc
    open func 子供のビューがこれからレイアウトされる() {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.子供のビューがこれからレイアウトされる()
        } else {
            self.viewWillLayoutSubviews()
        }
    }
    
    @objc
    open func 子供のビューがレイアウトされた後() {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.子供のビューがレイアウトされた後()
        } else {
            self.viewDidLayoutSubviews()
        }
    }
    
    public func モーダル表示(_ ビューコントローラ: ビューコントローラ, アニメーションと共に: 真理値, 完了: (() -> Void)? = nil) {
        self.present(ビューコントローラ, animated: アニメーションと共に, completion: 完了)
    }
    
    public func モーダルを閉じる(アニメーションと共に: 真理値, 完了: (() -> Void)? = nil) {
        self.dismiss(animated: アニメーションと共に, completion: 完了)
    }
    
    public func セグエを実行(識別子: 文字列, センダ: Any?) {
        self.performSegue(withIdentifier: 識別子, sender: センダ)
    }
    
    public func セグエを実行すべきか(識別子: 文字列, センダ: Any?) -> 真理値 {
        self.shouldPerformSegue(withIdentifier: 識別子, sender: センダ)
    }
    
    public func セグエを準備(セグエ: ストーリーボードセグエ, センダ: Any?) {
        prepare(for: セグエ, sender: センダ)
    }
    
    @available(iOS 15.0, *)
    public func コンテンツのスクロールビューを設定(_ スクロールビュー: スクロールビュー?, エッジ: NSDirectionalRectEdge) {
        self.setContentScrollView(スクロールビュー, for: エッジ)
    }
    
    @available(iOS 15.0, *)
    public func コンテンツのスクロールビュー(エッジ: NSDirectionalRectEdge) -> スクロールビュー? {
        self.contentScrollView(for: エッジ)
    }
    
    public func ステータスバーの外観の更新が必要です() {
        self.setNeedsStatusBarAppearanceUpdate()
    }
    
    public func アクションを処理するビューコントローラ(アクション: Selector, センダ: Any?) -> ビューコントローラ? {
        targetViewController(forAction: アクション, sender: センダ)
    }
    
    @objc
    open func 表示(_ ビューコントローラ: ビューコントローラ, センダ: Any?) {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.表示(ビューコントローラ, センダ: センダ)
        } else {
            self.show(ビューコントローラ, sender: センダ)
        }
    }
    
    @objc
    open func 詳細を表示(_ ビューコントローラ: ビューコントローラ, センダ: Any?) {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.詳細を表示(ビューコントローラ, センダ: センダ)
        } else {
            self.showDetailViewController(ビューコントローラ, sender: センダ)
        }
    }
    
    @objc
    open func 編集中に設定(_ 編集中: 真理値, アニメーションと共に: 真理値) {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.編集中に設定(編集中, アニメーションと共に: アニメーションと共に)
        } else {
            self.setEditing(編集中, animated: アニメーションと共に)
        }
    }
    
    public func 子供を追加(_ 子供: ビューコントローラ) {
        self.addChild(子供)
    }
    
    public func 親から離れる() {
        self.removeFromParent()
    }
    
    public func 遷移(元ビュー: ビューコントローラ, 先ビュー: ビューコントローラ, 期間: TimeInterval, オプション: ビュー.アニメーションオプション = [], アニメーション: (() -> Void)?, 完了: ((真理値) -> Void)? = nil) {
        self.transition(from: 元ビュー, to: 先ビュー, duration: 期間, options: オプション, animations: アニメーション, completion: 完了)
    }
    
    public func 外観の遷移を始める(_ 現れようとしているか: 真理値, アニメーションと共に: 真理値) {
        self.beginAppearanceTransition(現れようとしているか, animated: アニメーションと共に)
    }
    
    public func 外観の遷移を終わる() {
        self.endAppearanceTransition()
    }
    
    public func 子供のUIの特性集の上書きを設定(_ 特性集: UIの特性集?, 子供: ビューコントローラ) {
        self.setOverrideTraitCollection(特性集, forChild: 子供)
    }
    
    public func 子供の上書きされたUI特性集(子供: ビューコントローラ) -> UIの特性集? {
        self.overrideTraitCollection(forChild: 子供)
    }
    
    public func これから親へ移動(親: ビューコントローラ?) {
        self.willMove(toParent: 親)
    }
    
    public func 親へ移動した後(親: ビューコントローラ?) {
        self.didMove(toParent: 親)
    }
    
    @objc
    open func ビューの制約を更新() {
        if Self.ビューコントローラを日本語で全部書きたい {
            self.ビューの制約を更新()
        } else {
            self.updateViewConstraints()
        }
    }
    
}
