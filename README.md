# UIView-Shake
A category of UIView to add some methods for shake animation<br>
Thaks for [UIView+Shake](https://github.com/andreamazz/UIView-Shake) and [UITextFiled+Shake](https://github.com/andreamazz/UITextField-Shake)<br>

'
- (void)shake;<br>
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset;<br>
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset completion:(nullable void (^)(void))handler;<br>
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval;<br>
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval completion:(nullable void (^)(void))handler;<br>
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval shakeDirection:(ShakeDirection)shakeDirection;<br>
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval shakeDirection:(ShakeDirection)shakeDirection completion:(nullable void (^)(void))handler;<br>
'
