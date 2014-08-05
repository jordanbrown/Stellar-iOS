//
//  StellarViewController.h
//  Stellar
//
//  Created by rebyn on 8/4/14.
//  Copyright (c) 2014 rebyn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StellarViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *stellarBalance;
@property (strong, nonatomic) IBOutlet UIButton *receiveButton;
@property (strong, nonatomic) IBOutlet UIButton *sendButton;
@property (strong, nonatomic) IBOutlet UIView *backgroundView;
@property (strong, nonatomic) IBOutlet UIView *currentBalanceBackgroundView;

@end
