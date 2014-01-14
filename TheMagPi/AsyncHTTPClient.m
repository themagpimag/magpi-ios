//
//  AsyncHTTPClient.m
//  TheMagPi
//
//  Created by Andrea Stagi on 1/8/14.
//  Copyright (c) 2014 Andrea Stagi. All rights reserved.
//

#import "AsyncHTTPClient.h"

@implementation AsyncHTTPClient

- (id)init {
    self = [super init];
    httpResponse = [[NSMutableData alloc] init];
    return self;
}

// Sends an asynchronous HTTP GET request
- (void)sendRequest:(NSString*)url completion:(void (^)(NSData *result))completionBlock {
    
    NSMutableString* requestURL = [[NSMutableString alloc] init];
    [requestURL appendString:url];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL: [NSURL URLWithString: [NSString stringWithString:requestURL]]];
    
    [request setHTTPMethod: @"GET"];
    cb = completionBlock;
    NSURLConnection *theConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    if (!theConnection) {
    }
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [httpResponse setLength:0];
}

// Called when data has been received
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [httpResponse appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    if (cb != nil)
        cb(httpResponse);
}

@end
