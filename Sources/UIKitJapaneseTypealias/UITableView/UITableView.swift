//
//  UITableView.swift
//  
//
//  Created by p-x9 on 2022/06/02.
//  
//

import UIKit
import FoundationJapaneseTypealias

extension テーブルビュー {
    private struct AssociatedKeys {
        static var dataSource = 0
    }
    
    public typealias スタイル = テーブルビュー.Style
    public typealias スクロール位置 = テーブルビュー.ScrollPosition
    public typealias 行アニメーション = テーブルビュー.RowAnimation
    
    public var スタイル: スタイル {
        style
    }
    
    public var データソース: テーブルビューデータソース? {
        get {
            if let object = objc_getAssociatedObject(self, &AssociatedKeys.dataSource)
                as? テーブルビューデータソース {
                return object
            }
            return nil
        }
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKeys.dataSource,
                                     newValue,
                                     .OBJC_ASSOCIATION_ASSIGN
            )
            if newValue != nil {
                self.dataSource = self
            }
        }
    }
    
    public var 委譲: テーブルビュー委譲? {
        get {
            delegate as? テーブルビュー委譲
        }
        set {
            delegate = newValue
        }
    }
    
    @available(iOS 10.0, *)
    public var 事前取得データソース: テーブルビューデータソース事前取得? {
        get {
            prefetchDataSource
        }
        set {
            prefetchDataSource = newValue
        }
    }
    
    @available(iOS 15.0, *)
    public var 事前取得が有効か: 真理値 {
        get {
            isPrefetchingEnabled
        }
        set {
            isPrefetchingEnabled = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var ドラッグ委譲: テーブルビュードラッグ委譲? {
        get {
            dragDelegate
        }
        set {
            dragDelegate = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var ドロップ委譲: テーブルビュードロップ委譲? {
        get {
            dropDelegate
        }
        set {
            dropDelegate = newValue
        }
    }
    
    public var 行の高さ: CGFloat {
        get {
            rowHeight
        }
        set {
            rowHeight = newValue
        }
    }
    
    public var セクションヘッダの高さ: CGFloat {
        get {
            sectionHeaderHeight
        }
        set {
            sectionHeaderHeight = newValue
        }
    }
    
    public var セクションフッタの高さ: CGFloat {
        get {
            sectionFooterHeight
        }
        set {
            sectionFooterHeight = newValue
        }
    }
    
    public var 予想される行の高さ: CGFloat {
        get {
            estimatedRowHeight
        }
        set {
            estimatedRowHeight = newValue
        }
    }
    
    public var 予想されるセクションヘッダの高さ: CGFloat {
        get {
            estimatedSectionHeaderHeight
        }
        set {
            estimatedSectionHeaderHeight = newValue
        }
    }
    
    public var 予想されるセクションフッタの高さ: CGFloat {
        get {
            estimatedSectionFooterHeight
        }
        set {
            estimatedSectionFooterHeight = newValue
        }
    }
    
    @available(iOS 15.0, *)
    public var テーブルを埋める空の行の高さ: CGFloat {
        get {
            fillerRowHeight
        }
        set {
            fillerRowHeight = newValue
        }
    }
    
    @available(iOS 15.0, *)
    public var セクションヘッダの上のパディング: CGFloat {
        get {
            sectionHeaderTopPadding
        }
        set {
            sectionHeaderTopPadding = newValue
        }
    }
    
    public var セパレータのインセット: エッジインセット {
        get {
            separatorInset
        }
        set {
            separatorInset = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var セパレータのインセットの参照: UITableView.SeparatorInsetReference {
        get {
            separatorInsetReference
        }
        set {
            separatorInsetReference = newValue
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
    
    @available(iOS 14.0, *)
    public var コンテキストメニューインタラクション: コンテキストメニューインタラクション? {
        contextMenuInteraction
    }
    
    public var セクション数: Int {
        numberOfSections
    }
    
    public var 可視セル: [テーブルビューセル] {
        visibleCells
    }
    
    public var 可視セルのインデックスパス: [IndexPath]? {
        indexPathsForVisibleRows
    }
    
    @available(iOS 11.0, *)
    public var コミットされていない更新があるか: 真理値 {
        hasUncommittedUpdates
    }
    
    public var 編集中か: 真理値 {
        get {
            isEditing
        }
        set {
            isEditing = newValue
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
    
    public var 編集中に選択を許可するか: 真理値 {
        get {
            allowsSelectionDuringEditing
        }
        set {
            allowsSelectionDuringEditing = newValue
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
    
    public var 編集中に複数選択を許可するか: 真理値 {
        get {
            allowsMultipleSelectionDuringEditing
        }
        set {
            allowsMultipleSelectionDuringEditing = newValue
        }
    }
    
    public var 選択された行のインデックスパス: IndexPath? {
        indexPathForSelectedRow
    }
    
    public var 選択された行のインデックスパスリスト: [IndexPath]? {
        indexPathsForSelectedRows
    }
    
    public var セクションインデックスに表示する最小行数: Int {
        get {
            sectionIndexMinimumDisplayRowCount
        }
        set {
            sectionIndexMinimumDisplayRowCount = newValue
        }
    }
    
    public var セクションインデックスの色: 色? {
        get {
            sectionIndexColor
        }
        set {
            sectionIndexColor = newValue
        }
    }
    
    public var セクションインデックスの背景色: 色? {
        get {
            sectionIndexBackgroundColor
        }
        set {
            sectionIndexBackgroundColor = newValue
        }
    }
    
    public var セクションインデックスのトラッキング中の背景色: 色? {
        get {
            sectionIndexTrackingBackgroundColor
        }
        set {
            sectionIndexTrackingBackgroundColor = newValue
        }
    }
    
    public var セパレータスタイル: テーブルビューセル.SeparatorStyle {
        get {
            separatorStyle
        }
        set {
            separatorStyle = newValue
        }
    }
    
    public var セパレータの色: 色? {
        get {
            separatorColor
        }
        set {
            separatorColor = newValue
        }
    }
    
    public var セパレータのエフェクト: 視覚エフェクト? {
        get {
            separatorEffect
        }
        set {
            separatorEffect = newValue
        }
    }
    
    public var 読みやすい幅に従ってセルをレイアウトするか: 真理値 {
        get {
            cellLayoutMarginsFollowReadableWidth
        }
        set {
            cellLayoutMarginsFollowReadableWidth = newValue
        }
    }
    
    @available(iOS 11.0, *)
    public var セーフエリア内に収まるようにインセットを調整するか: 真理値 {
        get {
            insetsContentViewsToSafeArea
        }
        set {
            insetsContentViewsToSafeArea = newValue
        }
    }
    
    public var テーブルヘッダビュー: ビュー? {
        get {
            tableHeaderView
        }
        set {
            tableHeaderView = newValue
        }
    }
    
    public var テーブルフッタビュー: ビュー? {
        get {
            tableFooterView
        }
        set {
            tableFooterView = newValue
        }
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
    public var ドラッグを有効にするか: 真理値 {
        get {
            dragInteractionEnabled
        }
        set {
            dragInteractionEnabled = newValue
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
}
 
extension テーブルビュー {
    public func 行数(セクション: 整数) -> 整数 {
        numberOfRows(inSection: セクション)
    }
    
    public func 位置と大きさ(セクション: 整数) -> 位置と大きさ {
        rect(forSection: セクション)
    }
    
    public func ヘッダの位置と大きさ(セクション: 整数) -> 位置と大きさ {
        rectForHeader(inSection: セクション)
    }
    
    public func フッタの位置と大きさ(セクション: 整数) -> 位置と大きさ {
        rectForFooter(inSection: セクション)
    }
    
    public func 行の位置と大きさ(インデックスパス: IndexPath) -> 位置と大きさ {
        rectForRow(at: インデックスパス)
    }
    
    public func インデックスパス(位置: 位置) -> IndexPath? {
        indexPathForRow(at: 位置)
    }
    
    public func インデックスパス(セル: テーブルビューセル) -> IndexPath? {
        indexPath(for: セル)
    }
    
    public func インデックスパス(次の範囲内の 範囲: 位置と大きさ) -> [IndexPath]? {
        indexPathsForRows(in: 範囲)
    }
    
    public func セル(インデックスパス: IndexPath) -> テーブルビューセル? {
        cellForRow(at: インデックスパス)
    }
    
    public func ヘッダビュー(セクション: 整数) -> テーブルビューヘッダフッタビュー? {
        headerView(forSection: セクション)
    }
    
    public func フッタビュー(セクション: 整数) -> テーブルビューヘッダフッタビュー? {
        footerView(forSection: セクション)
    }
    
    public func 行までスクロール(インデックスパス: IndexPath, 位置: スクロール位置, アニメーションと共に: 真理値) {
        scrollToRow(at: インデックスパス, at: 位置, animated: アニメーションと共に)
    }
    
    public func 最も近い選択された行までスクロール(位置: スクロール位置, アニメーションと共に: 真理値) {
        scrollToNearestSelectedRow(at: 位置, animated: アニメーションと共に)
    }
    
    @available(iOS 11.0, *)
    public func バッチ更新する(_ 更新: (() -> Void)?, 完了: ((Bool) -> Void)? = nil) {
        performBatchUpdates(更新, completion: 完了)
    }
    
    public func 更新を始める() {
        beginUpdates()
    }
    
    public func 更新を終わる() {
        endUpdates()
    }
    
    public func セクションを挿入(_ セクション: IndexSet, アニメーション: 行アニメーション) {
        insertSections(セクション, with: アニメーション)
    }
    
    public func セクションを削除(_ セクション: IndexSet, アニメーション: 行アニメーション) {
        deleteSections(セクション, with: アニメーション)
    }
    
    public func セクションを移動(_ セクション: 整数, 新しいセクション: 整数) {
        moveSection(セクション, toSection: 新しいセクション)
    }
    
    public func セクションを再読み込み(_ セクション: IndexSet, アニメーション: 行アニメーション) {
        reloadSections(セクション, with: アニメーション)
    }
    
    public func 行を挿入(インデックスパス: [IndexPath], アニメーション: 行アニメーション) {
        insertRows(at: インデックスパス, with: アニメーション)
    }
    
    public func 行を削除(インデックスパス: [IndexPath], アニメーション: 行アニメーション) {
        deleteRows(at: インデックスパス, with: アニメーション)
    }
    
    public func 行を移動(インデックスパス: IndexPath, 新インデックスパス: IndexPath) {
        moveRow(at: インデックスパス, to: 新インデックスパス)
    }
    
    public func 行を再読み込み(インデックスパス: [IndexPath], アニメーション: 行アニメーション) {
        reloadRows(at: インデックスパス, with: アニメーション)
    }
    
    @available(iOS 15.0, *)
    public func 行を再設定(インデックスパス: [IndexPath]) {
        reconfigureRows(at: インデックスパス)
    }
    
    public func データを再読み込み() {
        reloadData()
    }
    
    public func インデックスバーのタイトルを再読み込み() {
        reloadSectionIndexTitles()
    }
    
    public func 編集中に設定(_ 編集中: 真理値, アニメーションと共に: 真理値) {
        self.setEditing(編集中, animated: アニメーションと共に)
    }
    
    public func 行を選択(インデックスパス: IndexPath?, アニメーションと共に: 真理値, 位置: スクロール位置) {
        selectRow(at: インデックスパス, animated: アニメーションと共に, scrollPosition: 位置)
    }
    
    public func 行の選択を解除(インデックスパス: IndexPath, アニメーションと共に: 真理値) {
        deselectRow(at: インデックスパス, animated: アニメーションと共に)
    }
    
    public func 再利用可能なセルをデキュー(識別子: 文字列) -> テーブルビューセル? {
        dequeueReusableCell(withIdentifier: 識別子)
    }
    
    public func 再利用可能なセルをデキュー(識別子: 文字列, インデックスパス: IndexPath) -> テーブルビューセル? {
        dequeueReusableCell(withIdentifier: 識別子, for: インデックスパス)
    }
    
    public func 再利用可能なヘッダフッタビューをデキュー(識別子: 文字列) -> テーブルビューヘッダフッタビュー? {
        dequeueReusableHeaderFooterView(withIdentifier: 識別子)
    }
    
    public func 登録(_ nib: UINib?, セル識別子: 文字列) {
        register(nib, forCellReuseIdentifier: セル識別子)
    }
    
    public func 登録(_ セルクラス: AnyClass?, セル識別子: 文字列) {
        register(セルクラス, forCellReuseIdentifier: セル識別子)
    }
    
    public func 登録(_ nib: UINib?, ヘッダフッタ識別子: 文字列) {
        register(nib, forHeaderFooterViewReuseIdentifier: ヘッダフッタ識別子)
    }
    
    public func 登録(_ クラス: AnyClass?, ヘッダフッタ識別子: 文字列) {
        register(クラス, forHeaderFooterViewReuseIdentifier: ヘッダフッタ識別子)
    }
}
