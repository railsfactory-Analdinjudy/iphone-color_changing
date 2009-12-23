//
//  Testapp.m
//  Myapp
//
//  Created by GangeyaKumar on 16/12/09.
//  Copyright 2009 Sedin. All rights reserved.
//

#import "Testapp.h"
#import<CoreGraphics/CoreGraphics.h>


@implementation Testapp
@synthesize imageview1,mycolor;

/*
// Override initWithNibName:bundle: to load the view using a nib file then perform additional customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}


//To change the color
- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event  {
	
	//Declaring colors
	UIColor *red =[UIColor redColor]; 
	UIColor *green=[UIColor greenColor];
	UIColor *blue =[UIColor blueColor];
	UIColor *black =[UIColor blackColor];
	UIColor *yellow =[UIColor yellowColor];
	UIColor *purple =[UIColor purpleColor];
	UIColor *orange=[UIColor orangeColor];
	
    NSMutableArray *colorarray =[[NSMutableArray alloc] init];
	//Storing colors in an array
    colorarray = [NSMutableArray arrayWithObjects:red,green,blue,black,yellow,purple,orange,nil];
		
	UIColor *somecolor;
	//Increment the touches
	NSUInteger mytouch  = [[touches anyObject] tapCount];
	if(mytouch >=7)
	{
		mytouch=1;
	//Retrieving the color from the array
	somecolor=(UIColor*) [colorarray objectAtIndex:mytouch-1];
	//set the color
	imageview1.backgroundColor=somecolor;
	}
	else
	{
		
		somecolor=(UIColor*) [colorarray objectAtIndex:mytouch-1];
		//set the color
		imageview1.backgroundColor=somecolor;
	}	
}





/*- (void)viewDidLoad
{
    [super viewDidLoad];

}
*/
@end
