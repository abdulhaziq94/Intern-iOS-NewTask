//
//  RepoCellTableViewCell.m
//  NewTask
//
//  Created by Abdul Haziq on 02/04/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//

#import "RepoCellTableViewCell.h"

@implementation RepoCellTableViewCell
@synthesize RepoNameLabel;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
