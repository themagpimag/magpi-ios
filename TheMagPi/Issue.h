//
//  Issue.h
//  TheMagPi
//
//  Created by Andrea Stagi on 1/6/14.
//  Copyright (c) 2014 Andrea Stagi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Issue : NSObject
{
    NSString* identifier;
    NSString* title;
}
- (id)init : (NSString*)theId andTitle:(NSString*)theTitle;
- (NSString*)repr;
@property (nonatomic, retain) NSString *identifier;
@property (nonatomic, retain) NSString *title;
@end
