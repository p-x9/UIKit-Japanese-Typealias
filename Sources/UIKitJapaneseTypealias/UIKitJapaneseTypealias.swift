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

public typealias 制御 = UIControl

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
public typealias コレクションビュー委譲 = UICollectionViewDelegate
public typealias コレクションビューデータソース = UICollectionViewDataSource
public typealias コレクションビューデータソース事前取得 = UICollectionViewDataSourcePrefetching
public typealias コレクションビュードラッグ委譲 = UICollectionViewDragDelegate
public typealias コレクションビュードロップ委譲 = UICollectionViewDropDelegate
public typealias コレクションビュー遷移レイアウト = UICollectionViewTransitionLayout
public typealias コレクションビューレイアウト属性 = UICollectionViewLayoutAttributes

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

public typealias 視覚エフェクト = UIVisualEffect

public typealias コンテキストメニューインタラクション = UIContextMenuInteraction
public typealias コンテキストメニュー設定 = UIContextMenuConfiguration
public typealias コンテキストメニューインタラクションアニメータ = UIContextMenuInteractionAnimating
public typealias コンテキストメニューインタラクションコミットアニメータ = UIContextMenuInteractionCommitAnimating
public typealias ターゲットプレビュー = UITargetedPreview
public typealias スワイプアクション設定 = UISwipeActionsConfiguration

public typealias フォーカスアニメーションコーディネータ = UIFocusAnimationCoordinator
