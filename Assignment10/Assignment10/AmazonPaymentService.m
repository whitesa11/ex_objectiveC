//
//  AmazonPaymentService.m
//  Assignment10
//
//  Created by Ayako Shiraishi on 2018-04-26.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
- (void) processPaymentAmount:(NSInteger *)amount
{
     NSLog(@"Amazon process amout $%ld", amount);
}

- (BOOL) canProcessPayment
{
    return arc4random_uniform(2) == 1;
}
@end
