//
//  CommitDetailCell.m
//  NewTask
//
//  Created by Abdul Haziq on 29/03/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//

#import "CommitDetailCell.h"

@implementation CommitDetailCell

@synthesize CommitMessageLabel;
@synthesize NameLabel;
@synthesize EmailLabel;
@synthesize DateLabel;
@synthesize CommitNoLabel;
@synthesize TotalCommitLabel;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
