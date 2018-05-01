//
//  Box.m
//  Assignment2
//
//  Created by Ayako Shiraishi on 2018-05-01.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "Box.h"

@implementation Box
-(instancetype)initWithWidth: (float) w andHeight: (float) h andLength: (float) l {
    self = [super init];
    if(self){
        _width = w;
        _height = h;
        _length = l;
        
    }
    return self;
}

-(float)volume{
    return _width * _height * _length;
}

-(float) ratio: (Box *) box{
    return [self volume] / [box volume];
}
@end
