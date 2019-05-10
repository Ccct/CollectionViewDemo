//
//  CustomCollectCell2.m
//  collectionViewDemo
//
//  Created by RLY on 2019/5/10.
//  Copyright © 2019 demo. All rights reserved.
//

#import "CustomCollectCell2.h"

@implementation CustomCollectCell2

/// 初始化先进这里
+ (void)initialize{
    
    if (self == [CustomCollectCell2 class]) {
        
    }
}

/// controller注册了xib
/// [_bgCollectionView registerNib:[UINib nibWithNibName:@"CustomCollectCell2" bundle:nil] forCellWithReuseIdentifier:[CustomCollectCell2 reuseIdentifier]];
/// 就不会走这个方法
- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        NSLog(@"初始化cell");
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
    
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
