//
//  HideCommand.m
//  DesignPattern
//
//  Created by Davit Ohanyan on 20/02/16.
//  Copyright © 2016 Davit Ohanyan. All rights reserved.
//

#import "HideCommand.h"

@interface HideCommand ()
@property(nonatomic, strong)UIView* view;
@end

@implementation HideCommand


- (instancetype)initWithView:(UIView *)view
{
    if (self = [super init]) {
        _view = view;
    }
    return self;
}


- (void)execute
{
    _view.hidden = YES;
}


- (void)unExecute
{
    _view.hidden = NO;
}
@end
