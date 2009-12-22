//
//  MyappAppDelegate.h
//  Myapp
//
//  Created by GangeyaKumar on 16/12/09.
//  Copyright Sedin 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Testapp;

@interface MyappAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet Testapp *testapp;
	/*IBOutlet UITextField *textfield1;
	IBOutlet UITextField *textfield2;
	IBOutlet UITextField *textfield3;
	IBOutlet UIButton *button1;*/
	//IBOutlet UIImageView *imageview1;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
/*@property (nonatomic, retain) IBOutlet UITextField *textfield1;
@property (nonatomic, retain) UITextField *textfield2;
@property (nonatomic, retain) UITextField *textfield3;
@property (nonatomic, retain) UIButton *button1;*/
@property(nonatomic,retain) IBOutlet Testapp *testapp;
//@property(nonatomic,retain) IBOutlet UIImageView *imageview1;

//-(IBAction) click;
@end

