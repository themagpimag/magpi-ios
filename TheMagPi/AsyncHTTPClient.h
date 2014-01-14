//
//  AsyncHTTPClient.h
//  TheMagPi
//
//  Created by Andrea Stagi on 1/8/14.
//  Copyright (c) 2014 Andrea Stagi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AsyncHTTPClient : NSObject {
    NSMutableData* httpResponse;
    void (^cb)(NSData *result);
}

@property (nonatomic, copy) void (^cb)(NSData *result);
@property (nonatomic, retain) NSMutableData *httpResponse;
- (void)sendRequest:(NSString*)url completion:(void (^)(NSData *result))completionBlock;
@end
