import UIKit

public typealias 端末 = UIDevice

public typealias アプリケーション = UIApplication
public typealias アプリケーション委任 = UIApplicationDelegate

public typealias 窓 = UIWindow
public typealias スクリーン = UIScreen
public typealias シーン = UIScene

public typealias ビュー = UIView
public typealias ビューコントローラ = UIViewController
public typealias タブビューコントローラ = UITabBarController
public typealias ナビゲーションビューコントローラ = UINavigationController
public typealias テーブルビューコントローラ = UITableViewController
public typealias コレクションビューコントローラ = UICollectionViewController

public typealias レイヤ = CALayer
public typealias 形レイヤ = CAShapeLayer
public typealias 文字レイヤ = CATextLayer

public typealias 大きさ = CGSize
public typealias 位置 = CGPoint
public typealias 位置と大きさ = CGRect

public typealias 反応機 = UIResponder

public typealias コントロール = UIControl

public typealias ラベル = UILabel
public typealias テキストビュー = UITextView
public typealias テキストフィールド = UITextField
public typealias スイッチ = UISwitch
public typealias スライダー = UISlider
public typealias スタックビュー = UIStackView
public typealias ボタン = UIButton
public typealias 画像ビュー = UIImageView
public typealias テーブルビュー = UITableView
public typealias テーブルビューセル = UITableViewCell
public typealias テーブルビューヘッダフッタビュー = UITableViewHeaderFooterView
public typealias コレクションビュー = UICollectionView
public typealias コレクションビューセル = UICollectionViewCell
public typealias コレクション再利用可能ビュー = UICollectionReusableView
public typealias スクロールビュー = UIScrollView

public typealias バーボタンアイテム = UIBarButtonItem

public typealias 色 = UIColor
public typealias 画像 = UIImage
public typealias フォント = UIFont

public typealias イベント = UIEvent
public typealias アクション = UIAction
public typealias メニュー = UIMenu

/* UITableView */
//public typealias テーブルビュー委譲 = UITableViewDelegate
//public typealias テーブルビューデータソース = UITableViewDataSource
public typealias テーブルビューデータソース事前取得 = UITableViewDataSourcePrefetching
public typealias テーブルビュードラッグ委譲 = UITableViewDragDelegate
public typealias テーブルビュードロップ委譲 = UITableViewDropDelegate
@available(iOS, introduced: 8.0, deprecated: 13.0, message: "Use UIContextualAction and related APIs instead.")
public typealias テーブルビュー行アクション = UITableViewRowAction
public typealias テーブルビューフォーカス更新コンテキスト = UITableViewFocusUpdateContext

/* UICollectionView */
public typealias コレクションビューレイアウト = UICollectionViewLayout
public typealias コレクションビューフローレイアウト = UICollectionViewFlowLayout
public typealias コレクションビュー構成レイアウト = UICollectionViewCompositionalLayout
public typealias コレクションビュー構成レイアウト設定 = UICollectionViewCompositionalLayoutConfiguration
public typealias コレクションビュー構成レイアウトセクションプロバイダ = UICollectionViewCompositionalLayoutSectionProvider
@available(iOS 14.0, tvOS 14.0, *)
public typealias コレクションビューレイアウトリスト設定 = UICollectionLayoutListConfiguration
//public typealias コレクションビュー委譲 = UICollectionViewDelegate
//public typealias コレクションビューデータソース = UICollectionViewDataSource
public typealias コレクションビューデータソース事前取得 = UICollectionViewDataSourcePrefetching
public typealias コレクションビュードラッグ委譲 = UICollectionViewDragDelegate
public typealias コレクションビュードロップ委譲 = UICollectionViewDropDelegate
public typealias コレクションビュー遷移レイアウト = UICollectionViewTransitionLayout
public typealias コレクションビューレイアウト属性 = UICollectionViewLayoutAttributes
public typealias コレクションビューフォーカス更新コンテキスト = UICollectionViewFocusUpdateContext
public typealias コレクションレイアウトセクション = NSCollectionLayoutSection
public typealias コレクションレイアウトグループ = NSCollectionLayoutGroup
public typealias コレクションレイアウトセクション直行スクロール挙動 = UICollectionLayoutSectionOrthogonalScrollingBehavior
public typealias コレクションレイアウト境界補足アイテム = NSCollectionLayoutBoundarySupplementaryItem
public typealias コレクションレイアウト可視アイテム = NSCollectionLayoutVisibleItem
public typealias コレクションレイアウト装飾アイテム = NSCollectionLayoutDecorationItem
public typealias コレクションレイアウト環境 = NSCollectionLayoutEnvironment
public typealias コレクションレイアウトセクション可視アイテム無効化ハンドラ = ([コレクションレイアウト可視アイテム], 位置, コレクションレイアウト環境) -> Void

/* Constraint */
public typealias レイアウト制約 = NSLayoutConstraint
public typealias レイアウト錨 = NSLayoutAnchor
public typealias 横方向のレイアウト錨 = NSLayoutXAxisAnchor
public typealias 縦方向のレイアウト錨 = NSLayoutYAxisAnchor
public typealias 寸法のレイアウト錨 = NSLayoutDimension
public typealias レイアウト優先度 = UILayoutPriority

public typealias ストーリーボード = UIStoryboard
public typealias ストーリーボードセグエ = UIStoryboardSegue

public typealias モーダル遷移スタイル = UIModalTransitionStyle
public typealias モーダル表示スタイル = UIModalPresentationStyle

public typealias UIの向き = UIInterfaceOrientation
public typealias ビューコントローラが対応する画面の向き = UIInterfaceOrientationMask

public typealias UIの特性集 = UITraitCollection

public typealias エッジインセット = UIEdgeInsets
public typealias 方向エッジインセット = NSDirectionalEdgeInsets
@available(iOS 14.0, *)
public typealias コンテンツインセット関係 = UIContentInsetsReference

public typealias 視覚エフェクト = UIVisualEffect

public typealias コンテキストメニューインタラクション = UIContextMenuInteraction
public typealias コンテキストメニュー設定 = UIContextMenuConfiguration
public typealias コンテキストメニューインタラクションアニメータ = UIContextMenuInteractionAnimating
public typealias コンテキストメニューインタラクションコミットアニメータ = UIContextMenuInteractionCommitAnimating
public typealias ターゲットプレビュー = UITargetedPreview
public typealias スワイプアクション設定 = UISwipeActionsConfiguration

public typealias フォーカスアニメーションコーディネータ = UIFocusAnimationCoordinator

@available(iOS 13.4, *)
public typealias ポインタエフェクト = UIPointerEffect
@available(iOS 13.4, *)
public typealias ポインタ形 = UIPointerShape
@available(iOS 13.4, *)
public typealias ポインタスタイル = UIPointerStyle
