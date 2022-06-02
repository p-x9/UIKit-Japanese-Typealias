//
//  UIViewController+hook.swift
//  
//
//  Created by p-x9 on 2022/06/02.
//  
//

import UIKit

extension ビューコントローラ {
    
    static public var ビューコントローラを日本語で全部書きたい = true
    
    @objc
    static public func japaneseTypealiasHook() {
        guard Self.ビューコントローラを日本語で全部書きたい else{
            return
        }
        
       /* loadView */
        self.swizzle(orig: #selector(loadView), hooked: #selector(ビューを読み込み))
        
        /* loadViewIfNeeded */
        self.swizzle(orig: #selector(loadViewIfNeeded), hooked: #selector(必要ならビューを読み込む))
        
        /* viewDidLoad */
        self.swizzle(orig: #selector(viewDidLoad), hooked: #selector(ビューが読み込まれた後))
        
        /* viewWillAppear(_ animated: Bool) */
        self.swizzle(orig: #selector(viewWillAppear(_:)), hooked: #selector(ビューがこれから現れる(_:)))
        
        /* viewDidAppear(_ animated: Bool) */
        self.swizzle(orig: #selector(viewDidAppear(_:)), hooked: #selector(ビューが現れた後(_:)))
        
        /* viewWillDisappear(_ animated: Bool) */
        self.swizzle(orig: #selector(viewWillDisappear(_:)), hooked: #selector(ビューがこれから消える(_:)))
        
        /* viewDidDisappear(_ animated: Bool) */
        self.swizzle(orig: #selector(viewDidDisappear(_:)), hooked: #selector(ビューが消えた後(_:)))
        
        /* viewWillLayoutSubviews() */
        self.swizzle(orig: #selector(viewWillLayoutSubviews), hooked: #selector(子供のビューがこれからレイアウトされる))
        
        /* viewDidLayoutSubviews() */
        self.swizzle(orig: #selector(viewDidLayoutSubviews), hooked: #selector(子供のビューがレイアウトされた後))
        
        /* show(_ vc: UIViewController, sender: Any?) */
        self.swizzle(orig: #selector(show(_:sender:)), hooked: #selector(表示(_:センダ:)))
        
        /* showDetailViewController(_ vc: UIViewController, sender: Any?) */
        self.swizzle(orig: #selector(showDetailViewController(_:sender:)), hooked: #selector(詳細を表示(_:センダ:)))
        
        /* setEditing(_ editing: Bool, animated: Bool) */
        self.swizzle(orig: #selector(setEditing(_:animated:)), hooked: #selector(編集中に設定(_:アニメーションと共に:)))
        
        /* updateViewConstraints() */
        self.swizzle(orig: #selector(updateViewConstraints), hooked: #selector(ビューの制約を更新))
        
        
        /* supportedInterfaceOrientations */
        self.swizzle(orig: #selector(getter: supportedInterfaceOrientations), hooked: #selector(getter: 対応している画面の向き))
        
        /* preferredInterfaceOrientationForPresentation */
        self.swizzle(orig: #selector(getter: preferredInterfaceOrientationForPresentation), hooked: #selector(getter: 表示時に希望する画面の向き))
    }
}
