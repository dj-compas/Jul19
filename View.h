//
//  View.h
//  Jul12
//
//  Created by Michael Compas on 7/19/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface View : UIView
{
	ViewController *controller;
}

- (id)initWithFrame:(CGRect)frame controller:(ViewController *) c backgroundColor:(UIColor *) col;

@end
