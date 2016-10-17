//
//  NDIntroPageView.m
//  NDParallaxIntroView
//
//  Created by Simon Wicha on 17/04/2016.
//  Copyright © 2016 Simon Wicha. All rights reserved.
//

#import "NDPageB.h"

@implementation NDPageB

- (void)initialize{
    self.backgroundColor = [UIColor clearColor];
}

- (id)initWithCoder:(NSCoder *)aCoder{
    if(self = [super initWithCoder:aCoder]){
        [self initialize];
    }
    return self;
}

- (id)initWithFrame:(CGRect)rect{
    if(self = [super initWithFrame:rect]){
        [self initialize];
    }
    return self;
}

- (IBAction)onClick:(id)sender {
    
    [NSThread sleepForTimeInterval:2.0f];
    //[self makeVisible:self.buttonNext];
    [self makeVisible:self.textfieldCode];
    [self.descriptionLabel setText:@"Check your email!"];
    
    if(self.delegate){
        //[self.delegate onClickValidateInput];
    }
    else{
        NSLog(@"Your delegate is null");
    }
}


- (IBAction)goPreviousPage:(id)sender {
    [self.delegate goToPreviousPage];
}

- (IBAction)validateCode:(id)sender {
    if([self.textfieldCode.text length]!=0){
        [self.delegate updateNumPages:3];
        [self.delegate goToNextPage];
    }
}

- (void)makeVisible:(UIView *)view {
    view.alpha = 0;
    view.hidden = NO;
    [UIView animateWithDuration:0.3 animations:^{
        view.alpha = 1;
    }];
}

- (void)makeInvisible:(UIView *)view{
    [UIView animateWithDuration:0.3 animations:^{
        view.alpha = 0;
    } completion: ^(BOOL finished) {//creates a variable (BOOL) called "finished" that is set to *YES* when animation IS completed.
        view.hidden = finished;//if animation is finished ("finished" == *YES*), then hidden = "finished" ... (aka hidden = *YES*)
    }];
}

@end
