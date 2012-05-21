//
//  NSUserDefaults_Common.m
//
//  Created by Bernhard Waldbrunner on 11/5/21.
//  Copyright 2011-2012 QuantApps. All rights reserved.
//

#import "NSUserDefaults_Common.h"


@implementation NSUserDefaults (CommonDefaults)

+ (NSString*) serializationVersion
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"SerializationVersion"];
}

+ (void) writeSerializationVersion:(NSString*)version
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:version forKey:@"SerializationVersion"];
    [defaults synchronize];
}

+ (BOOL) firstLaunch
{
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"AppWasRated"] == nil)
    {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:B_NO forKey:@"AppWasRated"];
        [defaults synchronize];
        return YES;
    }
    return NO;
}

+ (BOOL) appWasRated
{
    return [[[NSUserDefaults standardUserDefaults] objectForKey:@"AppWasRated"] boolValue];
}

+ (void) writeAppWasRated
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (![[defaults objectForKey:@"AppWasRated"] boolValue])
    {
        [defaults setObject:B_YES forKey:@"AppWasRated"];
        [defaults synchronize];
    }
}

@end
