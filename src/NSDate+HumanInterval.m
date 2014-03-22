//
//  NSDate+HumanInterval.m
//  Buzzalot
//
//  Created by David E. Wheeler on 2/18/10.
//  Copyright 2010-2011 Lunar/Theory. All rights reserved.
//

#import "NSDate+HumanInterval.h"

#define SECOND 1
#define MINUTE (60 * SECOND)
#define HOUR   (60 * MINUTE)
#define DAY    (24 * HOUR)
#define WEEK   (7 * DAY)
#define MONTH  (30 * DAY)
#define YEAR   (365 * DAY)

@implementation NSDate (HumanInterval)

- (NSString *)humanIntervalSinceNow
{
    int delta = [self timeIntervalSinceNow];

    delta *= -1;

    if (delta < 0) {
        return [self description];
    }
    else if (delta < 1 * MINUTE) {
        return NSLocalizedStringFromTable(@"just now", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 2 * MINUTE) {
        return NSLocalizedStringFromTable(@"1 min", @"NSDate+HumanInterval", nil);
    }
    else if (delta <= 45 * MINUTE) {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u mins", @"NSDate+HumanInterval", nil), delta / MINUTE];
    }
    else if (delta <= 90 * MINUTE) {
        return NSLocalizedStringFromTable(@"1 hour", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 3 * HOUR) {
        return NSLocalizedStringFromTable(@"2 hours", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 23 * HOUR) {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u hours", @"NSDate+HumanInterval", nil), delta / HOUR];
    }
    else if (delta < 36 * HOUR) {
        return NSLocalizedStringFromTable(@"1 day", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 72 * HOUR) {
        return NSLocalizedStringFromTable(@"2 days", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 7 * DAY) {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u days", @"NSDate+HumanInterval", nil), delta / DAY];
    }
    else if (delta < 11 * DAY) {
        return NSLocalizedStringFromTable(@"1 week", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 14 * DAY) {
        return NSLocalizedStringFromTable(@"2 weeks", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 9 * WEEK) {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u weeks", @"NSDate+HumanInterval", nil), delta / WEEK];
    }
    else if (delta < 19 * MONTH) {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u months", @"NSDate+HumanInterval", nil), delta / MONTH];
    }
    else if (delta < 2 * YEAR) {
        return NSLocalizedStringFromTable(@"1 year", @"NSDate+HumanInterval", nil);
    }
    else {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u years", @"NSDate+HumanInterval", nil), delta / YEAR];
    }
}


- (NSString *)humanIntervalAgoSinceNow
{
    int delta = [self timeIntervalSinceNow];

    delta *= -1;

    if (delta < 0) {
        return [self description];
    }
    else if (delta < 1 * MINUTE) {
        return NSLocalizedStringFromTable(@"just now", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 2 * MINUTE) {
        return NSLocalizedStringFromTable(@"a minute ago", @"NSDate+HumanInterval", nil);
    }
    else if (delta <= 45 * MINUTE) {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u minutes ago", @"NSDate+HumanInterval", nil), delta / MINUTE];
    }
    else if (delta <= 90 * MINUTE) {
        return NSLocalizedStringFromTable(@"an hour ago", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 3 * HOUR) {
        return NSLocalizedStringFromTable(@"2 hours ago", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 23 * HOUR) {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u hours ago", @"NSDate+HumanInterval", nil), delta / HOUR];
    }
    else if (delta < 36 * HOUR) {
        return NSLocalizedStringFromTable(@"a day ago", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 72 * HOUR) {
        return NSLocalizedStringFromTable(@"2 days ago", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 7 * DAY) {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u days ago", @"NSDate+HumanInterval", nil), delta / DAY];
    }
    else if (delta < 11 * DAY) {
        return NSLocalizedStringFromTable(@"a week ago", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 14 * DAY) {
        return NSLocalizedStringFromTable(@"2 weeks ago", @"NSDate+HumanInterval", nil);
    }
    else if (delta < 9 * WEEK) {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u weeks ago", @"NSDate+HumanInterval", nil), delta / WEEK];
    }
    else if (delta < 19 * MONTH) {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u months ago", @"NSDate+HumanInterval", nil), delta / MONTH];
    }
    else if (delta < 2 * YEAR) {
        return NSLocalizedStringFromTable(@"a year ago", @"NSDate+HumanInterval", nil);
    }
    else {
        return [NSString stringWithFormat:NSLocalizedStringFromTable(@"%u years ago", @"NSDate+HumanInterval", nil), delta / YEAR];
    }
}


@end