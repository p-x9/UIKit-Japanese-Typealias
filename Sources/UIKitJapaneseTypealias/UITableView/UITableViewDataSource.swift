//
//  File.swift
//  
//
//  Created by p-x9 on 2022/06/05.
//  
//

import UIKit
import FoundationJapaneseTypealias

@objc
public protocol テーブルビューデータソース: UITableViewDataSource {
    @objc func テーブルビュー(_ テーブルビュー: テーブルビュー, セクション中の行数 セクション: 整数) -> 整数
    
    @objc func テーブルビュー(_ テーブルビュー: テーブルビュー, セル インデックスパス: IndexPath) -> テーブルビューセル
    
    @objc optional func セクション数(テーブルビュー: テーブルビュー) -> 整数
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, ヘッダのタイトル セクション: 整数) -> 文字列?
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, フッタのタイトル セクション: 整数) -> 文字列?
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 編集可能か インデックスパス: IndexPath) -> 真理値
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 移動可能か インデックスパス: IndexPath) -> 真理値
    
    @objc optional func セクションインデックスのタイトル(テーブルビュー: テーブルビュー) -> [文字列]?
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, インデックスタイトルに対するセクション タイトル: 文字列, インデックス: 整数) -> 整数
    
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, コミット 編集スタイル: テーブルビューセル.EditingStyle, インデックスパス: IndexPath)
    
    @objc optional func テーブルビュー(_ テーブルビュー: テーブルビュー, 行を移動 移動元インデックスパス: IndexPath, 移動先インデックスパス: IndexPath)
}

public extension テーブルビューデータソース {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        テーブルビュー(tableView, セクション中の行数: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        テーブルビュー(tableView, セル: indexPath)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        セクション数?(テーブルビュー: tableView) ?? 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        テーブルビュー?(tableView, ヘッダのタイトル: section)
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        テーブルビュー?(tableView, フッタのタイトル: section)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        テーブルビュー?(tableView, 編集可能か: indexPath) ?? false
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        テーブルビュー?(tableView, 移動可能か: indexPath) ?? false
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        セクションインデックスのタイトル?(テーブルビュー: tableView)
    }
    
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        テーブルビュー?(tableView, インデックスタイトルに対するセクション: title, インデックス: index) ?? index
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        テーブルビュー?(tableView, コミット: editingStyle, インデックスパス: indexPath)
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        テーブルビュー?(tableView, 行を移動: sourceIndexPath, 移動先インデックスパス: destinationIndexPath)
    }
}
