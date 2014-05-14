//
//  CustomPropertyViewController.m
//  PopDemo
//
//  Created by 村田 宗一朗 on 2014/05/14.
//  Copyright (c) 2014年 murata gaia. All rights reserved.
//

#import "CustomPropertyViewController.h"
#import "pop/POP.h"

@interface CustomPropertyViewController ()

@end

@implementation CustomPropertyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startAnimation:(id)sender {
    POPAnimatableProperty *countProperty = [POPAnimatableProperty propertyWithName:@"countUp" initializer:^(POPMutableAnimatableProperty *prop){
        prop.readBlock = ^(UILabel *label, CGFloat values[]) {
            //どの値を利用するか
            values[0] = [label.text intValue];
        };
        prop.writeBlock = ^(UILabel *label, const CGFloat values[]) {
            //変更した値をどこに更新するか
            label.text = [[NSString alloc] initWithFormat:@"%d", (int)values[0]];
        };
    }];
    
    POPBasicAnimation *countAnimation = [POPBasicAnimation new];
    //自作プロパティをセット
    countAnimation.property = countProperty;
    countAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    countAnimation.duration = 10.0f;
    countAnimation.fromValue = @(0);
    countAnimation.toValue = @(2000);
    [_countLabel pop_addAnimation:countAnimation forKey:@"constantAnimation"];

}
@end
