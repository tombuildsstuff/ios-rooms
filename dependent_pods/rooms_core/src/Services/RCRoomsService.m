//
//  RCRoomsService.m
//  RoomsCore
//
//  Created by Tom Harvey on 24/04/2015.
//  Copyright (c) 2015 Tom Harvey. All rights reserved.
//

#import "RCRoomsService.h"

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

-(void) getRooms: (void (^)(NSArray* rooms)) whenLoaded
{
    NSString* endpoint = [NSString stringWithFormat:@"%@/rooms", self.apiBaseUrl];
    NSLog(@"%@", endpoint);
    
    NSURL* url = [NSURL URLWithString:endpoint];
    NSURLSession* session = [[NSURLSession alloc] init];
    NSURLSessionDownloadTask* task = [session downloadTaskWithURL:url completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
        NSLog(@"%@", response);
    }];
    
    [task resume];
}

@end
