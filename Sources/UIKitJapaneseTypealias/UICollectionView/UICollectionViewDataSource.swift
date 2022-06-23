//
//  UICollectionViewDataSource.swift
//  
//
//  Created by p-x9 on 2022/06/12.
//  
//

import UIKit
import FoundationJapaneseTypealias

public protocol コレクションビューデータソース: AnyObject {
    func コレクションビュー(_ コレクションビュー: コレクションビュー, セクション中のアイテム数 セクション: 整数) -> 整数
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, セル インデックスパス: IndexPath) -> コレクションビューセル
    
    func セクション数(コレクションビュー: コレクションビュー) -> 整数
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 補足ビュー 種類: 文字列, インデックスパス: IndexPath) -> コレクション再利用可能ビュー
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 移動可能か インデックスパス: IndexPath) -> 真理値
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 行を移動 移動元インデックスパス: IndexPath, 移動先インデックスパス: IndexPath)
    
    @available(iOS 14.0, *)
    func セクションインデックスのタイトル(コレクションビュー: コレクションビュー) -> [文字列]?
    
    @available(iOS 14.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, インデックスタイトルに対するインデックスパス タイトル: 文字列, インデックス: 整数) -> IndexPath
}

public extension コレクションビューデータソース {
    func セクション数(コレクションビュー: コレクションビュー) -> 整数 {
        1
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 補足ビュー 種類: 文字列, インデックスパス: IndexPath) -> コレクション再利用可能ビュー {
        fatalError(#function + "を実装してください")
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 移動可能か インデックスパス: IndexPath) -> 真理値 {
        false
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, 行を移動 移動元インデックスパス: IndexPath, 移動先インデックスパス: IndexPath) {}
    
    @available(iOS 14.0, *)
    func セクションインデックスのタイトル(コレクションビュー: コレクションビュー) -> [文字列]? {
        return nil
    }
    
    @available(iOS 14.0, *)
    func コレクションビュー(_ コレクションビュー: コレクションビュー, インデックスタイトルに対するインデックスパス タイトル: 文字列, インデックス: 整数) -> IndexPath {
        fatalError(#function + "を実装してください")
    }
}

extension UICollectionView: UICollectionViewDataSource {
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        データソース?.セクション数(コレクションビュー: collectionView) ?? 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        データソース!.コレクションビュー(collectionView, セル: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        データソース?.コレクションビュー(collectionView, セクション中のアイテム数: section) ?? 1
    }
    
    public func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        データソース!.コレクションビュー(collectionView, 補足ビュー: kind, インデックスパス: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        データソース?.コレクションビュー(collectionView, 移動可能か: indexPath) ?? false
    }
    
    public func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        データソース?.コレクションビュー(collectionView, 行を移動: sourceIndexPath, 移動先インデックスパス: destinationIndexPath)
    }
    
    @available(iOS 14.0, *)
    public func indexTitles(for collectionView: UICollectionView) -> [String]? {
        データソース?.セクションインデックスのタイトル(コレクションビュー: collectionView)
    }
    
    @available(iOS 14.0, *)
    public func collectionView(_ collectionView: UICollectionView, indexPathForIndexTitle title: String, at index: Int) -> IndexPath {
        データソース!.コレクションビュー(collectionView, インデックスタイトルに対するインデックスパス: title, インデックス: index)
    }
}
