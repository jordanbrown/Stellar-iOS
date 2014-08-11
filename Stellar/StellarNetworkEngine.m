//
//  StellarNetworkEngine.m
//  Stellar
//
//  Created by rebyn on 8/11/14.
//  Copyright (c) 2014 rebyn. All rights reserved.
//

#import "StellarNetworkEngine.h"

@implementation StellarNetworkEngine

- (MKNetworkOperation *)fetchUserBalance:(NSString *)userAddress
                       completionHandler:(CurrencyResponseBlock) completionBlock
                            errorHandler:(MKNKErrorBlock) errorBlock
{
    MKNetworkOperation *op = [self operationWithPath:@"/"
                                              params:nil
                                          httpMethod:@"POST"];
    
    NSDictionary *params = @{
                             @"method": @"account_info",
                             @"params": @[@{
                                    @"account": userAddress,
                                    @"ledger_index": @400}]
                             };
    
    NSString* jsonString = [params jsonEncodedKeyValueString];
    
    [op setCustomPostDataEncodingHandler:^NSString*(NSDictionary *postDataDict) {
        return jsonString;
    } forType:@""];
    
    [op addCompletionHandler:^(MKNetworkOperation *completedOperation) {
        NSDictionary *responseDict = completedOperation.responseJSON;
        completionBlock([[responseDict valueForKeyPath:@"result.account.Balance"] doubleValue]);
    } errorHandler:^(MKNetworkOperation *completedOperation, NSError *error) {
        errorBlock(error);
    }];
    [self enqueueOperation:op];
    return op;
}

@end
