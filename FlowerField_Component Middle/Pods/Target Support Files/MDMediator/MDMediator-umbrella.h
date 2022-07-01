#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "MDMediator+Tools.h"
#import "MDMediator.h"

FOUNDATION_EXPORT double MDMediatorVersionNumber;
FOUNDATION_EXPORT const unsigned char MDMediatorVersionString[];

