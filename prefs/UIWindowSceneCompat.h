// UIWindowSceneCompat.h
// UIWindowScene.keyWindow only exists in the iOS 15 SDK and later. This fork is
// built against the iOS 13.7 SDK, so declare it for the preference bundle. The
// call site is already guarded by @available(iOS 15.0, *).

#ifdef __OBJC__
#import <UIKit/UIKit.h>

@interface UIWindowScene (LightsOutCompat)
@property (nonatomic, readonly) UIWindow *keyWindow;
@end
#endif
