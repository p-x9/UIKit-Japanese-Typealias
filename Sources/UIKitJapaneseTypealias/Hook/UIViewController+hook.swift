//
//  UIViewController+hook.swift
//  
//
//  Created by p-x9 on 2022/06/02.
//  
//

import UIKit

extension 表示制御機 {
    
    static public var 表示制御機を日本語で全部書きたい = true
    
    @objc
    static public func japaneseTypealiasHook() {
        guard Self.表示制御機を日本語で全部書きたい else{
            return
        }
        
       /* loadView */
        self.swizzle(orig: #selector(loadView), hooked: #selector(表示を読み込み))
        
        /* loadViewIfNeeded */
        self.swizzle(orig: #selector(loadViewIfNeeded), hooked: #selector(必要なら表示を読み込む))
        
        /* viewDidLoad */
        self.swizzle(orig: #selector(viewDidLoad), hooked: #selector(表示が読み込まれた後))
        
        /* viewWillAppear(_ animated: Bool) */
        self.swizzle(orig: #selector(viewWillAppear(_:)), hooked: #selector(表示がこれから現れる(_:)))
        
        /* viewDidAppear(_ animated: Bool) */
        self.swizzle(orig: #selector(viewDidAppear(_:)), hooked: #selector(表示が現れた後(_:)))
        
        /* viewWillDisappear(_ animated: Bool) */
        self.swizzle(orig: #selector(viewWillDisappear(_:)), hooked: #selector(表示がこれから消える(_:)))
        
        /* viewDidDisappear(_ animated: Bool) */
        self.swizzle(orig: #selector(viewDidDisappear(_:)), hooked: #selector(表示が消えた後(_:)))
        
        /* viewWillLayoutSubviews() */
        self.swizzle(orig: #selector(viewWillLayoutSubviews), hooked: #selector(子供の表示がこれからレイアウトされる))
        
        /* viewDidLayoutSubviews() */
        self.swizzle(orig: #selector(viewDidLayoutSubviews), hooked: #selector(子供の表示がレイアウトされた後))
        
        /* show(_ vc: UIViewController, sender: Any?) */
        self.swizzle(orig: #selector(show(_:sender:)), hooked: #selector(表示(_:センダ:)))
        
        /* showDetailViewController(_ vc: UIViewController, sender: Any?) */
        self.swizzle(orig: #selector(showDetailViewController(_:sender:)), hooked: #selector(詳細を表示(_:センダ:)))
        
        /* setEditing(_ editing: Bool, animated: Bool) */
        self.swizzle(orig: #selector(setEditing(_:animated:)), hooked: #selector(編集中に設定(_:アニメーションと共に:)))
        
        /* updateViewConstraints() */
        self.swizzle(orig: #selector(updateViewConstraints), hooked: #selector(表示の制約を更新))
        
        
        /* supportedInterfaceOrientations */
        self.swizzle(orig: #selector(getter: supportedInterfaceOrientations), hooked: #selector(getter: 対応している画面の向き))
        
        /* preferredInterfaceOrientationForPresentation */
        self.swizzle(orig: #selector(getter: preferredInterfaceOrientationForPresentation), hooked: #selector(getter: 表示時に希望する画面の向き))
    }
}
