//
//  StripePaymentService.m
//  Assignment10
//
//  Created by Ayako Shiraishi on 2018-04-26.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
- (void) processPaymentAmount:(NSInteger *)amount
{
     NSLog(@"Stripe process amout $%ld", amount);
}

- (BOOL) canProcessPayment
{
    return arc4random_uniform(2) == 1;
}
@end
