//
//  UIView.swift
//  
//
//  Created by p-x9 on 2022/05/19.
//  
//

import UIKit
import FoundationJapaneseTypealias

public extension 表示 {
    var タグ: Int {
        get {
            tag
        }
        set {
            tag = newValue
        }
    }
    var レイヤ: レイヤ {
        self.layer
    }
    
    var 背景色: 色? {
        get {
            self.backgroundColor
        }
        set {
            self.backgroundColor = newValue
        }
    }
    
    var 透明度: CGFloat {
        get {
            alpha
        }
        set {
            alpha = newValue
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
    
    var マスク: 表示? {
        get {
            mask
        }
        set {
            mask = newValue
        }
    }
    
    var 内容モード: UIView.ContentMode {
        get {
            contentMode
        }
        set {
            contentMode  = newValue
        }
    }
    
    var 隠れているか: 真理値 {
        get {
            isHidden
        }
        set {
            isHidden = isHidden
        }
    }
    
    var 透けているか: 真理値 {
        get {
            isOpaque
        }
        set {
            isOpaque = newValue
        }
    }
    
    var はみ出すか: 真理値 {
        get {
            clipsToBounds
        }
        set {
            clipsToBounds = newValue
        }
    }
}

public extension 表示 {
    var 前縁の錨: NSLayoutXAxisAnchor {
        leadingAnchor
    }
    
    var 後縁の錨: NSLayoutXAxisAnchor {
        trailingAnchor
    }
    
    var 左の錨: NSLayoutXAxisAnchor {
        leftAnchor
    }
    
    var 右の錨: NSLayoutXAxisAnchor {
        rightAnchor
    }
    
    var 上の錨: NSLayoutYAxisAnchor {
        topAnchor
    }
    
    var 下の錨: NSLayoutYAxisAnchor {
        bottomAnchor
    }
    
    var 横幅の錨: NSLayoutDimension {
        widthAnchor
    }
    
    var 高さの錨: NSLayoutDimension {
        heightAnchor
    }
    
    var 左右中心の錨: NSLayoutXAxisAnchor {
        centerXAnchor
    }
    
    var 上下中心の錨: NSLayoutYAxisAnchor {
        centerYAnchor
    }
    
    var 最初の基準線の錨: NSLayoutYAxisAnchor {
        firstBaselineAnchor
    }
    
    var 最後の基準線の錨: NSLayoutYAxisAnchor {
        lastBaselineAnchor
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
    
    /// func layoutIfNeeded()
    func もし必要ならレイアウト() {
        self.layoutIfNeeded()
    }
    
    ///  func setNeedsLayout()
    func レイアウトが必要です() {
        self.setNeedsLayout()
    }
    
    ///  func layoutSubviews()
    func 子供をレイアウト() {
        self.layoutSubviews()
    }
    
    /// func setNeedsDisplay()
    func 表示が必要です() {
        self.setNeedsDisplay()
    }
    
    /// func setNeedsDisplay(_ rect: CGRect)
    func 表示が必要です(_ 位置と大きさ: 位置と大きさ) {
        self.setNeedsDisplay(位置と大きさ)
    }
    
    /// func draw(_ rect: CGRect)
    func 描画(_ 位置と大きさ: 位置と大きさ) {
        self.draw(位置と大きさ)
    }
    
    /// func updateConstraints()
    func 制約を更新() {
        self.updateConstraints()
    }
    
    /// func updateConstraintsIfNeeded()
    func 必要なら制約を更新() {
        self.updateConstraints()
    }
    
    /// func needsUpdateConstraints() -> Bool
    func 制約の更新が必要か() -> 真理値 {
        self.needsUpdateConstraints()
    }
    
    /// func setNeedsUpdateConstraints()
    func 制約の更新が必要です() {
        self.setNeedsUpdateConstraints()
    }
}
