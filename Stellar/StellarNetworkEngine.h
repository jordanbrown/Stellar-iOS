//
//  StellarNetworkEngine.h
//  Stellar
//
//  Created by rebyn on 8/11/14.
//  Copyright (c) 2014 rebyn. All rights reserved.
//

#import "MKNetworkEngine.h"

@interface StellarNetworkEngine : MKNetworkEngine

typedef void (^CurrencyResponseBlock)(double rate);

- (MKNetworkOperation *)fetchUserBalance:(NSString *) userAddress
                       completionHandler:(CurrencyResponseBlock) completionBlock
                            errorHandler:(MKNKErrorBlock) errorBlock;

@end
