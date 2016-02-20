//
//  UndoRedo.h
//  DesignPattern
//
//  Created by Davit Ohanyan on 20/02/16.
//  Copyright © 2016 Davit Ohanyan. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Command;

@interface UndoRedo : NSObject

- (void)redo:(int)levels;


- (void)undo:(int)levels;

- (void)addCommand:(id<Command>)command;
@end
