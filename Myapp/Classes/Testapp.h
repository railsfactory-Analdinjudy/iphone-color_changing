//
//  Testapp.h
//  Myapp
//
//  Created by GangeyaKumar on 16/12/09.
//  Copyright 2009 Sedin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import<CoreGraphics/CoreGraphics.h>

@interface Testapp : UIViewController <UIScrollViewDelegate>{

	IBOutlet UITextField *textfield1;
	IBOutlet UITextField *textfield2;
	IBOutlet UITextField *textfield3;
	IBOutlet UIButton *button1;
	IBOutlet UIImageView *imageview1;
	NSMutableArray *mycolor;
	IBOutlet UIScrollView *aScrollView;

}

@property (nonatomic, retain) IBOutlet UITextField *textfield1;
@property (nonatomic, retain) UITextField *textfield2;
@property (nonatomic, retain) UITextField *textfield3;
@property (nonatomic, retain) UIButton *button1;
@property (nonatomic, retain) IBOutlet UIImageView *imageview1;
@property (nonatomic, retain) NSMutableArray *mycolor;
@property (nonatomic, retain)  IBOutlet UIScrollView *aScrollView;

-(IBAction) click;
@end
