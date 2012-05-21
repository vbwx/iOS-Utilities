//
//  NSString_Additions.h
//
//  Created by Bernhard Waldbrunner on 12/4/1.
//  Copyright (c) 2012 QuantApps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (StringAdditions)

- (NSUInteger) wordCount;
- (BOOL) containsString:(NSString*)string;
- (BOOL) containsStringIgnoreCase:(NSString*)string;
- (BOOL) containsExactString:(NSString*)string;
- (BOOL) equalsString:(NSString*)string;
- (BOOL) equalsStringIgnoreCase:(NSString*)string;

@end
