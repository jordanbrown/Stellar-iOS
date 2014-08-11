//
//  StellarViewController.m
//  Stellar
//
//  Created by rebyn on 8/4/14.
//  Copyright (c) 2014 rebyn. All rights reserved.
//

#import "StellarViewController.h"
#import "StellarNetworkEngine.h"
#import "MKNetworkOperation.h"

@interface StellarViewController ()

@end

@implementation StellarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSUserDefaults *auth = [NSUserDefaults standardUserDefaults];
    self.stellarBalance.textColor = [UIColor colorWithRed:0.035 green:0.71 blue:0.898 alpha:1];
    self.backgroundView.backgroundColor = [UIColor colorWithRed:0.933 green:0.933 blue:0.933 alpha:1]; /*#eeeeee*/
    //self.currentBalanceBackgroundView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    //self.currentBalanceBackgroundView.layer.borderWidth = 1.0;
    self.currentBalanceBackgroundView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    self.currentBalanceBackgroundView.layer.shadowOffset = CGSizeMake(0.1, 0);
    self.currentBalanceBackgroundView.layer.shadowRadius = 1.0f;
    self.currentBalanceBackgroundView.layer.shadowOpacity = 0.70f;
    
    // Status bar to have the same background as navigationBar
    UIView *syncedStatusBarBackground = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 20)];
    syncedStatusBarBackground.backgroundColor = [UIColor colorWithRed:0.973 green:0.973 blue:0.973 alpha:1]; /*#f8f8f8*/
    [self.view addSubview:syncedStatusBarBackground];
    
    [[self.receiveButton layer] setBorderWidth:0.0f];
    [[self.receiveButton layer] setCornerRadius:5];
    [[self.receiveButton layer] setBackgroundColor:[UIColor colorWithRed:0.035 green:0.71 blue:0.898 alpha:1].CGColor];
    
    [[self.sendButton layer] setBorderWidth:0.0f];
    [[self.sendButton layer] setCornerRadius:5];
    [[self.sendButton layer] setBackgroundColor:[UIColor colorWithRed:0.035 green:0.71 blue:0.898 alpha:1].CGColor];
    
    StellarNetworkEngine *engine = [[StellarNetworkEngine alloc] initWithHostName:@"live.stellar.org:9002"];
    
    [engine fetchUserBalance:[auth objectForKey:@"token"]
                                    completionHandler:^(double rate) {
                                        NSLog(@"%f", rate);
                                    } errorHandler:^(NSError *error) {
                                        NSLog(@"%@", error);
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
