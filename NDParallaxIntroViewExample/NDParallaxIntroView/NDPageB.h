//
//  NDIntroPageView.h
//  NDParallaxIntroView
//
//  Created by Simon Wicha on 17/04/2016.
//  Copyright © 2016 Simon Wicha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NextClickDelegate.h"

@protocol NDPageBDelegate <NextClickDelegate>
@required
-(void)onClickValidateInput;
@end

@interface NDPageB : UIView

@property (assign, nonatomic) id<NDPageBDelegate> delegate;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *titlelabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputUser;

@property (weak, nonatomic) IBOutlet UIButton *buttonNext;
@property (weak, nonatomic) IBOutlet UITextField *textfieldCode;

- (IBAction)onClick:(id)sender;
- (IBAction)goNextPage:(id)sender;
- (IBAction)goPreviousPage:(id)sender;

@end
