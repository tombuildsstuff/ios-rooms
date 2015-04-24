//
//  RCRoom.m
//  RoomsCore
//
//  Created by Tom Harvey on 24/04/2015.
//  Copyright (c) 2015 Tom Harvey. All rights reserved.
//

#import "RCRoom.h"

@implementation RCRoom

-(instancetype) initWithName:(NSString*) name andLocation:(NSString*) location
{
    if (self = [super init])
    {
        self.name = name;
        self.location = location;
    }
    
    return self;
}

@end
