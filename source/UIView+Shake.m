//
//  UIView+Shake.m
//  UIView+Shake
//
//  Created by admin on 16/6/1.
//  Copyright © 2016年 Ding. All rights reserved.
//

#import "UIView+Shake.h"

static const int kTimes = 10;
static const CGFloat kOffset = 5;
static const CGFloat kSpeed = 0.03;

@implementation UIView (Shake)

- (void)shake {
    [self shake:kTimes withOffset:kOffset completion:nil];
}

- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset {
    [self shake:times withOffset:offset completion:nil];
}

- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset completion:(nullable void (^)(void))handler {
    [self p_shake:times direction:1 currentTimes:0 offset:offset speed:kSpeed shakeDirection:ShakeDirectionHorizontal completion:handler];
}

- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval {
    [self shake:times withOffset:offset speed:interval completion:nil];
}

- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval completion:(nullable void (^)(void))handler {
    [self p_shake:times direction:1 currentTimes:0 offset:offset speed:interval shakeDirection:ShakeDirectionHorizontal completion:handler];
}

- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval shakeDirection:(ShakeDirection)shakeDirection {
    [self shake:times withOffset:offset speed:interval shakeDirection:shakeDirection completion:nil];
}

- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval shakeDirection:(ShakeDirection)shakeDirection completion:(nullable void (^)(void))handler {
    [self p_shake:times direction:1 currentTimes:0 offset:offset speed:interval shakeDirection:shakeDirection completion:handler];
}

//@param direction      1 or -1 to caculate offset
- (void)p_shake:(NSUInteger)times
     direction:(int)direction
  currentTimes:(NSUInteger)current
        offset:(CGFloat)offset
         speed:(NSTimeInterval)interval
shakeDirection:(ShakeDirection)shakeDirection
    completion:(nullable void (^)())handler
{
    [UIView animateWithDuration:interval animations:^{
        self.transform = (shakeDirection == ShakeDirectionHorizontal) ? CGAffineTransformMakeTranslation(offset * direction, 0) : CGAffineTransformMakeTranslation(0, offset * direction);
    } completion:^(BOOL finished) {
        if(current >= times) {
            [UIView animateWithDuration:interval animations:^{
                self.transform = CGAffineTransformIdentity;
            } completion:^(BOOL finished) {
                if (handler) {
                    handler();
                }
            }];
            return;
        }
        [self p_shake:(times - 1)
           direction:direction * -1
        currentTimes:current + 1
           offset:offset
               speed:interval
      shakeDirection:shakeDirection
          completion:handler];
    }];
}

@end
