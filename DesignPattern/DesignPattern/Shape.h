//
//  Shape.h
//  DesignPattern
//
//  Created by Davit Ohanyan on 8/17/14.
//  Copyright (c) 2014 Davit Ohanyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Shape <NSObject>

-(void)print;
-(void)description;

@property(nonatomic,strong)NSString* color;

@end
