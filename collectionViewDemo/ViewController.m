//
//  ViewController.m
//  collectionViewDemo
//
//  Created by RLY on 2019/5/10.
//  Copyright © 2019 demo. All rights reserved.
//

#define WIDTH_SCREEN        [UIScreen mainScreen].bounds.size.width
#define HEIGHT_SCREEN       [UIScreen mainScreen].bounds.size.height

#import "ViewController.h"
#import "CustomCollectCell.h"
#import "CustomCollectCell2.h"

@interface ViewController ()
<UICollectionViewDataSource>

@property (nonatomic,strong) UICollectionView *bgCollectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.bgCollectionView];
}

//@property (nonatomic,strong) UICollectionView *bgCollectionView;
-(UICollectionView *)bgCollectionView{
    
    if(!_bgCollectionView){
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
        flowLayout.itemSize = CGSizeMake(80, 80); //单元格大小
        flowLayout.minimumLineSpacing = 15; //最小行间距(默认为10)
        flowLayout.minimumInteritemSpacing = 15; //最小item间距（默认为10）
        flowLayout.sectionInset = UIEdgeInsetsMake(15, 20, 15, 20); //senction的内边距
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical; //UICollectionView的滑动方向
        _bgCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, WIDTH_SCREEN, HEIGHT_SCREEN) collectionViewLayout:flowLayout];
        _bgCollectionView.backgroundColor = [UIColor whiteColor];
        //        [_bgCollectionView registerClass:[CustomCollectCell class] forCellWithReuseIdentifier:[CustomCollectCell reuseIdentifier]];
        [_bgCollectionView registerNib:[UINib nibWithNibName:@"CustomCollectCell2" bundle:nil] forCellWithReuseIdentifier:[CustomCollectCell2 reuseIdentifier]];
        _bgCollectionView.dataSource = self;
    }
    return _bgCollectionView;
}

#pragma mark - UICollectionViewDataSource

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 500;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    // 第一种
    //    CustomCollectCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:[CustomCollectCell reuseIdentifier] forIndexPath:indexPath];
    
    // 第二种 - xib
    CustomCollectCell2 * cell = [collectionView dequeueReusableCellWithReuseIdentifier:[CustomCollectCell2 reuseIdentifier] forIndexPath:indexPath];
    
    return cell;
}

@end
