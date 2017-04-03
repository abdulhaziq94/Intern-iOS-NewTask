//
//  RepoListTableViewController.h
//  NewTask
//
//  Created by Abdul Haziq on 29/03/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//

#define RepoJSON_URL @"https://api.github.com/orgs/spring-projects/repos"
#import "CommitObject.h"
#import "CommitDetailCell.h"
#import "RepoObject.h"
#import "RepoCellTableViewCell.h"
#import "CommitDetailsTableViewController.h"
#import <UIKit/UIKit.h>

@interface RepoListTableViewController : UITableViewController

@property (nonatomic,strong) NSMutableArray *RepoListArray;
@property (nonatomic,strong) NSString *commit_url;

@end
