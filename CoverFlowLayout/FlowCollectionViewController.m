//
//  FlowCollectionViewController.m
//  CoverFlowLayout
//
//  Created by Tim Beals on 2016-11-17.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "FlowCollectionViewController.h"
#import "ImageCollectionViewCell.h"

@interface FlowCollectionViewController ()

@property (strong, nonatomic) NSArray *imagesArray;

@end

@implementation FlowCollectionViewController

static NSString * const reuseIdentifier = @"imageCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpData];
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark <UICollectionViewDataSource>

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.imagesArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.imageView.image = self.imagesArray[indexPath.row];
    return cell;
}


#pragma mark <UICollectionViewDelegate>

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

-(BOOL)collectionView:(UICollectionView *)collectionView shouldDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

-(void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

-(void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}


#pragma - setUpData -

- (void)setUpData
{
    self.imagesArray = @[
                         [UIImage imageNamed:@"20160101_155249"],
                         [UIImage imageNamed:@"20160101_162634"],
                         [UIImage imageNamed:@"20160105_121022"],
                         [UIImage imageNamed:@"20160106_160524"],
                         [UIImage imageNamed:@"20160106_211456"],
                         [UIImage imageNamed:@"20160108_192725"],
                         [UIImage imageNamed:@"20160112_211138"],
                         [UIImage imageNamed:@"20160113_145427"],
                         [UIImage imageNamed:@"20160114_150954"],
                         [UIImage imageNamed:@"20160123_164240"]
                         ];
}



@end
