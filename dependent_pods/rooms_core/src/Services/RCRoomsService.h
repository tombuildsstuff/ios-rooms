//
//  RCRoomsService.h
//  RoomsCore
//
//  Created by Tom Harvey on 24/04/2015.
//  Copyright (c) 2015 Tom Harvey. All rights reserved.
//

@import Foundation;

@interface RCRoomsService : NSObject

-(instancetype) initWithBaseUrl: (NSString*) baseUrl;

-(void) getRooms: (void (^)(NSArray* rooms)) whenLoaded withError: (void (^)(NSError* error)) errorHandler;

@end
