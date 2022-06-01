//
//  UIViewController.swift
//  
//
//  Created by p-x9 on 2022/06/01.
//  
//

import UIKit
import FoundationJapaneseTypealias

extension 表示制御機 {
    public var 表示: 表示 {
        get {
            view
        }
        set {
            view = newValue
        }
    }
    public var 既に読み込まれていた場合の表示: 表示? {
        viewIfLoaded
    }
    
    public var 表示が読み込まれているか: 真理値 {
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
    
    public var 親: 表示制御機? {
        parent
    }
    
    public var モーダル表示している表示制御機: 表示制御機? {
        presentedViewController
    }
    
    public var 自分をモーダル表示している表示制御機: 表示制御機? {
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
    open var 対応している画面の向き: 表示制御機が対応する画面の向き {
        supportedInterfaceOrientations
    }
    
    @objc
    open var 表示時に希望する画面の向き: UIの向き {
        preferredInterfaceOrientationForPresentation
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
    
    public var 子供たち: [表示制御機] {
        children
    }
    
}
extension 表示制御機 {
    
    @objc
    open func 表示を読み込み() {
        if Self.表示制御機を日本語で全部書きたい {
            self.表示を読み込み()
        } else {
            self.loadView()
        }
    }
    
    @objc
    open func 必要なら表示を読み込む() {
        self.loadViewIfNeeded()
    }
    
    @objc
    open func 表示が読み込まれた後() {
        self.viewDidLoad()
    }
    
    @objc
    open func 表示がこれから現れる(_ アニメーションと共に: 真理値) {
        self.viewWillAppear(アニメーションと共に)
    }
    
    @objc
    open func 表示が現れた後(_ アニメーションと共に: 真理値) {
        self.viewDidAppear(アニメーションと共に)
    }
    
    @objc
    open func 表示がこれから消える(_ アニメーションと共に: 真理値) {
        self.viewWillDisappear(アニメーションと共に)
    }
    
    @objc
    open func 表示が消えた後(_ アニメーションと共に: 真理値) {
        self.viewDidDisappear(アニメーションと共に)
    }
    
    @objc
    open func 子供の表示がこれからレイアウトされる() {
        self.viewWillLayoutSubviews()
    }
    
    @objc
    open func 子供の表示がレイアウトされた後() {
        self.viewDidLayoutSubviews()
    }
    
    public func モーダル表示(_ 表示制御機: 表示制御機, アニメーションと共に: 真理値, 完了: (() -> Void)? = nil) {
        self.present(表示制御機, animated: アニメーションと共に, completion: 完了)
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
    public func コンテンツのスクロール表示を設定(_ スクロール表示: スクロール表示?, エッジ: NSDirectionalRectEdge) {
        self.setContentScrollView(スクロール表示, for: エッジ)
    }
    
    @available(iOS 15.0, *)
    public func コンテンツのスクロール表示(エッジ: NSDirectionalRectEdge) -> スクロール表示? {
        self.contentScrollView(for: エッジ)
    }
    
    public func ステータスバーの外観の更新が必要です() {
        self.setNeedsStatusBarAppearanceUpdate()
    }
    
    public func アクションを処理する表示制御機(アクション: Selector, センダ: Any?) -> 表示制御機? {
        targetViewController(forAction: アクション, sender: センダ)
    }
    
    @objc
    open func 表示(_ 表示制御機: 表示制御機, センダ: Any?) {
        self.show(表示制御機, sender: センダ)
    }
    
    @objc
    open func 詳細を表示(_ 表示制御機: 表示制御機, センダ: Any?) {
        self.showDetailViewController(表示制御機, sender: センダ)
    }
    
    @objc
    open func 編集中に設定(_ 編集中: 真理値, アニメーションと共に: 真理値) {
        self.setEditing(編集中, animated: アニメーションと共に)
    }
    
    public func 子供を追加(_ 子供: 表示制御機) {
        self.addChild(子供)
    }
    
    public func 親から離れる() {
        self.removeFromParent()
    }
    
    public func 遷移(元表示: 表示制御機, 先表示: 表示制御機, 期間: TimeInterval, オプション: 表示.アニメーションオプション = [], アニメーション: (() -> Void)?, 完了: ((真理値) -> Void)? = nil) {
        self.transition(from: 元表示, to: 先表示, duration: 期間, options: オプション, animations: アニメーション, completion: 完了)
    }
    
    public func 外観の遷移を始める(_ 現れようとしているか: 真理値, アニメーションと共に: 真理値) {
        self.beginAppearanceTransition(現れようとしているか, animated: アニメーションと共に)
    }
    
    public func 外観の遷移を終わる() {
        self.endAppearanceTransition()
    }
    
    public func 子供のUIの特性集の上書きを設定(_ 特性集: UIの特性集?, 子供: 表示制御機) {
        self.setOverrideTraitCollection(特性集, forChild: 子供)
    }
    
    public func 子供の上書きされたUI特性集(子供: 表示制御機) -> UIの特性集? {
        self.overrideTraitCollection(forChild: 子供)
    }
    
    public func これから親へ移動(親: 表示制御機?) {
        self.willMove(toParent: 親)
    }
    
    public func 親へ移動した後(親: 表示制御機?) {
        self.didMove(toParent: 親)
    }
    
    @objc
    open func 表示の制約を更新() {
        self.updateViewConstraints()
    }
    
}
