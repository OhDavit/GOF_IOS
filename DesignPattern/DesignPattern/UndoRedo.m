//
//  UndoRedo.m
//  DesignPattern
//
//  Created by Davit Ohanyan on 20/02/16.
//  Copyright © 2016 Davit Ohanyan. All rights reserved.
//

#import "UndoRedo.h"
#import "Command.h"

@interface UndoRedo()
@property(nonatomic, strong)NSMutableArray<Command>* undoCommands;
@property(nonatomic, strong)NSMutableArray<Command>* redoCommands;

@end

@implementation UndoRedo
- (instancetype)init
{
    if (self = [super init]) {
        _undoCommands = [[NSMutableArray<Command> alloc]init];
        _redoCommands = [[NSMutableArray<Command> alloc]init];
    }
    
    return self;
}

- (void)redo:(int)levels
{
    for (int i = 0; i < levels; ++i) {
        id<Command> command = _redoCommands.lastObject;
        [command execute];
        [_undoCommands addObject:command];
    }
}

- (void)undo:(int)levels
{
    for (int i = 0; i < levels; ++i) {
        id<Command> command = _undoCommands.lastObject;
        [command unExecute];
        [_redoCommands addObject:command];
    }
}

- (void)addCommand:(id<Command>)command
{
    [_undoCommands addObject:command];
    [_redoCommands removeAllObjects];
}
@end
