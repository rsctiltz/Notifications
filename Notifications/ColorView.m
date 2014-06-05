//
//  ColorView.m
//  Notifications
//
//  Created by Ryan Tiltz on 6/5/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ColorView.h"

@implementation ColorView

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeColor:) name:@"ChangeColorNotification" object:nil];
    }
    return self;
}


-(void)changeColor:(NSNotification *)notification
{
    NSString *colorName = [NSString stringWithFormat:@"%@Color", notification.object];
    self.backgroundColor = [UIColor performSelector:NSSelectorFromString(colorName)];
    [UIView animateWithDuration:1.0 animations:^{
        self.backgroundColor = [UIColor performSelector:NSSelectorFromString(colorName)];

    }];
    
    NSLog(@"Change Color");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
