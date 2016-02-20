//
//  ChangePositionsCommand.m
//  DesignPattern
//
//  Created by Davit Ohanyan on 20/02/16.
//  Copyright © 2016 Davit Ohanyan. All rights reserved.
//

#import "MoveViewCommand.h"
#import <UIKit/UIKit.h>

@interface MoveViewCommand()
@property(nonatomic, assign)CGPoint pointDelta;
@property(nonatomic, strong)UIView *view;
@end

@implementation MoveViewCommand

- (instancetype)initWithView:(UIView *)uiElement withNewCoordinate:(CGPoint )newPoint
{
    if (self = [super init]) {
        _view = uiElement;
        _pointDelta = CGPointMake(newPoint.x - uiElement.frame.origin.x, newPoint.y - uiElement.frame.origin.y);
    }
    return self;
}


- (void)execute
{
    _view.frame = CGRectMake(_pointDelta.x + _view.frame.origin.x, _pointDelta.y + _view.frame.origin.y, _view.frame.size.width, _view.frame.size.height);
}


-(void)unExecute
{
        _view.frame = CGRectMake(_view.frame.origin.x - _pointDelta.x, _view.frame.origin.y - _pointDelta.y, _view.frame.size.width, _view.frame.size.height);
}
@end
