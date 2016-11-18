//
//  CoverFlowLayout.m
//  CoverFlowLayout
//
//  Created by Tim Beals on 2016-11-17.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "CoverFlowLayout.h"

@interface CoverFlowLayout()



@end

@implementation CoverFlowLayout


-(void)prepareLayout
{
    
    self.itemSize = CGSizeMake(150, 150);
    self.sectionInset = UIEdgeInsetsMake(30, 10, 30, 10);
    self.minimumLineSpacing = 30;
    self.scrollDirection  = UICollectionViewScrollDirectionHorizontal;
//    
//    if (self.savedAttributes.count > 0) return;
//    
//    NSMutableArray *temp = [NSMutableArray array];
//    for (int item = 0; item < [self.collectionView numberOfItemsInSection:0]; item++) {
//        NSIndexPath *ip = [NSIndexPath indexPathForRow:item inSection:0];
//        
//        UICollectionViewLayoutAttributes *attr = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:ip];
//        
//        CGFloat randX = arc4random_uniform(200);
//        CGFloat randY = arc4random_uniform(200);
//        
//        attr.frame = CGRectMake(randX, randY, 10, 10);
//        
// 
//       CGFloat dX = arc4random_uniform(2)+1;
//        CGFloat dY = arc4random_uniform(2)+1;
//        
//        attr.transform = CGAffineTransformMakeScale(dX, dY);
//        [temp addObject:attr];
//    }
//    
//    self.savedAttributes = temp;

}


//- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:
//(NSIndexPath *)indexPath
//{
//    NSMutableArray *result = [NSMutableArray array];
//    
//    for (UICollectionViewLayoutAttributes *attributes in self.savedAttributes) {
//        if (CGRectIntersectsRect(attributes.frame, rect)) {
//            [result addObject:attributes];
//        }
//    }
//    
//    return result;
//}


//-(CGSize)collectionViewContentSize
//{
//   //
//}

//-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
//{
//    //
//}


@end
