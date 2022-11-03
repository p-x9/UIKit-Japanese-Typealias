//
//  UICollectionViewDelegate.swift
//  
//
//  Created by p-x9 on 2022/06/10.
//  
//

import UIKit

public protocol コレクションビュー委譲: NSObjectProtocol {
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムをハイライトするべきか インデックスパス: インデックスパス) -> 真理値
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムがハイライトされた後 インデックスパス: インデックスパス)
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムのハイライトが解除された後 インデックスパス: インデックスパス)
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムを選択するべきか インデックスパス: インデックスパス) -> 真理値
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムの選択を解除するべきか インデックスパス: インデックスパス) -> 真理値
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムが選択された後 インデックスパス: インデックスパス)
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムの選択が解除された後 インデックスパス: インデックスパス)
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, セルが表示される前 セル: コレクションビューセル, インデックスパス: インデックスパス)
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 補足ビューが表示される前 ビュー: コレクション再利用可能ビュー, 種類: 文字列, インデックスパス: インデックスパス)
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, セルの表示が終わった後 セル: コレクションビューセル, インデックスパス: インデックスパス)
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 補足ビューの表示が終わった後 ビュー: コレクション再利用可能ビュー, 種類: 文字列, インデックスパス: インデックスパス)
    
    @available(iOS, introduced: 6.0, deprecated: 13.0)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, メニューを表示するべきか インデックスパス: インデックスパス) -> 真理値
    
    @available(iOS, introduced: 5.0, deprecated: 13.0)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アクションを実行可能か セレクタ: Selector, インデックスパス: インデックスパス, センダ: Any?) -> 真理値
    
    @available(iOS, introduced: 5.0, deprecated: 13.0)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アクションを実行 セレクタ: Selector, インデックスパス: インデックスパス, センダ: Any?)
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウトを遷移 元レイアウト: コレクションビューレイアウト, 先レイアウト: コレクションビューレイアウト) -> コレクションビュー遷移レイアウト
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムをフォーカス可能か インデックスパス: インデックスパス) -> 真理値
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, フォーカスを更新すべきか コンテキスト: コレクションビューフォーカス更新コンテキスト) -> 真理値
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, フォーカスを更新した後 コンテキスト: コレクションビューフォーカス更新コンテキスト, コーディネータ: フォーカスアニメーションコーディネータ)
    
    func 優先的にフォーカスされるビュー(コレクションビュー: コレクションビュー) -> インデックスパス?
    
    @available(iOS 15.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムフォーカス時に自動で選択するか インデックスパス: インデックスパス) -> 真理値
    
    @available(iOS 15.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 移動元インデックスパス: インデックスパス, 現在のインデックスパス: インデックスパス,  提案する移動先インデックスパス: インデックスパス) -> インデックスパス
    
    @available(iOS, introduced: 9.0, deprecated: 15.0)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 移動元インデックスパス: インデックスパス, 提案する移動先インデックスパス: インデックスパス) -> インデックスパス
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 提案するコンテンツオフセット: 位置) -> 位置
    
    @available(iOS 14.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムを編集可能か インデックスパス: インデックスパス) -> 真理値
    
    @available(iOS 13.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, コンテキストメニュー設定 インデックスパス: インデックスパス, 位置: 位置) -> コンテキストメニュー設定?
    
    @available(iOS 13.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, ハイライト中のコンテキストメニューのためのプレビュー 設定: コンテキストメニュー設定) -> ターゲットプレビュー?
    
    @available(iOS 13.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 閉じる中のコンテキストメニューのための移動先プレビュー 設定: コンテキストメニュー設定) -> ターゲットプレビュー?
    
    @available(iOS 13.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, プレビューアクションが実行される前 設定: コンテキストメニュー設定, アニメータ: コンテキストメニューインタラクションコミットアニメータ)
    
    
    @available(iOS 13.2, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, コンテキストメニューが表示される前 設定: コンテキストメニュー設定, アニメータ: コンテキストメニューインタラクションアニメータ?)
    
    @available(iOS 13.2, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, コンテキストメニューが表示が終わる前 設定: コンテキストメニュー設定, アニメータ: コンテキストメニューインタラクションアニメータ?)
    
}

public extension コレクションビュー委譲 {
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムをハイライトするべきか インデックスパス: インデックスパス) -> 真理値 {
        true
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムがハイライトされた後 インデックスパス: インデックスパス) {}
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムのハイライトが解除された後 インデックスパス: インデックスパス) {}
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムを選択するべきか インデックスパス: インデックスパス) -> 真理値 {
        true
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムの選択を解除するべきか インデックスパス: インデックスパス) -> 真理値 {
        true
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムが選択された後 インデックスパス: インデックスパス) {}
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムの選択が解除された後 インデックスパス: インデックスパス) {}
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, セルが表示される前 セル: コレクションビューセル, インデックスパス: インデックスパス) {}
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 補足ビューが表示される前 ビュー: コレクション再利用可能ビュー, 種類: 文字列, インデックスパス: インデックスパス) {}
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, セルの表示が終わった後 セル: コレクションビューセル, インデックスパス: インデックスパス) {}
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 補足ビューの表示が終わった後 ビュー: コレクション再利用可能ビュー, 種類: 文字列, インデックスパス: インデックスパス) {}
    
    @available(iOS, introduced: 6.0, deprecated: 13.0)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, メニューを表示するべきか インデックスパス: インデックスパス) -> 真理値 {
        false
    }
    
    @available(iOS, introduced: 5.0, deprecated: 13.0)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アクションを実行可能か セレクタ: Selector, インデックスパス: インデックスパス, センダ: Any?) -> 真理値 {
        false
    }
    
    @available(iOS, introduced: 5.0, deprecated: 13.0)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アクションを実行 セレクタ: Selector, インデックスパス: インデックスパス, センダ: Any?) {}
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウトを遷移 元レイアウト: コレクションビューレイアウト, 先レイアウト: コレクションビューレイアウト) -> コレクションビュー遷移レイアウト {
        UICollectionViewTransitionLayout(currentLayout: 元レイアウト, nextLayout: 先レイアウト)
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムをフォーカス可能か インデックスパス: インデックスパス) -> 真理値 {
        // FIXME: https://developer.apple.com/documentation/uikit/uicollectionviewdelegate/1618013-collectionview
        self.コレクションビュー(コレクションビュー, アイテムをハイライトするべきか: インデックスパス)
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, フォーカスを更新すべきか コンテキスト: コレクションビューフォーカス更新コンテキスト) -> 真理値 {
        true
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, フォーカスを更新した後 コンテキスト: コレクションビューフォーカス更新コンテキスト, コーディネータ: フォーカスアニメーションコーディネータ) {}
    
    func 優先的にフォーカスされるビュー(コレクションビュー: コレクションビュー) -> インデックスパス? {
        nil
    }
    
    @available(iOS 15.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムフォーカス時に自動で選択するか インデックスパス: インデックスパス) -> 真理値 {
        true
    }
    
    @available(iOS 15.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 移動元インデックスパス: インデックスパス, 現在のインデックスパス: インデックスパス,  提案する移動先インデックスパス: インデックスパス) -> インデックスパス {
        提案する移動先インデックスパス
    }
    
    @available(iOS, introduced: 9.0, deprecated: 15.0)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 移動元インデックスパス: インデックスパス, 提案する移動先インデックスパス: インデックスパス) -> インデックスパス {
        提案する移動先インデックスパス
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 提案するコンテンツオフセット: 位置) -> 位置 {
        提案するコンテンツオフセット
    }
    
    @available(iOS 14.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, アイテムを編集可能か インデックスパス: インデックスパス) -> 真理値 {
        true
    }
    
    @available(iOS 13.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, コンテキストメニュー設定 インデックスパス: インデックスパス, 位置: 位置) -> コンテキストメニュー設定? {
        nil
    }
    
    @available(iOS 13.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, ハイライト中のコンテキストメニューのためのプレビュー 設定: コンテキストメニュー設定) -> ターゲットプレビュー? {
        nil
    }
    
    @available(iOS 13.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 閉じる中のコンテキストメニューのための移動先プレビュー 設定: コンテキストメニュー設定) -> ターゲットプレビュー? {
        nil
    }
    
    @available(iOS 13.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, プレビューアクションが実行される前 設定: コンテキストメニュー設定, アニメータ: コンテキストメニューインタラクションコミットアニメータ) {}
    
    
    @available(iOS 13.2, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, コンテキストメニューが表示される前 設定: コンテキストメニュー設定, アニメータ: コンテキストメニューインタラクションアニメータ?) {}
    
    @available(iOS 13.2, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, コンテキストメニューが表示が終わる前 設定: コンテキストメニュー設定, アニメータ: コンテキストメニューインタラクションアニメータ?) {}
}


extension UICollectionView: UICollectionViewDelegate {
    public func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        委譲?.コレクションビュー(collectionView, アイテムをハイライトするべきか: indexPath) ?? true
    }
    
    public func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        委譲?.コレクションビュー(collectionView, アイテムがハイライトされた後: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        委譲?.コレクションビュー(collectionView, アイテムのハイライトが解除された後: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        委譲?.コレクションビュー(collectionView, アイテムを選択するべきか: indexPath) ?? true
    }
    
    public func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool {
        委譲?.コレクションビュー(collectionView, アイテムの選択を解除するべきか: indexPath) ?? true
    }
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        委譲?.コレクションビュー(collectionView, アイテムが選択された後: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        委譲?.コレクションビュー(collectionView, アイテムの選択が解除された後: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        委譲?.コレクションビュー(collectionView, セルが表示される前: cell, インデックスパス: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath) {
        委譲?.コレクションビュー(collectionView, 補足ビューが表示される前: view, 種類: elementKind, インデックスパス: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        委譲?.コレクションビュー(collectionView, セルの表示が終わった後: cell, インデックスパス: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: IndexPath) {
        委譲?.コレクションビュー(collectionView, 補足ビューの表示が終わった後: view, 種類: elementKind, インデックスパス: indexPath)
    }
    
    @available(iOS, introduced: 6.0, deprecated: 13.0)
    public func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        委譲?.コレクションビュー(collectionView, メニューを表示するべきか: indexPath) ?? false
    }
    
    @available(iOS, introduced: 6.0, deprecated: 13.0)
    public func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        委譲?.コレクションビュー(collectionView, アクションを実行可能か: action, インデックスパス: indexPath, センダ: sender) ?? false
    }
    
    @available(iOS, introduced: 6.0, deprecated: 13.0)
    public func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
        委譲?.コレクションビュー(collectionView, アクションを実行: action, インデックスパス: indexPath, センダ: sender)
    }
    
    public func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout {
        委譲?.コレクションビュー(collectionView, レイアウトを遷移: fromLayout, 先レイアウト: toLayout) ?? UICollectionViewTransitionLayout(currentLayout: fromLayout, nextLayout: toLayout)
    }
    
    public func collectionView(_ collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool {
        // FIXME: https://developer.apple.com/documentation/uikit/uicollectionviewdelegate/1618013-collectionview
        委譲?.コレクションビュー(collectionView, アイテムをフォーカス可能か: indexPath) ?? self.collectionView(collectionView, shouldSelectItemAt: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool {
        委譲?.コレクションビュー(collectionView, フォーカスを更新すべきか: context) ?? true
    }
    
    public func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        委譲?.コレクションビュー(collectionView, フォーカスを更新した後: context, コーディネータ: coordinator)
    }
    
    public func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> IndexPath? {
        委譲?.優先的にフォーカスされるビュー(コレクションビュー: collectionView)
    }
    
    @available(iOS 15.0, *)
    public func collectionView(_ collectionView: UICollectionView, selectionFollowsFocusForItemAt indexPath: IndexPath) -> Bool {
        委譲?.コレクションビュー(collectionView, アイテムフォーカス時に自動で選択するか: indexPath) ?? true
    }
    
    @available(iOS 15.0, *)
    public func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveOfItemFromOriginalIndexPath originalIndexPath: IndexPath, atCurrentIndexPath currentIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath {
        委譲?.コレクションビュー(collectionView, 移動元インデックスパス: originalIndexPath, 現在のインデックスパス: currentIndexPath, 提案する移動先インデックスパス: proposedIndexPath) ?? proposedIndexPath
    }
    
    @available(iOS, introduced: 9.0, deprecated: 15.0)
    public func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveFromItemAt currentIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath {
        委譲?.コレクションビュー(collectionView, 移動元インデックスパス: currentIndexPath, 提案する移動先インデックスパス: proposedIndexPath) ?? proposedIndexPath
    }
    
    public func collectionView(_ collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        委譲?.コレクションビュー(collectionView, 提案するコンテンツオフセット: proposedContentOffset) ?? proposedContentOffset
    }
    
    @available(iOS 14.0, *)
    public func collectionView(_ collectionView: UICollectionView, canEditItemAt indexPath: IndexPath) -> Bool {
        委譲?.コレクションビュー(collectionView, アイテムを編集可能か: indexPath) ?? true
    }
    
    //    @available(iOS 11.0, *)
    //    optional func collectionView(_ collectionView: UICollectionView, shouldSpringLoadItemAt indexPath: IndexPath, with context: UISpringLoadedInteractionContext) -> Bool
    
    //    @available(iOS 13.0, *)
    //    optional func collectionView(_ collectionView: UICollectionView, shouldBeginMultipleSelectionInteractionAt indexPath: IndexPath) -> Bool
    
    //    @available(iOS 13.0, *)
    //    optional func collectionView(_ collectionView: UICollectionView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath)
    
    //    @available(iOS 13.0, *)
    //    optional func collectionViewDidEndMultipleSelectionInteraction(_ collectionView: UICollectionView)
    
    @available(iOS 13.0, *)
    public func collectionView(_ collectionView: UICollectionView, contextMenuConfigurationForItemAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
        委譲?.コレクションビュー(collectionView, コンテキストメニュー設定: indexPath, 位置: point)
    }
    
    @available(iOS 13.0, *)
    public func collectionView(_ collectionView: UICollectionView, previewForHighlightingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview? {
        委譲?.コレクションビュー(collectionView, ハイライト中のコンテキストメニューのためのプレビュー: configuration)
    }
    
    @available(iOS 13.0, *)
    public func collectionView(_ collectionView: UICollectionView, previewForDismissingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview? {
        委譲?.コレクションビュー(collectionView, 閉じる中のコンテキストメニューのための移動先プレビュー: configuration)
    }
    
    @available(iOS 13.0, *)
    public func collectionView(_ collectionView: UICollectionView, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating) {
        委譲?.コレクションビュー(collectionView, プレビューアクションが実行される前: configuration, アニメータ: animator)
    }
    
    @available(iOS 13.2, *)
    public func collectionView(_ collectionView: UICollectionView, willDisplayContextMenu configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?) {
        委譲?.コレクションビュー(collectionView, コンテキストメニューが表示される前: configuration, アニメータ: animator)
    }
    
    @available(iOS 13.2, *)
    public func collectionView(_ collectionView: UICollectionView, willEndContextMenuInteraction configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?) {
        委譲?.コレクションビュー(collectionView, コンテキストメニューが表示が終わる前: configuration, アニメータ: animator)
    }
    
    //    @available(iOS 15.0, *)
    //    optional func collectionView(_ collectionView: UICollectionView, sceneActivationConfigurationForItemAt indexPath: IndexPath, point: CGPoint) -> UIWindowScene.ActivationConfiguration?
    
}
