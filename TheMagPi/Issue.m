//
//  Issue.m
//  TheMagPi
//
//  Created by Andrea Stagi on 1/6/14.
//  Copyright (c) 2014 Andrea Stagi. All rights reserved.
//

#import "Issue.h"

@implementation Issue

- (id)init : (NSString*)theId andTitle:(NSString*)theTitle
{
    self = [super init];
    title = theTitle;
    identifier = theId;
    return self;
}

- (NSString*)repr
{
    return [NSString stringWithFormat:@"Issue %@ %@", identifier, title];
}

@end
