//
//  main.m
//  Assignment10
//
//  Created by Ayako Shiraishi on 2018-04-26.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int dollor = arc4random_uniform(101)+100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $xxx Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", dollor);
        
        NSInteger method = [[InputHandler getUserInputWithPrompt: @">>> "] integerValue];
        PaymentGateway *gateway = [PaymentGateway new];
        PaypalPaymentService *Paypal = [PaypalPaymentService new];
        StripePaymentService *Stripe = [StripePaymentService new];
        AmazonPaymentService *Amazon = [AmazonPaymentService new];
        switch (method) {
            case 1:
                //Paypal
                gateway.delegate = Paypal;
                break;
            case 2:
                //Stripe
                gateway.delegate = Stripe;
                break;
            case 3:
                //Amazon
                gateway.delegate = Amazon;
                break;
            default:
                break;
        }
        
        [gateway processPaymentAmount: dollor];
    }
    return 0;
}

