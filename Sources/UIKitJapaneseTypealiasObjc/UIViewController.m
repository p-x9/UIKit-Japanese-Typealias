//
//  UIViewController.m
//  
//
//  Created by p-x9 on 2022/06/02.
//  
//

@import UIKit;
@import UIKitJapaneseTypealias;

@implementation UIViewController(UIKitJapaneseTypealias)

+(void)load {
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        [[self class] japaneseTypealiasHook];
        NSLog(@"%@", [self class]);
    });
}

@end
