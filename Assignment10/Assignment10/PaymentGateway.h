//
//  PaymentGateway.h
//  Assignment10
//
//  Created by Ayako Shiraishi on 2018-04-26.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol PaymentDelegate
- (void) processPaymentAmount:(NSInteger *)amount;
- (BOOL) canProcessPayment;
@end


@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentDelegate> delegate;

- (void) processPaymentAmount:(NSInteger *)amount;

@end
