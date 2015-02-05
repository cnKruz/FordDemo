//
//  AppContainerViewController.m
//  FordDemo
//
//  Created by Eduardo on 1/15/15.
//  Copyright (c) 2015 Eduardo. All rights reserved.
//

#import "AppContainerViewController.h"

@interface AppContainerViewController ()

@end

@implementation AppContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@",self.AppClassname);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)PressStart:(id)sender
{
    Class vcClass = NSClassFromString(@"ImageTargetsViewController");
    id vc = [[vcClass alloc]  initWithNibName:nil bundle:nil];
    
    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
