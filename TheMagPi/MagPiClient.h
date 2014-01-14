//
//  MagPiClient.h
//  TheMagPi
//
//  Created by Andrea Stagi on 1/7/14.
//  Copyright (c) 2014 Andrea Stagi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Issue;

@interface MagPiClient : NSObject

- (void)getIssues:(void (^)(NSArray *issues))issuesCB;
    
@end