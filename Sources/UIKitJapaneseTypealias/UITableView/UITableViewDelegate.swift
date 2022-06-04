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
public protocol テーブルビュー委譲: UITableViewDelegate {
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

public extension テーブルビュー委譲 {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        テーブルビュー?(tableView, セルが表示される前: cell, インデックスパス: indexPath)
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        テーブルビュー?(tableView, ヘッダが表示される前: view, セクション: section)
    }
    
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        テーブルビュー?(tableView, フッタが表示される前: view, セクション: section)
    }
    
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        テーブルビュー?(tableView, セルの表示が終わった後: cell, インデックスパス: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
        テーブルビュー?(tableView, ヘッダの表示が終わった後: view, セクション: section)
    }
    
    func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
        テーブルビュー?(tableView, フッタの表示が終わった後: view, セクション: section)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        テーブルビュー?(tableView, 行の高さ: indexPath) ?? tableView.rowHeight
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        テーブルビュー?(tableView, ヘッダの高さ: section) ?? tableView.sectionHeaderHeight
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        テーブルビュー?(tableView, フッタの高さ: section) ?? tableView.sectionFooterHeight
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        テーブルビュー?(tableView, 予想される行の高さ: indexPath) ?? tableView.estimatedRowHeight
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        テーブルビュー?(tableView, 予想されるヘッダの高さ: section) ?? tableView.estimatedSectionHeaderHeight
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        テーブルビュー?(tableView, 予想されるフッタの高さ: section) ?? tableView.estimatedSectionFooterHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        テーブルビュー?(tableView, ヘッダビュー: section)
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        テーブルビュー?(tableView, フッタビュー: section)
    }
    
//    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {}
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        テーブルビュー?(tableView, 行をハイライトするべきか: indexPath) ?? true
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        テーブルビュー?(tableView, 行がハイライトされた後: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        テーブルビュー?(tableView, 行のハイライトが解除された後: indexPath)
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        テーブルビュー?(tableView, 行が選択される前: indexPath)
    }
    
    func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? {
        テーブルビュー?(tableView, 行の選択が解除される前: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        テーブルビュー?(tableView, 行が選択された後: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        テーブルビュー?(tableView, 行の選択が解除された後: indexPath)
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        テーブルビュー?(tableView, 編集スタイル: indexPath) ?? .delete
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        テーブルビュー?(tableView, 削除ボタンのタイトル: indexPath) ?? "Delete"
    }
    
    @available(iOS, introduced: 8.0, deprecated: 13.0)
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        テーブルビュー?(tableView, 編集アクション: indexPath)
    }
    
    @available(iOS 11.0, *)
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        テーブルビュー?(tableView, 前縁のスワイプアクション設定: indexPath)
    }
    
    @available(iOS 11.0, *)
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        テーブルビュー?(tableView, 後縁のスワイプアクション設定: indexPath)
    }
    
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        テーブルビュー?(tableView, 編集中に行にインデントを追加するべきか: indexPath) ?? true
    }
    
    func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) {
        テーブルビュー?(tableView, 行の編集が始まる前: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) {
        テーブルビュー?(tableView, 行の編集が終わった後: indexPath)
    }
    
    
    func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath {
        テーブルビュー?(tableView, 移動元インデックスパス: sourceIndexPath, 提案する移動先インデックスパス: proposedDestinationIndexPath) ?? sourceIndexPath
    }
    
    func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
        テーブルビュー?(tableView, 行のインデントレベル: indexPath) ?? 0
    }

    @available(iOS, introduced: 5.0, deprecated: 13.0)
    func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
        テーブルビュー?(tableView, メニューを表示するべきか: indexPath) ?? false
    }
    
    @available(iOS, introduced: 5.0, deprecated: 13.0)
    func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        テーブルビュー?(tableView, アクションを実行可能か: action, インデックスパス: indexPath, センダ: sender) ?? false
    }
    
    @available(iOS, introduced: 5.0, deprecated: 13.0)
    func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {
        テーブルビュー?(tableView, アクションを実行: action, インデックスパス: indexPath, センダ: sender)
    }
    
    func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool {
        テーブルビュー?(tableView, 行をフォーカス可能か: indexPath) ?? true
    }
    
    func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool {
        テーブルビュー?(tableView, フォーカスを更新すべきか: context) ?? true
    }
    
    func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        テーブルビュー?(tableView, フォーカスを更新した後: context, コーディネータ: coordinator)
    }
    
    func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath? {
        優先的にフォーカスされる行?(テーブルビュー: tableView)
    }
    
    @available(iOS 15.0, *)
    func tableView(_ tableView: UITableView, selectionFollowsFocusForRowAt indexPath: IndexPath) -> Bool {
        テーブルビュー?(tableView, 行フォーカス時に自動で選択するか: indexPath) ?? true
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
    func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
        テーブルビュー?(tableView, コンテキストメニュー設定: indexPath, 位置: point)
    }
    
    @available(iOS 13.0, *)
    func tableView(_ tableView: UITableView, previewForHighlightingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview? {
        テーブルビュー?(tableView, ハイライト中のコンテキストメニューのためのプレビュー: configuration)
    }
    
    @available(iOS 13.0, *)
    func tableView(_ tableView: UITableView, previewForDismissingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview? {
        テーブルビュー?(tableView, 閉じる中のコンテキストメニューのための移動先プレビュー: configuration)
    }
    
    @available(iOS 13.0, *)
    func tableView(_ tableView: UITableView, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating) {
        テーブルビュー?(tableView, プレビューアクションが実行される前: configuration, アニメータ: animator)
    }
    
    @available(iOS 14.0, *)
    func tableView(_ tableView: UITableView, willDisplayContextMenu configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?) {
        テーブルビュー?(tableView, コンテキストメニューが表示される前: configuration, アニメータ: animator)
    }
    
    @available(iOS 14.0, *)
    func tableView(_ tableView: UITableView, willEndContextMenuInteraction configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?) {
        テーブルビュー?(tableView, コンテキストメニューが表示が終わる前: configuration, アニメータ: animator)
    }
    
    
}
