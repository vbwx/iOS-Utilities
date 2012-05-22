iOS Utilities
=============
If you're like us, you don't like redundant code. We wrote these helpers and
additions mostly to clean up our source code; hopefully, you can benefit from
these efforts as well.

Projects
--------
### QAUtilities ###
This is a collection of functions and preprocessor macros that can simplify your
Cocoa Touch code quite a bit. (Most of the macros and one function could also
be used with regular Cocoa.) In order to use it, you have to define a
preprocessor macro for every target: `DELEGATE_CLASS=XYZ`, where XYZ is your
the name of your application delegate class. Then, open the precompiled header
file (`*-Prefix.pch`) and insert `#import "QAUtilities.h"` at the bottom.
In addition, you have to call
`QAInitialize(self)` in `-application:didFinishLaunchingWithOptions:` of your
application delegate.

### CommonDefaults ###
A simple category on `NSUserDefaults` that makes a few common settings easier
to use.

### StringAdditions ###
A category on `NSString` that implements some methods that should have been in
that class in the first place.
