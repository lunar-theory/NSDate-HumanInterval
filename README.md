NSDate+HumanInterval
====================

An Objective-C category that adds a single method to `NSDate`:
`-humanIntervalSinceNow`. This method returns an `NSString` with a
human-readable (English, Spanish) representation of the `NSDate`, relative to now. The
default values are short, for use on the iPhone. Some examples:

* "just now": Less than 30 seconds ago.
* "n secs": Less than a minute ago.
* "n mins": Less than 45 minutes ago.
* "1 hour": Between 45 and 90 minutes ago.
* "2 hours": Between 90 minutes and three hours ago.
* "n hours": Less than 23 hours ago.
* "1 day": Between 23 and 36 hours ago.
* "2 days": Between 36 and 72 hours ago.
* "n days": Less than 7 days ago.
* "1 week": Less than 11 days ago.
* "2 weeks": Between 11 and 14 days ago.
* "n weeks": Less than 9 weeks ago.
* "n months": Less than 19 months ago.
* "1 year": Less than 2 years ago.
* "n years": Over two years.

Could probably use some tweaking, and definitely localization, but hopefully
it's useful. To use it, reference `src/NSDate+HumanInterval.h` and
`src/NSDate+HumanInterval.m` in your Xcode project, then add:

    #import "NSDate+HumanInterval.h"

Then just call `humanIntervalSinceNow` on an `NSDate` object:

    NSString *reltime = [self.buzzer.when humanIntervalSinceNow];

If you'd like to run the unit tests, open `NSDate+HumanInterval.xcodeproj` in
Xcode and build the "UnitTesting" target.


Author
------

* [David E. Wheeler](http://justatheory.com/)
* [Orlando Aleman](http://orlandoaleman.com/)

Copyright and License
---------------------

Copyright © 2010 by David E. Wheeler. Some rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
