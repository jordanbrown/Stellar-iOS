//
//  MotherfuckaViewController.m
//  Stellar
//
//  Created by rebyn on 8/11/14.
//  Copyright (c) 2014 rebyn. All rights reserved.
//

#import "MotherfuckaViewController.h"

@interface MotherfuckaViewController ()

@end

@implementation MotherfuckaViewController
- (IBAction)logoutButtonPressed:(id)sender {
    NSUserDefaults *auth = [NSUserDefaults standardUserDefaults];
    [auth removeObjectForKey:@"token"];
    [auth synchronize];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
