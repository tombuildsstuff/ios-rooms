//
//  RCRoomsService.m
//  RoomsCore
//
//  Created by Tom Harvey on 24/04/2015.
//  Copyright (c) 2015 Tom Harvey. All rights reserved.
//

#import "RCRoomsService.h"
#import "RCRoom.h"

@interface RCRoomsService()

@property (nonatomic, strong) NSString* apiBaseUrl;

@end

@implementation RCRoomsService

-(instancetype) initWithBaseUrl: (NSString*) baseUrl
{
    if (self = [super init])
    {
        self.apiBaseUrl = baseUrl;
    }
    
    return self;
}

-(void) getRooms: (void (^)(NSArray* rooms)) whenLoaded withError: (void (^)(NSError* error)) errorHandler
{
    NSString* endpoint = [NSString stringWithFormat:@"%@/rooms", self.apiBaseUrl];
    NSLog(@"Rooms URL: %@", endpoint);
    
    NSURL* url = [NSURL URLWithString:endpoint];
    NSURLSession* session = [NSURLSession sharedSession];
    NSURLSessionDataTask* task = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (error) {
            errorHandler(error);
            return;
        }
        
        NSMutableArray* rooms = [NSMutableArray new];
        NSArray* roomsJson = [NSJSONSerialization JSONObjectWithData:data options:0. error:nil];
        for (NSDictionary* roomDictionary in roomsJson) {
            NSString* name = [roomDictionary valueForKey:@"name"];
            NSString* location = [roomDictionary valueForKey:@"location"];
            RCRoom* room = [[RCRoom alloc] initWithName:name andLocation:location];
            [rooms addObject:room];
        }
        
        whenLoaded(rooms);
        
    }];
    
    [task resume];
}

@end
