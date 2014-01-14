//
//  News.h
//  TheMagPi
//
//  Created by Andrea Stagi on 1/6/14.
//  Copyright (c) 2014 Andrea Stagi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject
{
    NSString* date;
    NSString* content;
}
- (id)init : (NSString*)theDate andContent:(NSString*)theContent;
- (NSString*)repr;
@property (nonatomic, retain) NSString *date;
@property (nonatomic, retain) NSString *content;
@end
