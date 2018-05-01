//
//  AmazonPaymentService.h
//  Assignment10
//
//  Created by Ayako Shiraishi on 2018-04-26.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface AmazonPaymentService : NSObject <PaymentDelegate>
- (BOOL) canProcessPayment;
@end
