//
//  NSUserDefaults_Common.h
//
//  Created by Bernhard Waldbrunner on 11/5/21.
//  Copyright 2011-2012 QuantApps. All rights reserved.
//


@interface NSUserDefaults (CommonDefaults)

+ (NSString*) serializationVersion;
+ (void) writeSerializationVersion:(NSString*)version;
+ (BOOL) firstLaunch;
+ (BOOL) appWasRated;
+ (void) writeAppWasRated;

@end
