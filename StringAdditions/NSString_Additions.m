//
//  NSString_Additions.m
//
//  Created by Bernhard Waldbrunner on 12/4/1.
//  Copyright (c) 2012 QuantApps. All rights reserved.
//

#import "NSString_Additions.h"

@implementation NSString (StringAdditions)

- (NSUInteger) wordCount
{
    NSUInteger count = 0;
    NSScanner *scanner = [NSScanner scannerWithString:self];
    
    if (scanner.string.length > 0)
    {
        scanner.charactersToBeSkipped = [NSCharacterSet illegalCharacterSet];
        NSMutableCharacterSet *separators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        [separators formUnionWithCharacterSet:[NSCharacterSet punctuationCharacterSet]];
        [separators formUnionWithCharacterSet:[NSCharacterSet symbolCharacterSet]];
        while (!scanner.isAtEnd)
        {
            [scanner scanCharactersFromSet:separators intoString:NULL];
            if ([scanner scanUpToCharactersFromSet:separators intoString:NULL])
                count++;
        }
    }
    return count;
}

- (BOOL) containsExactString:(NSString*)string
{
    NSRange r = [self rangeOfString:string];
    return r.location != NSNotFound;
}

- (BOOL) containsString:(NSString*)string
{
    NSRange r = [self rangeOfString:string options:NSDiacriticInsensitiveSearch];
    return r.location != NSNotFound;
}

- (BOOL) containsStringIgnoreCase:(NSString*)string
{
    NSRange r = [self rangeOfString:string options:NSCaseInsensitiveSearch|NSDiacriticInsensitiveSearch];
    return r.location != NSNotFound;
}

- (BOOL) equalsString:(NSString*)string
{
    return [self compare:string options:NSDiacriticInsensitiveSearch] == NSOrderedSame;
}

- (BOOL) equalsStringIgnoreCase:(NSString*)string
{
    return [self compare:string options:NSDiacriticInsensitiveSearch|NSCaseInsensitiveSearch] == NSOrderedSame;
}

@end
