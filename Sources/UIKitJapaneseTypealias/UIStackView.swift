//
//  UIStackView.swift
//  
//
//  Created by p-x9 on 2022/06/02.
//  
//

import UIKit

extension スタックビュー {
    
    public typealias 分布 = スタックビュー.Distribution
    public typealias 整列 = スタックビュー.Alignment
    
    public var 並べられた子供: [ビュー] {
        arrangedSubviews
    }
    
    public var 軸: レイアウト制約.軸 {
        get {
            axis
        }
        set {
            axis = newValue
        }
    }
    
    public var 分布: 分布 {
        get {
            distribution
        }
        set {
            distribution = newValue
        }
    }
    
    public var 整列: 整列 {
        get {
            alignment
        }
        set {
            alignment = newValue
        }
    }
    
    public var 間隔: CGFloat {
        get {
            spacing
        }
        set {
            spacing = newValue
        }
    }
    
    public var 垂直方向の間隔を基準線から測定するかどうか: 真理値 {
        get {
            isBaselineRelativeArrangement
        }
        set {
            isBaselineRelativeArrangement = newValue
        }
    }
    
    public var レイアウトマージンに対して相対的に並べるか: 真理値 {
        get {
            isLayoutMarginsRelativeArrangement
        }
        set {
            isLayoutMarginsRelativeArrangement = newValue
        }
    }
}

extension スタックビュー {
    public func 並べる子供を追加(_ ビュー: ビュー) {
        addArrangedSubview(ビュー)
    }
    
    public func 並べられた子供を削除(_ ビュー: ビュー) {
        removeArrangedSubview(ビュー)
    }
    
    public func 並べる子供を挿入(_ ビュー: ビュー, インデックス: Int) {
        insertArrangedSubview(ビュー, at: インデックス)
    }
    
    @available(iOS 11.0, *)
    public func カスタム間隔を設定(_ 間隔: CGFloat, 次のビューの後 ビュー: ビュー) {
        setCustomSpacing(間隔, after: ビュー)
    }
    
    @available(iOS 11.0, *)
    public func カスタム間隔(次のビューの後 ビュー: ビュー) -> CGFloat {
        customSpacing(after: ビュー)
    }
}

public extension スタックビュー.分布 {
    static var 埋める: Self {
        .fill
    }
    static var 均等に埋める: Self {
        .fillEqually
    }
    static var 比例的に埋める: Self {
        .fillProportionally
    }
    static var 均等間隔: Self {
        .equalSpacing
    }
    static var 中心間隔を均等に: Self {
        .equalCentering
    }
}

public extension スタックビュー.整列 {
    static var 埋める: Self {
        .fill
    }
    static var 前縁: Self {
        .leading
    }
    static var 公園: Self {
        .trailing
    }
    static var 上: Self {
        .top
    }
    static var 下: Self {
        .bottom
    }
    static var 中心: Self {
        .center
    }
    static var 最初の基準線: Self {
        .firstBaseline
    }
    static var 最後の基準線: Self {
        .lastBaseline
    }
}
