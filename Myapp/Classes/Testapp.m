//
//  Testapp.m
//  Myapp
//
//  Created by GangeyaKumar on 16/12/09.
//  Copyright 2009 Sedin. All rights reserved.
//

#import "Testapp.h"
#import<CoreGraphics/CoreGraphics.h>
#define IMAGE_WIDTH   320
#define IMAGE_HEIGHT  480

@implementation Testapp
@synthesize textfield1,textfield2,textfield3,button1,imageview1,mycolor,aScrollView;
int count=0;
int count1;
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

-(IBAction) click

{
	//(NSInteger*) textfield3.text = (NSInteger*) (textfield1.text) + (NSInteger*) (textfield2.text);
	NSLog(@"I am button");
	int first = (int) [textfield1 text];
	int second = (int) [textfield2 text];
	int res; 
	res = first+ second;
	
	
	//int first = [textfield1 text];
	//NSLog(@"result=%i",first);
	//int valorConvertido = [strValor intValue];
 	
}
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
/*- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event  {
	
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
}*/

//changing the images


/*- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event  {
	
	//Declaring colors
	
	UIImage *img1 =[UIImage imageNamed:@"images-1.jpeg"];
	UIImage *img2 =[UIImage imageNamed:@"images-2.jpeg"];
	UIImage *img3 =[UIImage imageNamed:@"images-3.jpeg"];
	UIImage *img4 =[UIImage imageNamed:@"images-4.jpeg"];
	UIImage *img5 =[UIImage imageNamed:@"images-5.jpeg"];
		
    NSMutableArray *imagearray =[[NSMutableArray alloc] init];
	//Storing colors in an array
    imagearray = [NSMutableArray arrayWithObjects:img1,img2,img3,img4,img5,nil];
	
	UIImage *someimage;
	//Increment the touches
	NSUInteger mytouch  = [[touches anyObject] tapCount];
	if(mytouch >=5)
	{
		mytouch=1;
		//Retrieving the color from the array
		someimage=(UIImage*) [imagearray objectAtIndex:mytouch-1];
		//set the color
		imageview1.image=someimage;
		
	}
	else
	{
		someimage=(UIImage*) [imagearray objectAtIndex:mytouch-1];
		//set the color
		imageview1.image=someimage;
		
	}	
	
}*/





- (void)viewDidLoad
{
    [super viewDidLoad];
	
   /* NSArray *photos = nil;      // TODO – fill with your photos
	
    // note that the view contains a UIScrollView in aScrollView
	
	int i=0;
	for ( NSString *image in photos )
	{*/
	int i=0;
	UIImage *img1 =[UIImage imageNamed:@"images-1.jpeg"];
	UIImage *img2 =[UIImage imageNamed:@"images-2.jpeg"];
	UIImage *img3 =[UIImage imageNamed:@"images-3.jpeg"];
	UIImage *img4 =[UIImage imageNamed:@"images-4.jpeg"];
	UIImage *img5 =[UIImage imageNamed:@"images-5.jpeg"];
	
    NSMutableArray *imagearray =[[NSMutableArray alloc] init];
	//Storing colors in an array
    imagearray = [NSMutableArray arrayWithObjects:img1,img2,img3,img4,img5,nil];
	for ( NSString *image in imagearray )
	{
		UIImage *image = [imagearray objectAtIndex:i];
		//UIImage *image = [UIImage imageNamed:@"images-1.jpeg"];
		imageview1 = [[UIImageView alloc] initWithImage:image];
		//imageview1.contentMode = UIViewContentModeScaleAspectFit;
		//imageview1.clipsToBounds = YES;
		
		imageview1.frame = CGRectMake( IMAGE_WIDTH * i++, 0, IMAGE_WIDTH, IMAGE_HEIGHT);
		
		[aScrollView addSubview:imageview1];
		[imageview1 release];
	}
	aScrollView.contentSize = CGSizeMake(IMAGE_WIDTH*i, IMAGE_HEIGHT);
	aScrollView.delegate = self;
}

@end
