//
//  AppDelegate.m
//  Jens OC app
//
//  Created by Jennifer Johnson on 3/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // variables
    float weight = 165.5f;
    float weightloss = 12.5f;
    int overweight = 160;
    int underweight = 100;
    bool lostweight = true;
    // casted float to an int
    int newweight = (int)weight - (int)weightloss;
    // output both in log
    NSLog(@"Original weight = %f, New weight = %d", weight, newweight);
    
    // performing if, else if and else with float, int and bool useing AND and OR comparisons
    if(weight > overweight && newweight < overweight){
        NSLog(@"You moved from overweight to normal weight!\n");
        NSLog(@"Over weight is %d, You were %f and are now %d\n", overweight, weight, newweight);
    }else if(weight > overweight || weight < underweight){
        NSLog(@"Your weight was either too high or too low");
    }else{
        lostweight = false;
        NSLog(@"You still need to lose more weight!\n");
        NSLog(@"Over weight is %d, You are %d\n", overweight, newweight);
    }
    
    if(lostweight == true){
        NSLog(@"Good job! You lost weight!\n");
    }else{
        NSLog(@"Your getting there! Keep working hard!\n");
    }
    
    //nested loop
    for(int m=1; m<4; m++){
        for(int w=1; w<5; w++){
            NSLog(@"Month %d, Week %d you lost 1 pound\n", m, w);
        }
    
    }
    
    // single loop
    for(int i=4; i<3; i++){
        NSLog(@"Week %d you lost 4 pounds!\n", i);
    }
    
    //while loop
    int goalweight = 145;
    while(goalweight > newweight){
        NSLog(@"New weight loss: %d\n", newweight);
        
        newweight--;
    }
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
