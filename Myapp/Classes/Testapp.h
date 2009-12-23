//
//  Testapp.h
//  Myapp
//
//  Created by GangeyaKumar on 16/12/09.
//  Copyright 2009 Sedin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import<CoreGraphics/CoreGraphics.h>

@interface Testapp : UIViewController {
	IBOutlet UIImageView *imageview1;
	NSMutableArray *mycolor;
	

}


@property (nonatomic, retain) IBOutlet UIImageView *imageview1;
@property (nonatomic, retain) NSMutableArray *mycolor;



@end
