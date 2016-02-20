//
//  HideCommand.h
//  DesignPattern
//
//  Created by Davit Ohanyan on 20/02/16.
//  Copyright © 2016 Davit Ohanyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Command.h"
@interface HideCommand : NSObject<Command>

- (instancetype)initWithView:(UIView *)view;
@end
