//
//  CustomCollectCell.m
//  collectionViewDemo
//
//  Created by RLY on 2019/5/10.
//  Copyright © 2019 demo. All rights reserved.
//

#import "CustomCollectCell.h"

@implementation CustomCollectCell

/// 初始化先进这里
+ (void)initialize
{
    if (self == [CustomCollectCell class]) {
        
        
    }
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor redColor];
        NSLog(@"初始化cell");
    }
    return self;
}

//被复用之前调用
- (void)prepareForReuse{
    [super prepareForReuse];
    NSLog(@"复用");
}



//布局
- (void)layoutSubviews{
    [super layoutSubviews];
}

+ (NSString *)reuseIdentifier {
    static NSString *reuseIdentifier;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        reuseIdentifier = NSStringFromClass([self class]);
    });
    return reuseIdentifier;
}

@end
