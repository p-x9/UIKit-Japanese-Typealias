//
//  File.swift
//  
//
//  Created by p-x9 on 2022/06/05.
//  
//

import UIKit

@objc
public protocol テーブルビューデータソース: AnyObject {
    @objc func テーブルビュー(_ テーブルビュー: テーブルビュー, セクション中の行数 セクション: 整数) -> 整数
    
    @objc func テーブルビュー(_ テーブルビュー: テーブルビュー, セル インデックスパス: インデックスパス) -> テーブルビューセル
    
    @objc optional func セクション数(テーブルビュー: テーブルビュー) -> 整数
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, ヘッダのタイトル セクション: 整数) -> 文字列?
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, フッタのタイトル セクション: 整数) -> 文字列?
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 編集可能か インデックスパス: インデックスパス) -> 真理値
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 移動可能か インデックスパス: インデックスパス) -> 真理値
    
    @objc optional func セクションインデックスのタイトル(テーブルビュー: テーブルビュー) -> [文字列]?
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, インデックスタイトルに対するセクション タイトル: 文字列, インデックス: 整数) -> 整数
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, コミット 編集スタイル: テーブルビューセル.EditingStyle, インデックスパス: インデックスパス)
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行を移動 移動元インデックスパス: インデックスパス, 移動先インデックスパス: インデックスパス)
}

extension UITableView: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        データソース!.テーブルビュー(tableView, セクション中の行数: section)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        データソース!.テーブルビュー(tableView, セル: indexPath)
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        データソース?.セクション数?(テーブルビュー: tableView) ?? 1
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        データソース?.テーブルビュー?(tableView, ヘッダのタイトル: section)
    }
    
    public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        データソース?.テーブルビュー?(tableView, フッタのタイトル: section)
    }
    
    public func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        データソース?.テーブルビュー?(tableView, 編集可能か: indexPath) ?? false
    }
    
    public func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        データソース?.テーブルビュー?(tableView, 移動可能か: indexPath) ?? false
    }
    
    public func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        データソース?.セクションインデックスのタイトル?(テーブルビュー: tableView)
    }
    
    public func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        データソース?.テーブルビュー?(tableView, インデックスタイトルに対するセクション: title, インデックス: index) ?? index
    }
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        データソース?.テーブルビュー?(tableView, コミット: editingStyle, インデックスパス: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        データソース?.テーブルビュー?(tableView, 行を移動: sourceIndexPath, 移動先インデックスパス: destinationIndexPath)
    }
}
