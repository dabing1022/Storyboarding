//
//  CAContactListViewController.m
//  Storyboarding
//
//  Created by ChildhoodAndy on 14-7-30.
//  Copyright (c) 2014年 ChildhoodAndy. All rights reserved.
//

#import "CAContactListViewController.h"
#import "Person.h"
#import "CAPersonDetailViewController.h"

@interface CAContactListViewController ()

@property(nonatomic, strong) NSArray* people;

@end

@implementation CAContactListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Person* p1 = [[Person alloc] initWithName:@"aa" favorColor:[UIColor purpleColor] age:30];
    Person* p2 = [[Person alloc] initWithName:@"bb" favorColor:[UIColor redColor] age:31];
    Person* p3 = [[Person alloc] initWithName:@"cc" favorColor:[UIColor greenColor] age:32];
    Person* p4 = [[Person alloc] initWithName:@"dd" favorColor:[UIColor blueColor] age:33];
    
    self.people = [NSArray arrayWithObjects:p1, p2, p3, p4, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.people.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cellID = @"contact_cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    Person* p = [self.people objectAtIndex:indexPath.row];
    cell.textLabel.text = p.name;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"PersonDetailSegue"]) {
        UITableViewCell* cell = (UITableViewCell*)sender;
        NSIndexPath *ip = [self.tableView indexPathForCell:cell];
        Person* p = [self.people objectAtIndex:ip.row];
        
        CAPersonDetailViewController* personDetailViewController = (CAPersonDetailViewController*)segue.destinationViewController;
        personDetailViewController.person = p;
    }
}


@end
