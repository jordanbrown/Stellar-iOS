//
//  loginViewController.m
//  Stellar
//
//  Created by rebyn on 8/11/14.
//  Copyright (c) 2014 rebyn. All rights reserved.
//

#import "loginViewController.h"

@interface loginViewController ()

@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *auth = [NSUserDefaults standardUserDefaults];
    if ([auth objectForKey:@"token"] != nil) {
        [self performSegueWithIdentifier:@"moveToDashboard" sender:nil];
    } else {
        [auth setObject:@"gD7eLhmSJv9DBWCA2KKJ53bVsQHg2bQN7B" forKey:@"token"];
        [auth synchronize];
        [self performSegueWithIdentifier:@"moveToDashboard" sender:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
