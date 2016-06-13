//
//  ViewController.m
//  UIView+Shake
//
//  Created by admin on 16/6/1.
//  Copyright © 2016年 Ding. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Shake.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textTimes;
@property (weak, nonatomic) IBOutlet UITextField *textSpeed;
@property (weak, nonatomic) IBOutlet UITextField *textOffset;
@property (weak, nonatomic) IBOutlet UISegmentedControl *shakeDirection;

@property (weak, nonatomic) IBOutlet UIView *shakeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initViews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)initViews {
    
    [@[_textOffset, _textTimes, _textSpeed] enumerateObjectsUsingBlock:^(UITextField* obj, NSUInteger idx, BOOL *stop) {
        obj.layer.borderWidth = 2;
        obj.layer.borderColor = [UIColor colorWithRed:49.0/255.0 green:186.0/255.0 blue:81.0/255.0 alpha:1].CGColor;
    }];
    self.shakeDirection.layer.borderWidth = 2;
    self.shakeDirection.layer.borderColor = self.shakeDirection.tintColor.CGColor;
    self.shakeDirection.selectedSegmentIndex = 1;
    
    self.shakeView.layer.cornerRadius = self.shakeView.frame.size.height / 2;
    self.shakeView.layer.masksToBounds = YES;
}

- (IBAction)shake:(id)sender {
    ShakeDirection direction = self.shakeDirection.selectedSegmentIndex==0 ? ShakeDirectionHorizontal : ShakeDirectionVertical;
    
    [self.shakeView shake:[self.textTimes.text intValue]
               withOffset:[self.textOffset.text floatValue]
                    speed:[self.textSpeed.text floatValue]
           shakeDirection:direction];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
