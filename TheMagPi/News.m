//
//  News.m
//  TheMagPi
//
//  Created by Andrea Stagi on 1/6/14.
//  Copyright (c) 2014 Andrea Stagi. All rights reserved.
//

#import "News.h"

@implementation News
- (id)init : (NSString*)theDate andContent:(NSString*)theContent
{
    self = [super init];
    date = theDate;
    content = theContent;
    return self;
}

- (NSString*)repr
{
    return [NSString stringWithFormat:@"%@: %@", date, content];
}
@end
