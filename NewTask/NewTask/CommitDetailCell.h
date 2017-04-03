//
//  CommitDetailCell.h
//  NewTask
//
//  Created by Abdul Haziq on 29/03/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommitDetailCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UITextView *CommitMessageLabel;
@property (weak, nonatomic) IBOutlet UILabel *NameLabel;
@property (weak, nonatomic) IBOutlet UILabel *EmailLabel;
@property (weak, nonatomic) IBOutlet UILabel *DateLabel;
@property (weak, nonatomic) IBOutlet UILabel *CommitNoLabel;
@property (weak, nonatomic) IBOutlet UILabel *TotalCommitLabel;


@end
