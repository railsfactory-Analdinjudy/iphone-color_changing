//
//  MyappAppDelegate.m
//  Myapp
//
//  Created by GangeyaKumar on 16/12/09.
//  Copyright Sedin 2009. All rights reserved.
//

#import "MyappAppDelegate.h"
#import "Testapp.h"

@implementation MyappAppDelegate

@synthesize window,testapp;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    [[UIApplication sharedApplication] setStatusBarHidden:YES];//TO hide the upper bar of the simulator

	//Testapp *temp = [[Testapp alloc] initWithRootViewController:self];
	Testapp *temp = [[Testapp alloc] initWithNibName:@"Test" bundle:nil];
	self.testapp = temp;
	[temp release];
	[window addSubview:self.testapp.view];
	[window makeKeyAndVisible];
	
	/*UINavigationController *navController = [[UINavigationController alloc]
											 initWithRootViewController:firstController];
	self.navigationController = navController;
	[firstController release];
	[navController release];	
	[window addSubview:self.navigationController.view];
	[window makeKeyAndVisible];	*/
}

/*- (void) touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
	UIColor *redcolor =[UIColor redColor]; 
	imageview1.background = redcolor;
	
	}*/
	
	
- (void)dealloc {
    [window release];
    [super dealloc];
}

/*-(IBAction) click

{
	
	textfield3.text = (NSInteger*) textfield1.text + (NSInteger*) textfield2.text;
 	
}*/
@end
