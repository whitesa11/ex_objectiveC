//
//  Server.h
//  Assignment9
//
//  Created by Ayako Shiraishi on 2018-04-25.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

@interface Server : NSObject <FoodTruckDelegate>
-(double)foodTruck:(FoodTruck *) truck priceForFood:(NSString *)food;
@end
