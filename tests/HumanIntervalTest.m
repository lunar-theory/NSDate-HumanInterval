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

- (void) testNow {
    NSDate *date = [NSDate date];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"just now"], @"just now, really");
}

- (void) test10SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-10];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"just now"], @"10 seconds ago is just now");
}

- (void) test35SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-35];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"just now"], @"35 seconds ago is just now");
}

- (void) test50SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-50];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"just now"], @"50 seconds ago is just now");
}

- (void) test70SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-70];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 min"], @"70 seconds ago");
}

- (void) test115SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-115];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 min"], @"115 seconds ago");
}

- (void) test122SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-122];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 mins"], @"122 seconds ago");
}

- (void) test175SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-175];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 mins"], @"175 seconds ago");
}

- (void) test181SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-181];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"3 mins"], @"181 seconds ago");
}

- (void) test235SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-235];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"3 mins"], @"235 seconds ago");
}

- (void) test250SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-250];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"4 mins"], @"250 seconds ago");
}

- (void) test44MinsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-44 * 60];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"44 mins"], @"44 mins ago");
}

- (void) test45MinsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-45 * 60];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"45 mins"], @"45 mins ago");
}

- (void) test46MinsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-46 * 60];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 hour"], @"46 mins ago");
}

- (void) test3590SecsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-3590];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 hour"], @"3590 seconds ago");
}

- (void) test1HourAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-3600];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 hour"], @"1 hour ago");
}

- (void) test89MinsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-89 * 60];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 hour"], @"89 minutes ago");
}

- (void) test90MinsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-90 * 60];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 hour"], @"90 minutes ago");
}

- (void) test91MinsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-91 * 60];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 hours"], @"91 minutes ago");
}

- (void) test2HoursAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-2 * 3600];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 hours"], @"2 hours ago");
}

- (void) test2Hours59MinsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-(3 * 3600) + 60];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 hours"], @"2 hours 59 minutes ago");
}

- (void) test3HoursAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-3 * 3600];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"3 hours"], @"3 hours ago");
}

- (void) test18HoursAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-18 * 3600];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"18 hours"], @"18 hours ago");
}

- (void) test23HoursAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-23 * 3600];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 day"], @"23 hours ago");
}

- (void) test36HoursAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-36 * 3600];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 days"], @"36 hours ago");
}

- (void) test71HoursAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-71 * 3600];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 days"], @"71 hours ago");
}

- (void) test72HoursAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-72 * 3600];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"3 days"], @"72 hours ago");
}

- (void) test4DaysAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-4 * 3600 * 24];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"4 days"], @"4 days ago");
}

- (void) test7DaysAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-7 * 3600 * 24];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 week"], @"7 days ago");
}

- (void) test10DaysAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-10 * 3600 * 24];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 week"], @"10 days ago");
}

- (void) test13DaysAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-13 * 3600 * 24];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 weeks"], @"13 days ago");
}

- (void) test14DaysAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-14 * 3600 * 24];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 weeks"], @"14 days ago");
}

- (void) test20DaysAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-20 * 3600 * 24];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 weeks"], @"20 days ago");
}

- (void) test21DaysAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-21 * 3600 * 24];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"3 weeks"], @"21 days ago");
}

- (void) test27DaysAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-27 * 3600 * 24];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"3 weeks"], @"27 days ago");
}

- (void) test28DaysAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-28 * 3600 * 24];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"4 weeks"], @"28 days ago");
}

- (void) test7WeeksAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 7];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"7 weeks"], @"7 weeks ago");
}

- (void) test8WeeksAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 8];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"8 weeks"], @"8 weeks ago");
}

- (void) test8Weeks1DayAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:(-1 * 3600 * 24 * 7 * 9) + 3600];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"8 weeks"], @"8 weeks ago");
}

- (void) test9WeeksAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 9];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 months"], @"9 weeks ago");
}

- (void) test52WeeksAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 52];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"12 months"], @"52 weeks ago");
}

- (void) test18MonthsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 30 * 18];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"18 months"], @"18 months ago");
}

- (void) test103WeeksAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 103];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"1 year"], @"103 weeks ago");
}

- (void) test105WeeksAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 7 * 105];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 years"], @"105 weeks ago");
}

- (void) test2YearsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 365 * 2];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"2 years"], @"2 years ago");
}

- (void) test5YearsAgo {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-1 * 3600 * 24 * 365 * 5.2];
    STAssertTrue([[date humanIntervalSinceNow] isEqualToString: @"5 years"], @"5 years ago");
}

@end