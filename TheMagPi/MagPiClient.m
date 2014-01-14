//
//  MagPiClient.m
//  TheMagPi
//
//  Created by Andrea Stagi on 1/7/14.
//  Copyright (c) 2014 Andrea Stagi. All rights reserved.
//

#import "MagPiClient.h"
#import "AsyncHTTPClient.h"
#import "Issue.h"
#import "News.h"

@implementation MagPiClient

- (id)init {
    self = [super init];
    return self;
}

- (void)getIssues:(void (^)(NSArray *issues))issuesCB {
    AsyncHTTPClient* request = [[AsyncHTTPClient alloc] init];
    void (^httpCallback)(NSData* response) = ^(NSData* httpResponse)
    {
        NSError *localError = nil;
        NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:httpResponse options:0 error:&localError];
        NSArray *jsonIssues = [parsedObject valueForKey:@"data"];
        NSMutableArray *issues = [NSMutableArray array];
        
        for (NSDictionary *jsonIssue in jsonIssues) {
            [issues addObject:[[Issue alloc] init: jsonIssue[@"title"] andTitle:jsonIssue[@"title"]]];
        }
        
        NSArray *arrayOfIssues = [NSArray arrayWithArray:issues];
        issuesCB(arrayOfIssues);
    };
    [request sendRequest:@"http://www.themagpi.com/mps_api/mps-api-v1.php?mode=list_issues" completion:httpCallback];
}

@end
