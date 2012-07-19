//
//  View.m
//  Jul12
//
//  Created by Michael Compas on 7/19/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "View.h"
#import "ViewController.h"

@implementation View

- (id)initWithFrame:(CGRect)frame controller:(ViewController *) c backgroundColor:(UIColor *)col
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = col;
		
		controller = c;
    }
    return self;
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
