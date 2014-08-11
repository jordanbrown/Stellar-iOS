//
//  StellarViewController.h
//  Stellar
//
//  Created by rebyn on 8/4/14.
//  Copyright (c) 2014 rebyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MotherfuckaViewController.h"

@interface StellarViewController : MotherfuckaViewController
@property (strong, nonatomic) IBOutlet UILabel *stellarBalance;
@property (strong, nonatomic) IBOutlet UIButton *receiveButton;
@property (strong, nonatomic) IBOutlet UIButton *sendButton;
@property (strong, nonatomic) IBOutlet UIView *backgroundView;
@property (strong, nonatomic) IBOutlet UIView *currentBalanceBackgroundView;
@property (strong, nonatomic) IBOutlet UIButton *logoutButton;

@end
