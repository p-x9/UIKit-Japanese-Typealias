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
    var タグ: 整数 {
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
    
    var ユーザイベントに反応するか: 真理値 {
        get {
            isUserInteractionEnabled
        }
        set {
            isUserInteractionEnabled = newValue
        }
    }
    
    var 同時に複数のタッチイベントを受け取るか: 真理値 {
        get {
            isMultipleTouchEnabled
        }
        set {
            isMultipleTouchEnabled = false
        }
    }
    
    var 自動サイズ調整用マスクをレイアウト制約に変換する: 真理値 {
        get {
            translatesAutoresizingMaskIntoConstraints
        }
        set {
            translatesAutoresizingMaskIntoConstraints = newValue
        }
    }
}

public extension 表示 {
    var 前縁の錨: 横方向のレイアウト錨 {
        leadingAnchor
    }
    
    var 後縁の錨: 横方向のレイアウト錨 {
        trailingAnchor
    }
    
    var 左の錨: 横方向のレイアウト錨 {
        leftAnchor
    }
    
    var 右の錨: 横方向のレイアウト錨 {
        rightAnchor
    }
    
    var 上の錨: 縦方向のレイアウト錨 {
        topAnchor
    }
    
    var 下の錨: 縦方向のレイアウト錨 {
        bottomAnchor
    }
    
    var 横幅の錨: 寸法のレイアウト錨 {
        widthAnchor
    }
    
    var 高さの錨: 寸法のレイアウト錨 {
        heightAnchor
    }
    
    var 左右中心の錨: 横方向のレイアウト錨 {
        centerXAnchor
    }
    
    var 上下中心の錨: 縦方向のレイアウト錨 {
        centerYAnchor
    }
    
    var 最初の基準線の錨: 縦方向のレイアウト錨 {
        firstBaselineAnchor
    }
    
    var 最後の基準線の錨: 縦方向のレイアウト錨 {
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
    
    func 固有サイズより大きくなることを防ぐ優先度(軸: レイアウト制約.軸) -> レイアウト優先度 {
        contentHuggingPriority(for: 軸)
    }
    
    func 固有サイズより小さくなることを防ぐ優先度(軸: レイアウト制約.軸) -> レイアウト優先度 {
        contentCompressionResistancePriority(for: 軸)
    }
    
    func 固有サイズより大きくなることを防ぐ優先度を設定(_ 優先度: レイアウト優先度, 軸: レイアウト制約.軸)  {
        setContentHuggingPriority(優先度, for: 軸)
    }
    
    func 固有サイズより小さくなることを防ぐ優先度を設定(_ 優先度: レイアウト優先度, 軸: レイアウト制約.軸) {
        setContentCompressionResistancePriority(優先度, for: 軸)
    }
}

public extension 表示 {
    func 変換(_ 位置: 位置, 変換先の表示: 表示?) -> 位置 {
        convert(位置, to: 変換先の表示)
    }
    
    func 変換(_ 位置: 位置, 変換元の表示: 表示?) -> 位置 {
        convert(位置, from: 変換元の表示)
    }
    
    func 変換(_ 位置と大きさ: 位置と大きさ, 変換先の表示: 表示?) -> 位置と大きさ {
        convert(位置と大きさ, to: 変換先の表示)
    }
    
    func 変換(_ 位置と大きさ: 位置と大きさ, 変換元の表示: 表示?) -> 位置と大きさ {
        convert(位置と大きさ, from: 変換元の表示)
    }
    
    func 適した大きさ(次に対して 大きさ: 大きさ) -> 大きさ {
        sizeThatFits(大きさ)
    }
    
    func 適した大きさにリサイズ() {
        sizeToFit()
    }
}

public extension 表示 {
    typealias アニメーションカーブ = AnimationCurve
    typealias アニメーション遷移 = AnimationTransition
    typealias アニメーションオプション = AnimationOptions
}

public extension 表示.アニメーションカーブ {
    static let ゆっくり始まりゆっくり終わる: Self = .easeInOut
    static let ゆっくり始まる: Self = .easeIn
    static let ゆっくり終わる: Self = .easeOut
    static let 線形: Self = .linear
}

public extension 表示.アニメーション遷移 {
    static let なし: Self = .none
    static let 左から反転: Self = .flipFromLeft
    static let 右から反転: Self = .flipFromRight
    static let 上に巻く: Self = .curlUp
    static let 下に巻く: Self = .curlDown
}

extension 表示 {
    class func アニメーション(期間: TimeInterval, 遅延: TimeInterval = 0, オプション: アニメーションオプション = [], アニメーション: @escaping () -> Void, 完了: ((真理値) -> Void)? = nil) {
        表示.animate(withDuration: 期間, delay: 遅延, options: オプション, animations: アニメーション, completion: 完了)
    }
    
    class func 遷移(表示: 表示, 期間: TimeInterval, オプション: アニメーションオプション = [], アニメーション: (() -> Void)?, 完了: ((真理値) -> Void)? = nil) {
        Self.transition(with: 表示, duration: 期間, animations: アニメーション, completion: 完了)
    }
    
    class func 遷移(元表示: 表示, 先表示: 表示, 期間: TimeInterval, オプション: アニメーションオプション = [], アニメーション: (() -> Void)?, 完了: ((真理値) -> Void)? = nil) {
        Self.transition(from: 元表示, to: 先表示, duration: 期間, options: オプション, completion: 完了)
    }
}
