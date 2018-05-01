//
//  Server.m
//  Assignment9
//
//  Created by Ayako Shiraishi on 2018-04-25.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "Server.h"


@implementation Server
-(double)foodTruck:(FoodTruck *) truck priceForFood:(NSString *)food{
    if([food isEqualToString:@"salad"]) {
        return 1.0;
    }else if([food isEqualToString:@"beef"]){
        return 5.0;
    }else if([food isEqualToString:@"bao"]){
        return 3.5;
    }else if([food isEqualToString:@"shortbread"]){
            return 3.7;
    }else{
        return 2.0;
    }
}
@end
