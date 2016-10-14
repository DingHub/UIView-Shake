# UIView-Shake
A category of UIView to add some methods for shake animation<br>
Thaks for [UIView+Shake](https://github.com/andreamazz/UIView-Shake) and [UITextFiled+Shake](https://github.com/andreamazz/UITextField-Shake)<br>

You can find a Swift version here:[UIViewExtesion-Shake](https://github.com/DingHub/UIViewExtesion-Shake/tree/master)<br>
Here are the shake methods~<br>
 ``` 
- (void)shake;
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset;
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset completion:(nullable void (^)(void))handler;
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval;
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval completion:(nullable void (^)(void))handler;
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval shakeDirection:(ShakeDirection)shakeDirection;
- (void)shake:(NSUInteger)times withOffset:(CGFloat)offset speed:(NSTimeInterval)interval shakeDirection:(ShakeDirection)shakeDirection completion:(nullable void (^)(void))handler;
 ``` 
