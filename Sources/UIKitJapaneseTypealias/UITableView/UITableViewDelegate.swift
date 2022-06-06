//
//  UITableViewDelegate.swift
//  
//
//  Created by p-x9 on 2022/06/04.
//  
//

import UIKit
import FoundationJapaneseTypealias

@objc
public protocol テーブルビュー委譲: NSObjectProtocol {
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, セルが表示される前 セル: テーブルビューセル, インデックスパス: IndexPath)
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, ヘッダが表示される前 ビュー: ビュー, セクション: 整数)
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, フッタが表示される前 ビュー: ビュー, セクション: 整数)
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, セルの表示が終わった後 セル: テーブルビューセル, インデックスパス: IndexPath)
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, ヘッダの表示が終わった後 ビュー: ビュー, セクション: 整数)
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, フッタの表示が終わった後 ビュー: ビュー, セクション: 整数)
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行の高さ インデックスパス: IndexPath) -> CGFloat
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, ヘッダの高さ セクション: 整数) -> CGFloat
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, フッタの高さ セクション: 整数) -> CGFloat
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 予想される行の高さ インデックスパス: IndexPath) -> CGFloat
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 予想されるヘッダの高さ セクション: 整数) -> CGFloat
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 予想されるフッタの高さ セクション: 整数) -> CGFloat
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, ヘッダビュー セクション: 整数) -> ビュー?
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, フッタビュー セクション: 整数) -> ビュー?
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行をハイライトするべきか インデックスパス: IndexPath) -> 真理値
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行がハイライトされた後 インデックスパス: IndexPath)
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行のハイライトが解除された後 インデックスパス: IndexPath)
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行が選択される前 インデックスパス: IndexPath) -> IndexPath?
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行の選択が解除される前 インデックスパス: IndexPath) -> IndexPath?
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行が選択された後 インデックスパス: IndexPath)
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行の選択が解除された後 インデックスパス: IndexPath)
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 編集スタイル インデックスパス: IndexPath) -> UITableViewCell.EditingStyle
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 削除ボタンのタイトル インデックスパス: IndexPath) -> 文字列?
    
    @available(iOS, introduced: 8.0, deprecated: 13.0)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 編集アクション インデックスパス: IndexPath) -> [テーブルビュー行アクション]?
    
    
    @available(iOS 11.0, *)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 前縁のスワイプアクション設定 インデックスパス: IndexPath) -> スワイプアクション設定?
    
    @available(iOS 11.0, *)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 後縁のスワイプアクション設定 インデックスパス: IndexPath) -> スワイプアクション設定?
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 編集中に行にインデントを追加するべきか インデックスパス: IndexPath) -> 真理値
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行の編集が始まる前 インデックスパス: IndexPath)
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行の編集が終わった後 インデックスパス: IndexPath?)
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 移動元インデックスパス: IndexPath, 提案する移動先インデックスパス: IndexPath) -> IndexPath
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行のインデントレベル インデックスパス: IndexPath) -> 整数
    
    
    @available(iOS, introduced: 5.0, deprecated: 13.0)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, メニューを表示するべきか インデックスパス: IndexPath) -> 真理値
    
    @available(iOS, introduced: 5.0, deprecated: 13.0)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, アクションを実行可能か セレクタ: Selector, インデックスパス: IndexPath, センダ: Any?) -> 真理値
    
    @available(iOS, introduced: 5.0, deprecated: 13.0)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, アクションを実行 セレクタ: Selector, インデックスパス: IndexPath, センダ: Any?)
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行をフォーカス可能か インデックスパス: IndexPath) -> 真理値
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, フォーカスを更新すべきか コンテキスト: テーブルビューフォーカス更新コンテキスト) -> 真理値
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, フォーカスを更新した後 コンテキスト: テーブルビューフォーカス更新コンテキスト, コーディネータ: フォーカスアニメーションコーディネータ)
    
    @objc optional func 優先的にフォーカスされる行(テーブルビュー: テーブルビュー) -> IndexPath?
    
    
    @available(iOS 15.0, *)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行フォーカス時に自動で選択するか インデックスパス: IndexPath) -> 真理値
    
    
    @available(iOS 13.0, *)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, コンテキストメニュー設定 インデックスパス: IndexPath, 位置: 位置) -> コンテキストメニュー設定?
    
    @available(iOS 13.0, *)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, ハイライト中のコンテキストメニューのためのプレビュー 設定: コンテキストメニュー設定) -> ターゲットプレビュー?
    
    @available(iOS 13.0, *)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 閉じる中のコンテキストメニューのための移動先プレビュー 設定: コンテキストメニュー設定) -> ターゲットプレビュー?
    
    
    @available(iOS 13.0, *)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, プレビューアクションが実行される前 設定: コンテキストメニュー設定, アニメータ: コンテキストメニューインタラクションコミットアニメータ)
    
    
    @available(iOS 14.0, *)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, コンテキストメニューが表示される前 設定: コンテキストメニュー設定, アニメータ: コンテキストメニューインタラクションアニメータ?)
    
    @available(iOS 14.0, *)
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, コンテキストメニューが表示が終わる前 設定: コンテキストメニュー設定, アニメータ: コンテキストメニューインタラクションアニメータ?)
}

extension UITableView: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        委譲?.テーブルビュー?(tableView, セルが表示される前: cell, インデックスパス: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        委譲?.テーブルビュー?(tableView, ヘッダが表示される前: view, セクション: section)
    }
    
    public func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        委譲?.テーブルビュー?(tableView, フッタが表示される前: view, セクション: section)
    }
    
    public func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        委譲?.テーブルビュー?(tableView, セルの表示が終わった後: cell, インデックスパス: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
        委譲?.テーブルビュー?(tableView, ヘッダの表示が終わった後: view, セクション: section)
    }
    
    public func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
        委譲?.テーブルビュー?(tableView, フッタの表示が終わった後: view, セクション: section)
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        委譲?.テーブルビュー?(tableView, 行の高さ: indexPath) ?? tableView.rowHeight
    }
    
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        guard 委譲?.テーブルビュー?(tableView, ヘッダビュー: section) != nil else {
            return 0
        }
        return 委譲?.テーブルビュー?(tableView, ヘッダの高さ: section) ?? tableView.sectionHeaderHeight
    }
    
    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        guard 委譲?.テーブルビュー?(tableView, フッタビュー: section) != nil else {
            return 0
        }
        return 委譲?.テーブルビュー?(tableView, フッタの高さ: section) ?? tableView.sectionFooterHeight
    }
    
    public func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        委譲?.テーブルビュー?(tableView, 予想される行の高さ: indexPath) ?? tableView.estimatedRowHeight
    }
    
    public func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        委譲?.テーブルビュー?(tableView, 予想されるヘッダの高さ: section) ?? tableView.estimatedSectionHeaderHeight
    }
    
    public func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        委譲?.テーブルビュー?(tableView, 予想されるフッタの高さ: section) ?? tableView.estimatedSectionFooterHeight
    }
    
    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        委譲?.テーブルビュー?(tableView, ヘッダビュー: section)
    }
    
    public func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        委譲?.テーブルビュー?(tableView, フッタビュー: section)
    }
    
//    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {}
    
    public func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        委譲?.テーブルビュー?(tableView, 行をハイライトするべきか: indexPath) ?? true
    }
    
    public func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        委譲?.テーブルビュー?(tableView, 行がハイライトされた後: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        委譲?.テーブルビュー?(tableView, 行のハイライトが解除された後: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        guard let 委譲 = 委譲,
              委譲.responds(to: #selector(委譲.テーブルビュー(_:行が選択される前:))) else {
            return indexPath
        }
        return 委譲.テーブルビュー?(tableView, 行が選択される前: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? {
        guard let 委譲 = 委譲,
              委譲.responds(to: #selector(委譲.テーブルビュー(_:行の選択が解除される前:))) else {
            return indexPath
        }
        return 委譲.テーブルビュー?(tableView, 行の選択が解除される前: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        委譲?.テーブルビュー?(tableView, 行が選択された後: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        委譲?.テーブルビュー?(tableView, 行の選択が解除された後: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        委譲?.テーブルビュー?(tableView, 編集スタイル: indexPath) ?? .delete
    }
    
    public func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        委譲?.テーブルビュー?(tableView, 削除ボタンのタイトル: indexPath) ?? "Delete"
    }
    
    @available(iOS, introduced: 8.0, deprecated: 13.0)
    public func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        委譲?.テーブルビュー?(tableView, 編集アクション: indexPath)
    }
    
    @available(iOS 11.0, *)
    public func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        委譲?.テーブルビュー?(tableView, 前縁のスワイプアクション設定: indexPath)
    }
    
    @available(iOS 11.0, *)
    public func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        委譲?.テーブルビュー?(tableView, 後縁のスワイプアクション設定: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        委譲?.テーブルビュー?(tableView, 編集中に行にインデントを追加するべきか: indexPath) ?? true
    }
    
    public func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) {
        委譲?.テーブルビュー?(tableView, 行の編集が始まる前: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) {
        委譲?.テーブルビュー?(tableView, 行の編集が終わった後: indexPath)
    }
    
    
    public func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath {
        委譲?.テーブルビュー?(tableView, 移動元インデックスパス: sourceIndexPath, 提案する移動先インデックスパス: proposedDestinationIndexPath) ?? sourceIndexPath
    }
    
    public func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
        委譲?.テーブルビュー?(tableView, 行のインデントレベル: indexPath) ?? 0
    }

    @available(iOS, introduced: 5.0, deprecated: 13.0)
    public func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
        委譲?.テーブルビュー?(tableView, メニューを表示するべきか: indexPath) ?? false
    }
    
    @available(iOS, introduced: 5.0, deprecated: 13.0)
    public func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        委譲?.テーブルビュー?(tableView, アクションを実行可能か: action, インデックスパス: indexPath, センダ: sender) ?? false
    }

    @available(iOS, introduced: 5.0, deprecated: 13.0)
    public func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {
        委譲?.テーブルビュー?(tableView, アクションを実行: action, インデックスパス: indexPath, センダ: sender)
    }
    
    public func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool {
        委譲?.テーブルビュー?(tableView, 行をフォーカス可能か: indexPath) ?? true
    }

    public func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool {
        委譲?.テーブルビュー?(tableView, フォーカスを更新すべきか: context) ?? true
    }
    
    public func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        委譲?.テーブルビュー?(tableView, フォーカスを更新した後: context, コーディネータ: coordinator)
    }
    
    public func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath? {
        委譲?.優先的にフォーカスされる行?(テーブルビュー: tableView)
    }
    
    @available(iOS 15.0, *)
    public func tableView(_ tableView: UITableView, selectionFollowsFocusForRowAt indexPath: IndexPath) -> Bool {
        委譲?.テーブルビュー?(tableView, 行フォーカス時に自動で選択するか: indexPath) ?? true
    }
    
//    @available(iOS 11.0, *)
//    optional func tableView(_ tableView: UITableView, shouldSpringLoadRowAt indexPath: IndexPath, with context: UISpringLoadedInteractionContext) -> Bool
    
//    @available(iOS 13.0, *)
//    optional func tableView(_ tableView: UITableView, shouldBeginMultipleSelectionInteractionAt indexPath: IndexPath) -> Bool
//
//    @available(iOS 13.0, *)
//    optional func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath)
//
//    @available(iOS 13.0, *)
//    optional func tableViewDidEndMultipleSelectionInteraction(_ tableView: UITableView)
    
    @available(iOS 13.0, *)
    public func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
        委譲?.テーブルビュー?(tableView, コンテキストメニュー設定: indexPath, 位置: point)
    }
    
    @available(iOS 13.0, *)
    public func tableView(_ tableView: UITableView, previewForHighlightingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview? {
        委譲?.テーブルビュー?(tableView, ハイライト中のコンテキストメニューのためのプレビュー: configuration)
    }
    
    @available(iOS 13.0, *)
    public func tableView(_ tableView: UITableView, previewForDismissingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview? {
        委譲?.テーブルビュー?(tableView, 閉じる中のコンテキストメニューのための移動先プレビュー: configuration)
    }
    
    @available(iOS 13.0, *)
    public func tableView(_ tableView: UITableView, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating) {
        委譲?.テーブルビュー?(tableView, プレビューアクションが実行される前: configuration, アニメータ: animator)
    }
    
    @available(iOS 14.0, *)
    public func tableView(_ tableView: UITableView, willDisplayContextMenu configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?) {
        委譲?.テーブルビュー?(tableView, コンテキストメニューが表示される前: configuration, アニメータ: animator)
    }
    
    @available(iOS 14.0, *)
    public func tableView(_ tableView: UITableView, willEndContextMenuInteraction configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?) {
        委譲?.テーブルビュー?(tableView, コンテキストメニューが表示が終わる前: configuration, アニメータ: animator)
    }
    
}
