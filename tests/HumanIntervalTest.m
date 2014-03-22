//
//  LogicTests.m
//  Buzzalot
//
//  Created by David E. Wheeler on 2/16/10.
//  Copyright 2010 Kineticode, Inc.. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>
#import "NSDate+HumanInterval.h"

@interface HumanIntervalTest : SenTestCase;
@end

@implementation HumanIntervalTest

- (void)testNow
{
    NSDate *date = [NSDate date];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"just now", nil)], @"just now, really");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"just now", nil)], @"just now, really");
}


- (void)test10SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-10];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"just now", nil)], @"10 seconds ago is just now");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"just now", nil)], @"10 seconds ago is just now");
}


- (void)test35SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-35];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"just now", nil)], @"35 seconds ago is just now");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"just now", nil)], @"35 seconds ago is just now");
}


- (void)test50SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-50];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"just now", nil)], @"50 seconds ago is just now");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"just now", nil)], @"50 seconds ago is just now");
}


- (void)test70SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-70];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 min", nil)], @"70 seconds ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"a minute ago", nil)], @"70 seconds ago");
}


- (void)test115SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-115];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 min", nil)], @"115 seconds ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"a minute ago", nil)], @"115 seconds ago");
}


- (void)test122SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-122];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 mins", nil)], @"122 seconds ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 minutes ago", nil)], @"122 seconds ago");
}


- (void)test175SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-175];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 mins", nil)], @"175 seconds ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 minutes ago", nil)], @"175 seconds ago");
}


- (void)test181SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-181];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"3 mins", nil)], @"181 seconds ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"3 minutes ago", nil)], @"181 seconds ago");
}


- (void)test235SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-235];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"3 mins", nil)], @"235 seconds ago");
}


- (void)test250SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-250];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"4 mins", nil)], @"250 seconds ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"4 minutes ago", nil)], @"250 seconds ago");
}


- (void)test44MinsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-44 * 60];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"44 mins", nil)], @"44 mins ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"44 minutes ago", nil)], @"44 mins ago");
}


- (void)test45MinsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-45 * 60];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"45 mins", nil)], @"45 mins ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"45 minutes ago", nil)], @"45 mins ago");
}


- (void)test46MinsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-46 * 60];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 hour", nil)], @"46 mins ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"an hour ago", nil)], @"46 mins ago");
}


- (void)test3590SecsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-3590];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 hour", nil)], @"3590 seconds ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"an hour ago", nil)], @"3590 seconds ago");
}


- (void)test1HourAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-3600];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 hour", nil)], @"1 hour ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"an hour ago", nil)], @"1 hour ago");
}


- (void)test89MinsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-89 * 60];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 hour", nil)], @"89 minutes ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"an hour ago", nil)], @"89 minutes ago");
}


- (void)test90MinsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-90 * 60];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 hour", nil)], @"90 minutes ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"an hour ago", nil)], @"90 minutes ago");
}


- (void)test91MinsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-91 * 60];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 hours", nil)], @"91 minutes ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 hours ago", nil)], @"91 minutes ago");
}


- (void)test2HoursAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-2 * 3600];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 hours", nil)], @"2 hours ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 hours ago", nil)], @"2 hours ago");
}


- (void)test2Hours59MinsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-(3 * 3600) + 60];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 hours", nil)], @"2 hours 59 minutes ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 hours ago", nil)], @"2 hours 59 minutes ago");
}


- (void)test3HoursAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-3 * 3600];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"3 hours", nil)], @"3 hours ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"3 hours ago", nil)], @"3 hours ago");
}


- (void)test18HoursAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-18 * 3600];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"18 hours", nil)], @"18 hours ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"18 hours ago", nil)], @"18 hours ago");
}


- (void)test23HoursAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-23 * 3600];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 day", nil)], @"23 hours ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"a day ago", nil)], @"23 hours ago");
}


- (void)test36HoursAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-36 * 3600];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 days", nil)], @"36 hours ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 days ago", nil)], @"36 hours ago");
}


- (void)test71HoursAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-71 * 3600];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 days", nil)], @"71 hours ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 days ago", nil)], @"71 hours ago");
}


- (void)test72HoursAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-72 * 3600];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"3 days", nil)], @"72 hours ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"3 days ago", nil)], @"72 hours ago");
}


- (void)test4DaysAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-4 * 3600 * 24];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"4 days", nil)], @"4 days ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"4 days ago", nil)], @"4 days ago");
}


- (void)test7DaysAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-7 * 3600 * 24];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 week", nil)], @"7 days ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"a week ago", nil)], @"7 days ago");
}


- (void)test10DaysAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-10 * 3600 * 24];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 week", nil)], @"10 days ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"a week ago", nil)], @"10 days ago");
}


- (void)test13DaysAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-13 * 3600 * 24];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 weeks", nil)], @"13 days ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 weeks ago", nil)], @"13 days ago");
}


- (void)test14DaysAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-14 * 3600 * 24];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 weeks", nil)], @"14 days ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 weeks ago", nil)], @"14 days ago");
}


- (void)test20DaysAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-20 * 3600 * 24];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 weeks", nil)], @"20 days ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 weeks ago", nil)], @"20 days ago");
}


- (void)test21DaysAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-21 * 3600 * 24];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"3 weeks", nil)], @"21 days ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"3 weeks ago", nil)], @"21 days ago");
}


- (void)test27DaysAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-27 * 3600 * 24];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"3 weeks", nil)], @"27 days ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"3 weeks ago", nil)], @"27 days ago");
}


- (void)test28DaysAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-28 * 3600 * 24];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"4 weeks", nil)], @"28 days ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"4 weeks ago", nil)], @"28 days ago");
}


- (void)test7WeeksAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 7];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"7 weeks", nil)], @"7 weeks ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"7 weeks ago", nil)], @"7 weeks ago");
}


- (void)test8WeeksAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 8];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"8 weeks", nil)], @"8 weeks ago");
}


- (void)test8Weeks1DayAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:(-1 * 3600 * 24 * 7 * 9) + 3600];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"8 weeks", nil)], @"8 weeks ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"8 weeks ago", nil)], @"8 weeks ago");
}


- (void)test9WeeksAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 9];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 months", nil)], @"9 weeks ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 months ago", nil)], @"9 weeks ago");
}


- (void)test52WeeksAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 52];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"12 months", nil)], @"52 weeks ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"12 months ago", nil)], @"52 weeks ago");
}


- (void)test18MonthsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 30 * 18];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"18 months", nil)], @"18 months ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"18 months ago", nil)], @"18 months ago");
}


- (void)test103WeeksAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 103];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"1 year", nil)], @"103 weeks ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"a year ago", nil)], @"103 weeks ago");
}


- (void)test105WeeksAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 105];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 years", nil)], @"105 weeks ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 years ago", nil)], @"105 weeks ago");
}


- (void)test2YearsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 365 * 2];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"2 years", nil)], @"2 years ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"2 years ago", nil)], @"2 years ago");
}


- (void)test5YearsAgo
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 365 * 5.2];

    STAssertTrue([[date humanIntervalSinceNow] isEqualToString:NSLocalizedString(@"5 years", nil)], @"5 years ago");
    STAssertTrue([[date humanIntervalAgoSinceNow] isEqualToString:NSLocalizedString(@"5 years ago", nil)], @"5 years ago");
}


@end