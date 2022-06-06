//
//  UITableViewCell.m
//  
//
//  Created by p-x9 on 2022/06/06.
//  
//

@import UIKit;
@import UIKitJapaneseTypealias;

@implementation UITableViewCell(UIKitJapaneseTypealias)

+(void)load {
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        [[self class] japaneseTableViewCellTypealiasHook];
        NSLog(@"%@", [self class]);
    });
}

@end
