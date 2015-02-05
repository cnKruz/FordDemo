//
//  ModeSelectTableViewController.m
//  FordDemo
//
//  Created by Eduardo on 1/15/15.
//  Copyright (c) 2015 Eduardo. All rights reserved.
//

#import "ModeSelectTableViewController.h"
#import "AppContainerViewController.h"

@interface modeSelectCell : UITableViewCell
   @property (strong,nonatomic) IBOutlet UILabel *ButtonCell;
@end

@interface ModeSelectTableViewController ()
    @property (strong,nonatomic) NSArray *Modes;


@end

@implementation modeSelectCell

@end

@implementation ModeSelectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.Modes=[[NSArray alloc] initWithObjects:
                @"ImageTargetsViewControler",
                nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.Modes.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    modeSelectCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ModeSelectCellSB" forIndexPath:indexPath];
    
    [cell.ButtonCell setText:[self.Modes objectAtIndex:indexPath.row]];
    // Configure the cell...
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //SampleApplicationInfo * application = [self.sampleApplications objectAtIndex:indexPath.row];
    
    //if (application.viewControllerClassName != nil) {
        // change the back button
        //self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style: UIBarButtonItemStylePlain target:nil action:nil];
    [self performSegueWithIdentifier:@"appContainer_segue" sender:([self.Modes objectAtIndex:indexPath.row])];
        //Class vcClass = NSClassFromString(@"ImageTargetsViewController");
        //NSLog(@"helloooo");
        //id vc = [[vcClass alloc]  initWithNibName:nil bundle:nil];
        //[self.navigationController pushViewController:vc animated:YES];
    
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"appContainer_segue"]) {
        NSLog(@"%@",sender);
        AppContainerViewController *ACVC = [[AppContainerViewController alloc]initWithNibName:nil bundle:nil];
        ACVC = [segue destinationViewController];
        [ACVC setAppClassname:(NSString *)sender];
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
