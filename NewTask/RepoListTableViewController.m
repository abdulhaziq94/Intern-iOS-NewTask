//
//  RepoListTableViewController.m
//  NewTask
//
//  Created by Abdul Haziq on 29/03/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//


#import "RepoListTableViewController.h"

@interface RepoListTableViewController ()


@end

@implementation RepoListTableViewController
@synthesize RepoListArray;
@synthesize commit_url;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *RepoListURL = [NSURL URLWithString:RepoJSON_URL];
    NSData *RepoListData = [NSData dataWithContentsOfURL:RepoListURL];
    NSError *error = nil;
    id RepoListJson = [NSJSONSerialization JSONObjectWithData:RepoListData options:kNilOptions error:&error];

    
//    RepoListArray = [NSMutableArray arrayWithObjects:@"Spring-Boot",@"Spring-Framework",@"Spring-AMQP",@"Spring-IDE",@"Spring-Integration", nil];
    self.RepoListArray = [[NSMutableArray alloc]init];
    
    for (NSDictionary *RepoListDict in RepoListJson) {
        RepoObject *repoObj = [[RepoObject alloc] init];
        repoObj.Repo_url = [RepoListDict objectForKey:@"name"];
        repoObj.Commit_url = [RepoListDict objectForKey:@"commits_url"];
        [self.RepoListArray addObject:repoObj];
        
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *repoIdentifier = @"RepoCell";
    RepoCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:repoIdentifier forIndexPath:indexPath];
    RepoObject *repoObj = [self.RepoListArray objectAtIndex:indexPath.row];
    cell.RepoNameLabel.text = repoObj.Repo_url;
//    cell.textLabel.text = [self.RepoListArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showCommitDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        CommitDetailsTableViewController *commitDetailsViewController = segue.destinationViewController;
        
        RepoObject *repoObj = [self.RepoListArray objectAtIndex:indexPath.row];
        NSString *repoCommit_url = [repoObj.Commit_url stringByReplacingOccurrencesOfString:@"{/sha}" withString:@""];
        self.commit_url = repoCommit_url;
        commitDetailsViewController.CommitRepoURL = self.commit_url;
        
        switch (indexPath.row) {
        case 0:
                commitDetailsViewController.navigationItem.title = @"Spring-Integration-in-Action";
                break;
        case 1:
                commitDetailsViewController.navigationItem.title = @"spring-data-jdbc-ext";
                break;
        case 2:
                commitDetailsViewController.navigationItem.title = @"spring-data-commons";
                break;
        case 3:
                commitDetailsViewController.navigationItem.title = @"spring-data-graph";
                break;
        case 4:
                commitDetailsViewController.navigationItem.title = @"spring-data-document-examples";
                break;
        case 5:
                commitDetailsViewController.navigationItem.title = @"spring-data-graph-examples";
                break;
        case 6:
                commitDetailsViewController.navigationItem.title = @"spring-data-jpa";
                break;
        case 7:
                commitDetailsViewController.navigationItem.title = @"spring-build-gradle";
                break;
        case 8:
                commitDetailsViewController.navigationItem.title = @"spring-batch-admin";
                break;
        default:
                commitDetailsViewController.navigationItem.title = @"spring-amqp";
                break;
        }
    
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
