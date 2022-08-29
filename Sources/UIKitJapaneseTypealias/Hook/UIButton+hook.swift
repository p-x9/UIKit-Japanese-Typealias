//
//  UIButton+hook.swift
//  
//
//  Created by p-x9 on 2022/07/08.
//  
//

import UIKit

extension ボタン {
    
    static public var ボタンを日本語で全部書きたい = true
    
    @objc
    static public func japaneseButtonTypealiasHook() {
        guard Self.ボタンを日本語で全部書きたい else{
            return
        }
        
        /* init(frame:primaryAction:) */
        if #available(iOS 14.0, *) {
            Self.swizzle(orig: #selector(UIButton.init(frame:primaryAction:)), hooked: #selector(UIButton.init(位置と大きさ:主要アクション:)))
        }
        
        /* init(type:) */
        Self.swizzle(orig: #selector(UIButton.init(type:)), hooked: #selector(UIButton.init(タイプ:)))
        
        
        /* setTitle(_:for:) */
        Self.swizzle(orig: #selector(setTitle(_:for:)), hooked: #selector(タイトルをセット(_:次の状態の時:)))
        
        /* setTitleColor(_:for:) */
        Self.swizzle(orig: #selector(setTitleColor(_:for:)), hooked: #selector(タイトルの色をセット(_:次の状態の時:)))
        
        /* setTitleShadowColor(_:for:) */
        Self.swizzle(orig: #selector(setTitleShadowColor(_:for:)), hooked: #selector(タイトルの影の色をセット(_:次の状態の時:)))
        
        /* setImage(_:for:) */
        Self.swizzle(orig: #selector(setImage(_:for:)), hooked: #selector(画像をセット(_:次の状態の時:)))
        
        /* setBackgroundImage(_:for:) */
        Self.swizzle(orig: #selector(setBackgroundImage(_:for:)), hooked: #selector(背景画像をセット(_:次の状態の時:)))
        
        /* backgroundRect(forBounds:) */
        Self.swizzle(orig: #selector(backgroundRect(forBounds:)), hooked: #selector(背景の位置と大きさ(次の絶対位置と大きさの場合:)))
        
        /* contentRect(forBounds:) */
        Self.swizzle(orig: #selector(contentRect(forBounds:)), hooked: #selector(コンテンツの位置と大きさ(次の絶対位置と大きさの場合:)))
        
        /* titleRect(forContentRect:) */
        Self.swizzle(orig: #selector(titleRect(forContentRect:)), hooked: #selector(タイトルの位置と大きさ(次の絶対位置と大きさの場合:)))
        
        /* imageRect(forContentRect:) */
        Self.swizzle(orig: #selector(imageRect(forContentRect:)), hooked: #selector(画像の位置と大きさ(次の絶対位置と大きさの場合:)))
    }
}
