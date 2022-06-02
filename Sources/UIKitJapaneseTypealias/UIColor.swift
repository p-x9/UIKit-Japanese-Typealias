//
//  UIColor.swift
//  
//
//  Created by p-x9 on 2022/05/20.
//  
//

import UIKit

public extension 色 {
    class var 黒: 色 { .black } // 0.0 white
    
    class var ダークグレイ: 色 { .darkGray } // 0.333 white
    
    class var ライトグレイ: 色 { .lightGray } // 0.667 white
    
    class var 白: 色 { .white } // 1.0 white
    
    class var グレイ: 色 { .gray } // 0.5 white
    
    class var 赤: 色 { .red } // 1.0, 0.0, 0.0 RGB
    
    class var 緑: 色 { .green } // 0.0, 1.0, 0.0 RGB
    
    class var 青: 色 { .blue } // 0.0, 0.0, 1.0 RGB
    
    class var シアン: 色 { .cyan } // 0.0, 1.0, 1.0 RGB
    
    class var 黄: 色 { .yellow } // 1.0, 1.0, 0.0 RGB
    
    class var マゼンタ: 色 { .magenta } // 1.0, 0.0, 1.0 RGB
    
    class var 橙: 色 { .orange } // 1.0, 0.5, 0.0 RGB
    
    class var 紫: 色 { .purple } // 0.5, 0.0, 0.5 RGB
    
    class var 茶: 色 { .brown } // 0.6, 0.4, 0.2 RGB
    
    class var 透明: 色 { .systemRed } // 0.0 white, 0.0 alpha
}

public extension 色 {
    @available(iOS 7.0, *)
    class var システム赤: 色 { .systemRed }
    
    @available(iOS 7.0, *)
    class var システム緑: 色 { .systemGreen }
    
    @available(iOS 7.0, *)
    class var システム青: 色 { .systemBlue }
    
    @available(iOS 7.0, *)
    class var システム橙: 色 { .systemOrange }
    
    @available(iOS 7.0, *)
    class var システム黄: 色 { .systemYellow }
    
    @available(iOS 7.0, *)
    class var システム桃: 色 { .systemPink }
    
    @available(iOS 9.0, *)
    class var システム紫: 色 { .systemPurple }
    
    @available(iOS 7.0, *)
    class var システムティール: 色 { .systemTeal }
    
    @available(iOS 13.0, *)
    class var システムインディゴ: 色 { .systemIndigo }
    
    @available(iOS 13.0, *)
    class var システム茶: 色 { .systemBrown }
    
    @available(iOS 15.0, *)
    class var システムミント: 色 { .systemMint }
    
    @available(iOS 15.0, *)
    class var システムシアン: 色 { .systemCyan }
    
    @available(iOS 7.0, *)
    class var システムグレイ: 色 { .systemGray }
    
    @available(iOS 13.0, *)
    class var システムグレイ2: 色 { .systemGray2 }
    
    @available(iOS 13.0, *)
    class var システムグレイ3: 色 { .systemGray3 }
    
    @available(iOS 13.0, *)
    class var システムグレイ4: 色 { .systemGray4 }
    
    @available(iOS 13.0, *)
    class var システムグレイ5: 色 { .systemGray5 }
    
    @available(iOS 13.0, *)
    class var システムグレイ6: 色 { .systemGray6 }
}

public extension 色 {
    @available(iOS 15.0, *)
    class var ティント: 色 { .tintColor }
    
    
    @available(iOS 13.0, *)
    class var ラベル: 色 { .label }
    
    @available(iOS 13.0, *)
    class var 二番目のラベル: 色 { .secondaryLabel }
    
    @available(iOS 13.0, *)
    class var 三番目のラベル: 色 { .tertiaryLabel }
    
    @available(iOS 13.0, *)
    class var 四番目のラベル: 色 { .quaternaryLabel }
    
    
    @available(iOS 13.0, *)
    class var リンク: 色 { .link }
    
    
    @available(iOS 13.0, *)
    class var プレイスホルダー文字列: 色 { .placeholderText }
    
    
    @available(iOS 13.0, *)
    class var セパレータ: 色 { .separator }
    
    @available(iOS 13.0, *)
    class var 不透明セパレータ: 色 { .opaqueSeparator }
    
    
    @available(iOS 13.0, *)
    class var システムの背景: 色 { .systemBackground }
    
    @available(iOS 13.0, *)
    class var システムの二番目の背景: 色 { .secondarySystemBackground }
    
    @available(iOS 13.0, *)
    class var システムの三番目の背景: 色 { .tertiarySystemBackground }
    
    
    @available(iOS 13.0, *)
    class var システムのグループ化された背景: 色 { .systemGroupedBackground }
    
    @available(iOS 13.0, *)
    class var システムの二番目のグループ化された背景: 色 { .secondarySystemGroupedBackground }
    
    @available(iOS 13.0, *)
    class var システムの三番目のグループ化された背景: 色 { .tertiarySystemGroupedBackground }
    
    
    @available(iOS 13.0, *)
    class var システムの埋める色: 色 { .systemFill }
    
    @available(iOS 13.0, *)
    class var システムの二番目の埋める色: 色 { .secondarySystemFill }
    
    @available(iOS 13.0, *)
    class var システムの三番目の埋める色: 色 { .tertiarySystemFill }
    
    @available(iOS 13.0, *)
    class var システムの四番目の埋める色: 色 { .quaternarySystemFill }
    
    
    class var 明るい文字列: 色 { .lightText }
    
    class var 暗い文字列: 色 { .darkText }
    
    @available(iOS, introduced: 2.0, deprecated: 13.0)
    class var グループ化されたテーブルビューの背景: 色 { .groupTableViewBackground }
}
