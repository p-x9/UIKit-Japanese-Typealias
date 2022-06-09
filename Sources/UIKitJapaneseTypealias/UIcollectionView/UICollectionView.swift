//
//  UICollectionView.swift
//  
//
//  Created by p-x9 on 2022/06/10.
//  
//

import UIKit
import FoundationJapaneseTypealias

extension コレクションビュー {
    
    public typealias スクロール位置 = コレクションビュー.ScrollPosition
    public typealias 並べ替え速度 = コレクションビュー.ReorderingCadence
    public typealias レイアウトインタラクティブ遷移完了 = コレクションビュー.LayoutInteractiveTransitionCompletion
    
    public var コレクションビューレイアウト: コレクションビューレイアウト {
        get {
            collectionViewLayout
        }
        set {
            collectionViewLayout = newValue
        }
    }
    
    public var 委譲: コレクションビュー委譲? {
        get {
            delegate
        }
        set {
            delegate = newValue
        }
    }
    
    public var データソース: コレクションビューデータソース? {
        get {
            dataSource
        }
        set {
            dataSource = newValue
        }
    }
    
    @available(iOS 10.0, *)
    public var 事前取得データソース: コレクションビューデータソース事前取得? {
        get {
            prefetchDataSource
        }
        set {
            prefetchDataSource = newValue
        }
    }
    
    @available(iOS 10.0, *)
    public var 事前取得が有効か: 真理値 {
        get {
            isPrefetchingEnabled
        }
        set {
            isPrefetchingEnabled = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var ドラッグ委譲: コレクションビュードラッグ委譲? {
        get {
            dragDelegate
        }
        set {
            dragDelegate = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var ドロップ委譲: コレクションビュードロップ委譲? {
        get {
            dropDelegate
        }
        set {
            dropDelegate = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var ドラッグを有効にするか: 真理値 {
        get {
            dragInteractionEnabled
        }
        set {
            dragInteractionEnabled = newValue
        }
    }
    
    @available(iOS 14.0, *)
    public var コンテキストメニューインタラクション: コンテキストメニューインタラクション? {
        contextMenuInteraction
    }
    
    @available(iOS 11.0, *)
    public var 並べ替え速度: 並べ替え速度 {
        get {
            reorderingCadence
        }
        set {
            reorderingCadence = newValue
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
    
    public var 選択を許可するか: 真理値 {
        get {
            allowsSelection
        }
        set {
            allowsSelection = newValue
        }
    }
    
    public var 複数選択を許可するか: 真理値 {
        get {
            allowsMultipleSelection
        }
        set {
            allowsMultipleSelection = newValue
        }
    }
    
    public var 選択されたセルのインデックスパス: [IndexPath]? {
        indexPathsForSelectedItems
    }
    
    @available(iOS 11.0, *)
    public var コミットされていない更新があるか: 真理値 {
        hasUncommittedUpdates
    }
    
    public var セクション数: 整数 {
        numberOfSections
    }
    
    public var 可視セル: [コレクションビューセル] {
        visibleCells
    }
    
    public var 可視セルのインデックスパス: [IndexPath]? {
        indexPathsForVisibleItems
    }
    
    public var 最後にフォーカスされたインデックスパスを記憶する: 真理値 {
        get {
            remembersLastFocusedIndexPath
        }
        set {
            remembersLastFocusedIndexPath = newValue
        }
    }
    
    @available(iOS 14.0, *)
    public var セルフォーカス時に自動で選択するか: 真理値 {
        get {
            selectionFollowsFocus
        }
        set {
            selectionFollowsFocus = newValue
        }
    }
    
    @available(iOS 15.0, *)
    public var フォーカスを許可するか: 真理値 {
        get {
            allowsFocus
        }
        set {
            allowsFocus = newValue
        }
    }
    
    @available(iOS 15.0, *)
    public var 編集中にフォーカスを許可するか: 真理値 {
        get {
            allowsFocusDuringEditing
        }
        set {
            allowsFocusDuringEditing = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var 有効なドラッグが存在するか: 真理値 {
        hasActiveDrag
    }
    
    @available(iOS 11.0, *)
    public var 有効なドロップが存在するか: 真理値 {
        hasActiveDrop
    }
    
    @available(iOS 14.0, *)
    public var 編集中か: 真理値 {
        get {
            isEditing
        }
        set {
            isEditing = newValue
        }
    }
    
    @available(iOS 14.0, *)
    public var 編集中に選択を許可するか: 真理値 {
        get {
            allowsSelectionDuringEditing
        }
        set {
            allowsSelectionDuringEditing = newValue
        }
    }
    
    @available(iOS 14.0, *)
    public var 編集中に複数選択を許可するか: 真理値 {
        get {
            allowsMultipleSelectionDuringEditing
        }
        set {
            allowsMultipleSelectionDuringEditing = newValue
        }
    }
}

extension コレクションビュー {
    public func 登録(_ セルクラス: AnyClass?, セル識別子: 文字列) {
        register(セルクラス, forCellWithReuseIdentifier: セル識別子)
    }
    
    public func 登録(_ nib: UINib?, セル識別子: 文字列) {
        register(nib, forCellWithReuseIdentifier: セル識別子)
    }
    
    public func 登録(_ クラス: AnyClass?, 補足ビューの種類: 文字列, 再利用識別子: 文字列) {
        register(クラス, forSupplementaryViewOfKind: 補足ビューの種類, withReuseIdentifier: 再利用識別子)
    }
    
    public func 登録(_ nib: UINib?, 補足ビューの種類: 文字列, 再利用識別子: 文字列) {
        register(nib, forSupplementaryViewOfKind: 補足ビューの種類, withReuseIdentifier: 再利用識別子)
    }
    
    public func 再利用可能なセルをデキュー(識別子: 文字列, インデックスパス: IndexPath) -> コレクションビューセル? {
        dequeueReusableCell(withReuseIdentifier: 識別子, for: インデックスパス)
    }
    
    public func 再利用可能な補足ビューをデキュー(種類: 文字列, 識別子: 文字列, インデックスパス: IndexPath) -> コレクション再利用可能ビュー? {
        dequeueReusableSupplementaryView(ofKind: 種類, withReuseIdentifier: 識別子, for: インデックスパス)
    }
    
    public func アイテムを選択(インデックスパス: IndexPath?, アニメーションと共に: 真理値, 位置: スクロール位置) {
        selectItem(at: インデックスパス, animated: アニメーションと共に, scrollPosition: 位置)
    }
    
    public func アイテムの選択を解除(インデックスパス: IndexPath, アニメーションと共に: 真理値, 位置: スクロール位置) {
        selectItem(at: インデックスパス, animated: アニメーションと共に, scrollPosition: 位置)
    }
    
    public func データを再読み込み() {
        reloadData()
    }
    
    public func コレクションビューレイアウトを設定(_ レイアウト: コレクションビューレイアウト, アニメーションと共に: 真理値, 完了: ((真理値) -> Void)? = nil) {
        setCollectionViewLayout(レイアウト, animated: アニメーションと共に, completion: 完了)
    }
    
    public func インタラクティブなレイアウト遷移を始める(レイアウト: コレクションビューレイアウト, 完了: レイアウトインタラクティブ遷移完了? = nil) -> コレクションビュー遷移レイアウト {
        startInteractiveTransition(to: レイアウト, completion: 完了)
    }
    
    public func インタラクティブなレイアウト遷移を終わる() {
        finishInteractiveTransition()
    }
    
    public func インタラクティブなレイアウト遷移をキャンセル() {
        cancelInteractiveTransition()
    }
    
    public func アイテム数(セクション: 整数) -> 整数 {
        numberOfItems(inSection: セクション)
    }
    
    public func アイテムのレイアウト属性(インデックスパス: IndexPath) -> コレクションビューレイアウト属性? {
        layoutAttributesForItem(at: インデックスパス)
    }
    
    public func 補足ビューのレイアウト属性(種類: 文字列, インデックスパス: IndexPath) -> コレクションビューレイアウト属性? {
        layoutAttributesForSupplementaryElement(ofKind: 種類, at: インデックスパス)
    }
    
    public func インデックスパス(位置: 位置) -> IndexPath? {
        indexPathForItem(at: 位置)
    }
    
    public func インデックスパス(セル: コレクションビューセル) -> IndexPath? {
        indexPath(for: セル)
    }
    
    public func セル(インデックスパス: IndexPath) -> コレクションビューセル? {
        cellForItem(at: インデックスパス)
    }
    
    public func 補足ビュー(種類: 文字列, インデックスパス: IndexPath) -> コレクション再利用可能ビュー? {
        supplementaryView(forElementKind: 種類, at: インデックスパス)
    }
    
    public func 可視補足ビュー(種類: 文字列) -> [コレクション再利用可能ビュー] {
        visibleSupplementaryViews(ofKind: 種類)
    }
    
    public func 可視補足ビューのインデックスパス(種類: 文字列) -> [IndexPath] {
        indexPathsForVisibleSupplementaryElements(ofKind: 種類)
    }
    
    public func アイテムまでスクロール(インデックスパス: IndexPath, 位置: スクロール位置, アニメーションと共に: 真理値) {
        scrollToItem(at: インデックスパス, at: 位置, animated: アニメーションと共に)
    }
    
    public func セクションを挿入(_ セクション: IndexSet) {
        insertSections(セクション)
    }
    
    public func セクションを削除(_ セクション: IndexSet) {
        deleteSections(セクション)
    }
    
    public func セクションを移動(_ セクション: 整数, 新しいセクション: 整数) {
        moveSection(セクション, toSection: 新しいセクション)
    }
    
    public func セクションを再読み込み(_ セクション: IndexSet) {
        reloadSections(セクション)
    }
    
    public func アイテムを挿入(インデックスパス: [IndexPath]) {
        insertItems(at: インデックスパス)
    }
    
    public func アイテムを削除(インデックスパス: [IndexPath]) {
        deleteItems(at: インデックスパス)
    }
    
    public func アイテムを移動(インデックスパス: IndexPath, 新インデックスパス: IndexPath) {
        moveItem(at: インデックスパス, to: 新インデックスパス)
    }
    
    public func アイテムを再読み込み(インデックスパス: [IndexPath]) {
        reloadItems(at: インデックスパス)
    }
    
    @available(iOS 15.0, *)
    public func アイテムを再設定(インデックスパス: [IndexPath]) {
        reconfigureItems(at: インデックスパス)
    }
    
    public func バッチ更新する(_ 更新: (() -> Void)?, 完了: ((Bool) -> Void)? = nil) {
        performBatchUpdates(更新, completion: 完了)
    }
    
    public func インタラクティブなアイテムの移動を始める(インデックスパス: IndexPath) {
        beginInteractiveMovementForItem(at: インデックスパス)
    }
    
    public func インタラクティブなアイテムの移動を更新(_ 対象位置: 位置) {
        updateInteractiveMovementTargetPosition(対象位置)
    }
    
    public func インタラクティブなアイテムの移動を終わる() {
        endInteractiveMovement()
    }
    
    public func インタラクティブなアイテムの移動をキャンセル() {
        cancelInteractiveMovement()
    }
    
}

@available(iOS 14.0, tvOS 14.0, *)
extension コレクションビュー {
    public typealias セル登録 = CellRegistration
    public typealias 補足ビュー登録 = SupplementaryRegistration
    
    
    public func 再利用可能な設定済みセルをデキュー<セルクラス, アイテム>(登録: セル登録<セルクラス, アイテム>, インデックスパス: IndexPath, アイテム: アイテム?) -> コレクションビューセル where セルクラス: コレクションビューセル {
        dequeueConfiguredReusableCell(using: 登録, for: インデックスパス, item: アイテム)
    }
    
    public func 再利用可能な補足ビューをデキュー<補足ビュークラス>(登録: 補足ビュー登録<補足ビュークラス>, インデックスパス: IndexPath) -> 補足ビュークラス where 補足ビュークラス: コレクション再利用可能ビュー {
        dequeueConfiguredReusableSupplementary(using: 登録, for: インデックスパス)
    }
}

@available(iOS 14.0, tvOS 14.0, *)
public extension コレクションビュー.セル登録 {
    typealias セルクラス = Cell
    typealias アイテム = Item
    typealias ハンドラ = (_ セル: セルクラス, _ インデックスパス: IndexPath, _ アイテム識別子: アイテム) -> Void
}

@available(iOS 14.0, tvOS 14.0, *)
public extension コレクションビュー.補足ビュー登録 {
    typealias 補足ビュークラス = Supplementary
    typealias ハンドラ = (_ 補足ビュー: 補足ビュークラス, _ 種類: 文字列, _ インデックスパス: IndexPath) -> Void
}
