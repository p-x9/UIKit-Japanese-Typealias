//
//  UIView.swift
//  
//
//  Created by p-x9 on 2022/05/31.
//  
//

import UIKit
import ObjectiveC

extension ビュー {
    
    static public var ビューを日本語で全部書きたい = true
    
    @objc
    static public func japaneseTypealiasHook() {
        guard Self.ビューを日本語で全部書きたい else{
            return
        }
        
        /* layoutSubviews() */
        Self.swizzle(orig: #selector(layoutSubviews), hooked: #selector(子供をレイアウト))
        
        /* draw(_ rect: CGRect) */
        Self.swizzle(orig: #selector(draw(_:)), hooked: #selector(描画(_:)))
    }
}


