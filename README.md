# UIView-Shake
A category of UIView to add some methods for shake animation<br>
Thaks for [UIView+Shake](https://github.com/andreamazz/UIView-Shake) and [UITextFiled+Shake](https://github.com/andreamazz/UITextField-Shake)<br>

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ShakeDirection) {
    ShakeDirectionHorizontal,
    ShakeDirectionVertical
};

/**
 *  A UIView category that add the ability to shake the component
 */
@interface UIView (Shake)

/**
 *  Shake with default values:
 *  10 times with 5 offset and 0.03 duration every time, in horizontal direction
 */
- (void)shake;

/**
 *  Shake with a given number of times and offset of every shake, in horizontal direction
 */
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset;

/**
 *  Shake with a given number of times and offset of every shake, in horizontal direction, and a handler after shakes
 */
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset completion:(nullable void (^)(void))handler;

/**
 *  Shake with a given number of times, offset of every shake, and duration of every shake, in horizontal direction
 */
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval;

/**
 *  Shake with a given number of times, offset of every shake, duration of every shake, and handler after shakes
 */
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval completion:(nullable void (^)(void))handler;

/**
 *  Shake with a given number of times, offset of every shake, duration of every shake, in a given direction
 */
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval shakeDirection:(ShakeDirection)shakeDirection;

/**
 *  Shake with a given number of times, offset of every shake, duration of every shake, in a given direction, and also hadler after shakes
 */
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval shakeDirection:(ShakeDirection)shakeDirection completion:(nullable void (^)(void))handler;

@end

