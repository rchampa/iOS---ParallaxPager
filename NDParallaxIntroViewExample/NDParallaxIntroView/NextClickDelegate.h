//
//  NextClickDelegate.h
//  NDParallaxIntroViewExample
//
//  Created by Ricardo Champa on 16/10/2016.
//  Copyright © 2016 Simon Wicha. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NextClickDelegate <NSObject>
@required
-(void)onClickNext:(int)toPage;
@end
