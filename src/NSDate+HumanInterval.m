//
//  NSDate+HumanInterval.m
//  Buzzalot
//
//  Created by David E. Wheeler on 2/18/10.
//  Copyright 2010-2011 Lunar/Theory. All rights reserved.
//

#import "NSDate+HumanInterval.h"

#define SECOND     1
#define MINUTE (  60 * SECOND )
#define HOUR   (  60 * MINUTE )
#define DAY    (  24 * HOUR   )
#define WEEK   (   7 * DAY    )
#define MONTH  (  30 * DAY    )
#define YEAR   ( 365 * DAY    )

@implementation NSDate (HumanInterval)

- (NSString *) humanIntervalSinceNow {
    int delta = [self timeIntervalSinceNow];
    delta *= -1;
    if (delta < 0) {
        return [self description];
    } else if (delta < 1 * MINUTE) {
        return NSLocalizedString(@"just now", nil);
    } else if (delta < 2 * MINUTE) {
        return NSLocalizedString(@"1 min", nil);
    } else if (delta <= 45 * MINUTE) {
        return [NSString stringWithFormat:NSLocalizedString(@"%u mins", nil), delta / MINUTE];
    } else if (delta <= 90 * MINUTE) {
        return NSLocalizedString(@"1 hour", nil);
    } else if (delta < 3 * HOUR) {
        return NSLocalizedString(@"2 hours", nil);
    } else if (delta < 23 * HOUR) {
        return [NSString stringWithFormat:NSLocalizedString(@"%u hours", nil), delta / HOUR];
    } else if (delta < 36 * HOUR) {
        return NSLocalizedString(@"1 day", nil);
    } else if (delta < 72 * HOUR) {
        return NSLocalizedString(@"2 days", nil);
    } else if (delta < 7 * DAY) {
        return [NSString stringWithFormat:NSLocalizedString(@"%u days", nil), delta / DAY];
    } else if (delta < 11 * DAY) {
        return NSLocalizedString(@"1 week", nil);
    } else if (delta < 14 * DAY) {
        return NSLocalizedString(@"2 weeks", nil);
    } else if (delta < 9 * WEEK) {
        return [NSString stringWithFormat:NSLocalizedString(@"%u weeks", nil), delta / WEEK];
    } else if (delta < 19 * MONTH) {
        return [NSString stringWithFormat:NSLocalizedString(@"%u months", nil), delta / MONTH];
    } else if (delta < 2 * YEAR) {
        return NSLocalizedString(@"1 year", nil);
    } else {
        return [NSString stringWithFormat:NSLocalizedString(@"%u years", nil), delta / YEAR];
    }
}

@end