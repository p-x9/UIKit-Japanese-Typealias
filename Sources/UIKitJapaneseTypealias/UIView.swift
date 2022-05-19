//
//  UIView.swift
//  
//
//  Created by p-x9 on 2022/05/19.
//  
//

import UIKit

public extension 表示 {
    var 背景色: 色? {
        get {
            self.backgroundColor
        }
        set {
            self.backgroundColor = newValue
        }
    }
    var 位置と大きさ: 位置と大きさ {
        get {
            self.frame
        }
        set {
            self.frame = newValue
        }
    }
    
    var 絶対位置と大きさ: 位置と大きさ {
        get {
            self.bounds
        }
        set {
            self.bounds = newValue
        }
    }
    
    var 中心: 位置 {
        get {
            self.center
        }
        set {
            self.center = newValue
        }
    }
    
    var 窓: 窓? {
        self.window
    }
    
    var 親表示: 表示? {
        self.superview
    }
    
    var 子表示たち: [表示] {
        self.subviews
    }
}

public extension 表示 {
    /// func addSubview(_ view: UIView)
    /// - Parameter 子供: UIVIew
    func 子供を追加(子供: 表示) {
        self.addSubview(子供)
    }
    
    /// func removeFromSuperview()
    func 親から独立する() {
        self.removeFromSuperview()
    }
}
