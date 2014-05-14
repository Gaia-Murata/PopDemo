//
//  PopMCAnimateSampleViewController.m
//  PopDemo
//
//  Created by 村田 宗一朗 on 2014/05/14.
//  Copyright (c) 2014年 murata gaia. All rights reserved.
//

#import "PopMCAnimateSampleViewController.h"
#define MCANIMATE_SHORTHAND
#import <POP+MCAnimate.h>

@interface PopMCAnimateSampleViewController ()

@end

@implementation PopMCAnimateSampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)startAnimation:(id)sender {
    [_mcAnimateSampleView.layer pop_removeAllAnimations];
    [NSObject animate:^{
        _mcAnimateSampleView.springBounciness = 24.0f;
        _mcAnimateSampleView.springSpeed = 10.0f;
        _mcAnimateSampleView.spring.pop_scaleXY = CGPointMake(2.f, 2.f);
    } completion:^(BOOL finished) {
        _mcAnimateSampleView.layer.pop_duration = 4;
        _mcAnimateSampleView.layer.easeInEaseOut.pop_rotationX = 60.0f;
    }];
}
@end
