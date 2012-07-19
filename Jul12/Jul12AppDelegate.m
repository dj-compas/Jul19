//
//  Jul12AppDelegate.m
//  Jul12
//
//  Created by Michael Compas on 7/19/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "Jul12AppDelegate.h"
#import "ViewController.h"
#import "View.h"

@implementation Jul12AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    CGRect applicationFrame = [UIScreen mainScreen].applicationFrame;
	
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
	
	//self.window.rootViewController = [[ViewController alloc] init];
	UITabBarController *tab = [[UITabBarController alloc] init];
	self.window.rootViewController = tab;
	
	// view background colors
	NSArray *bgcolors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor], nil];
	
	tab.viewControllers = [NSArray arrayWithObjects:
						   [[ViewController alloc] initWithColor:[bgcolors objectAtIndex:0]], 
						   [[ViewController alloc] initWithColor:[bgcolors objectAtIndex:1]], 
						   [[ViewController alloc] initWithColor:[bgcolors objectAtIndex:2]], 
						   [[ViewController alloc] initWithColor:[bgcolors objectAtIndex:3]], 
						   nil];
	
	// tab bar images
	NSArray *tabBarImages = [NSArray arrayWithObjects:@"04-squiggle.png", @"07-map-marker.png", @"20-gear2.png", @"38-airplane.png", nil];
	
	
	
	for (int i=0; i < tab.viewControllers.count; ++i) {
		ViewController *controller = [tab.viewControllers objectAtIndex:i];
		//controller.view = [[View alloc] initWithFrame:applicationFrame controller:controller backgroundColor:[bgcolors objectAtIndex:i]];
		controller.tabBarItem.title = [NSString stringWithFormat:@"TAB %i", i];
		controller.tabBarItem.image = [UIImage imageNamed:[tabBarImages objectAtIndex:i]];
	}
	
	
	//ViewController *controller = [tab.viewControllers objectAtIndex:0];
	//controller.tabBarItem.title = @"TAB!";
	
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
