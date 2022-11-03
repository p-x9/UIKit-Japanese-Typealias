//
//  UICollectionViewDelegateFlowLayout.swift
//  
//
//  Created by p-x9 on 2022/06/15.
//  
//

import UIKit

public protocol コレクションビューフローレイアウト委譲: コレクションビュー委譲 {
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, アイテムのサイズ インデックスパス: インデックスパス) -> 大きさ
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, セクションのインセット セクション: 整数) -> エッジインセット
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, セクション間の最小間隔 セクション: 整数) -> CGFloat
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, セクション中のアイテムの最小間隔 セクション: 整数) -> CGFloat
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, ヘッダ基準サイズ セクション: 整数) -> 大きさ
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, フッタ基準サイズ セクション: 整数) -> 大きさ
}

public extension コレクションビューフローレイアウト委譲 {
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, アイテムのサイズ インデックスパス: インデックスパス) -> 大きさ {
        (レイアウト as! コレクションビューフローレイアウト).itemSize
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, セクションのインセット セクション: 整数) -> エッジインセット {
        (レイアウト as! コレクションビューフローレイアウト).sectionInset
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, セクション間の最小間隔 セクション: 整数) -> CGFloat {
        (レイアウト as! コレクションビューフローレイアウト).minimumLineSpacing
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, セクション中のアイテムの最小間隔 セクション: 整数) -> CGFloat {
        (レイアウト as! コレクションビューフローレイアウト).minimumInteritemSpacing
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, ヘッダ基準サイズ セクション: 整数) -> 大きさ {
        (レイアウト as! コレクションビューフローレイアウト).headerReferenceSize
    }
    
    func コレクションビュー(_ コレクションビュー: コレクションビュー, レイアウト: コレクションビューレイアウト, フッタ基準サイズ セクション: 整数) -> 大きさ {
        (レイアウト as! コレクションビューフローレイアウト).footerReferenceSize
    }
}

extension UICollectionView: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        guard let 委譲 = 委譲 as? コレクションビューフローレイアウト委譲 else {
            return (collectionViewLayout as! コレクションビューフローレイアウト).itemSize
        }
        return 委譲.コレクションビュー(collectionView, レイアウト: collectionViewLayout, アイテムのサイズ: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        guard let 委譲 = 委譲 as? コレクションビューフローレイアウト委譲 else {
            return (collectionViewLayout as! コレクションビューフローレイアウト).sectionInset
        }
        return 委譲.コレクションビュー(collectionView, レイアウト: collectionViewLayout, セクションのインセット: section)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        guard let 委譲 = 委譲 as? コレクションビューフローレイアウト委譲 else {
            return (collectionViewLayout as! コレクションビューフローレイアウト).minimumLineSpacing
        }
        return 委譲.コレクションビュー(collectionView, レイアウト: collectionViewLayout, セクション間の最小間隔: section)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        guard let 委譲 = 委譲 as? コレクションビューフローレイアウト委譲 else {
            return (collectionViewLayout as! コレクションビューフローレイアウト).minimumInteritemSpacing
        }
        return 委譲.コレクションビュー(collectionView, レイアウト: collectionViewLayout, セクション中のアイテムの最小間隔: section)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        guard let 委譲 = 委譲 as? コレクションビューフローレイアウト委譲 else {
            return (collectionViewLayout as! コレクションビューフローレイアウト).headerReferenceSize
        }
        return 委譲.コレクションビュー(collectionView, レイアウト: collectionViewLayout, ヘッダ基準サイズ: section)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        guard let 委譲 = 委譲 as? コレクションビューフローレイアウト委譲 else {
            return (collectionViewLayout as! コレクションビューフローレイアウト).footerReferenceSize
        }
        return 委譲.コレクションビュー(collectionView, レイアウト: collectionViewLayout, フッタ基準サイズ: section)
    }
}
