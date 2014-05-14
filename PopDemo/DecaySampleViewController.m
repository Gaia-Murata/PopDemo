//
//  DecaySampleViewController.m
//  PopDemo
//
//  Created by 村田 宗一朗 on 2014/05/14.
//  Copyright (c) 2014年 murata gaia. All rights reserved.
//

#import "DecaySampleViewController.h"
#import "pop/POP.h"

@interface DecaySampleViewController ()

@end

@implementation DecaySampleViewController

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
    POPDecayAnimation *animX = [POPDecayAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    animX.velocity = @(100.0f);
    [_decaySampleView.layer pop_addAnimation:animX forKey:@"slideX"];
    
    
    POPDecayAnimation *animY = [POPDecayAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    animY.velocity = @(100.0f);
    [_decaySampleView.layer pop_addAnimation:animY forKey:@"slideY"];
}
@end
