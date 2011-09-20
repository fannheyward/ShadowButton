//
//  ShadowButton.m
//  ShadowButtonSample
//
//  Created by fannheyward on 11-9-20.
//  Copyright 2011年 @fannheyward. All rights reserved.
//

#import "ShadowButton.h"

#import <QuartzCore/QuartzCore.h>

@implementation ShadowButton

-(void)setupView
{
    self.layer.cornerRadius = 4.0;
    
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(2.0f, 2.0f);
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowRadius = 1;
}

- (id)init
{
    self = [super init];
    if (self) {
        [self setupView];
    }
    
    return self;
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.center = CGPointMake(self.center.x+1, self.center.y+1);
    self.contentEdgeInsets = UIEdgeInsetsMake(1.0,1.0,-1.0,-1.0);
    self.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
    self.layer.shadowOpacity = 0.8;
    
    [super touchesBegan:touches withEvent:event];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.center = CGPointMake(self.center.x-1, self.center.y-1);
    self.contentEdgeInsets = UIEdgeInsetsMake(0.0,0.0,0.0,0.0);
    self.layer.shadowOffset = CGSizeMake(2.0f, 2.0f);
    self.layer.shadowOpacity = 0.5;
    
    [super touchesEnded:touches withEvent:event];
}

@end
