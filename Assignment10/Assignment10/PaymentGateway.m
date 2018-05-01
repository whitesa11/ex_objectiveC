//
//  PaymentGateway.m
//  Assignment10
//
//  Created by Ayako Shiraishi on 2018-04-26.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount:(NSInteger *)amount
{
    if([self.delegate canProcessPayment]){
        [self.delegate processPaymentAmount:amount];
    }else{
        NSLog(@"I am sorry. Your payment cannot be processed at the amount");
    }
}

@end
