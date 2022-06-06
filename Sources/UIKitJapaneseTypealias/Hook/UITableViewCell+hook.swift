//
//  UITableViewCell.swift
//  
//
//  Created by p-x9 on 2022/06/06.
//  
//

import UIKit
import ObjectiveC

extension テーブルビューセル {
    
    static public var テーブルビューセルを日本語で全部書きたい = true
    
    @objc
    static public func japaneseTableViewCellTypealiasHook() {
        guard Self.テーブルビューセルを日本語で全部書きたい else{
            return
        }
        
        /* prepareForReuse() */
        Self.swizzle(orig: #selector(prepareForReuse), hooked: #selector(再利用の準備))
        
        /* setSelected(_ selected: Bool, animated: Bool) */
        Self.swizzle(orig: #selector(setSelected(_:animated:)), hooked: #selector(選択を設定(_:アニメーションと共に:)))
        
        /* setHighlighted(_ highlighted: Bool, animated: Bool) */
        Self.swizzle(orig: #selector(setHighlighted(_:animated:)), hooked: #selector(ハイライトを設定(_:アニメーションと共に:)))
        
        /* setEditing(_ editing: Bool, animated: Bool) */
        Self.swizzle(orig: #selector(setEditing(_:animated:)), hooked: #selector(編集中を設定(_:アニメーションと共に:)))
        
        /* willTransition(to state: UITableViewCell.StateMask) */
        Self.swizzle(orig: #selector(willTransition(to:)), hooked: #selector(遷移前(次の状態に:)))
        
        /* didTransition(to state: UITableViewCell.StateMask) */
        Self.swizzle(orig: #selector(didTransition(to:)), hooked: #selector(遷移後(次の状態に:)))
    }
}
