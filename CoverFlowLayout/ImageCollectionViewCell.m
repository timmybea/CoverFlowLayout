//
//  ImageCollectionViewCell.m
//  CoverFlowLayout
//
//  Created by Tim Beals on 2016-11-17.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "ImageCollectionViewCell.h"

@implementation ImageCollectionViewCell

//is called when the cell is instantiated from the storyboard.
-(void)awakeFromNib
{
    [super awakeFromNib];
    //setting the background color
    UIView *bgView = [[UIView alloc] initWithFrame:self.bounds];
    self.backgroundView = bgView;
    self.backgroundView.backgroundColor = [UIColor darkGrayColor];
    
    //setting the selectedbackground view
    UIView *selView = [[UIView alloc] initWithFrame:self.bounds];
    self.selectedBackgroundView = selView;
    self.selectedBackgroundView.backgroundColor = [UIColor yellowColor];
}

@end
