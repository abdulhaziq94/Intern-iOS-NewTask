//
//  CommitDetailsTableViewController.h
//  NewTask
//
//  Created by Abdul Haziq on 29/03/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//

/*#define JSON_URL @"https://api.github.com/repos/spring-projects/spring-boot/commits"
 */
#import "CommitObject.h"
#import "CommitDetailCell.h"
#import "RepoObject.h"
#import <UIKit/UIKit.h>

@interface CommitDetailsTableViewController : UITableViewController

@property (nonatomic,strong) NSMutableArray *CommitDetailArray;
@property (nonatomic,strong) NSString *CommitRepoURL;
@property (nonatomic,strong) id NextRepoObject;

@end
