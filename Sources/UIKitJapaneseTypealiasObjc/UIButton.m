//
//  UIButton.m
//  
//
//  Created by p-x9 on 2022/08/30.
//  
//

@import UIKit;
@import UIKitJapaneseTypealias;

@implementation UIButton(UIKitJapaneseTypealias)

+(void)load {
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        [[self class] japaneseButtonTypealiasHook];
        NSLog(@"%@", [self class]);
    });
}

@end
