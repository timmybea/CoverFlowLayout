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
}

-(NSArray<UICollectionViewLayoutAttributes *
  >
  *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *original = [super layoutAttributesForElementsInRect:rect];
    NSArray * attributes = [[NSArray alloc] initWithArray:original copyItems:YES];
    
    CGRect visibleRegion;
    visibleRegion.origin = self.collectionView.contentOffset;
    visibleRegion.size = self.collectionView.bounds.size;
    CGFloat center = self.collectionView.center.x;
    
    for (UICollectionViewLayoutAttributes *attribute in attributes) {
        CGFloat distance = CGRectGetMidX(visibleRegion) - attribute.center.x;
        CGFloat d = distance / center;
        
        if (ABS(distance) < center) {
            
            CGFloat zoom = 1 + (0.75 * (1 - ABS(d)));
            CATransform3D zoomTransform = CATransform3DMakeScale(zoom, zoom, 1.0);
            attribute.transform3D = zoomTransform;
            
            CGFloat alphaValue = (1 - ABS(d)) + 0.1;
            if (alphaValue > 1) alphaValue = 1;
            attribute.alpha = alphaValue;
            
            attribute.zIndex = (1-ABS(d))*10;
        }
        else
        {
            attribute.alpha = 0;
        }
    }
    
    return attributes;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return YES;
}

@end
