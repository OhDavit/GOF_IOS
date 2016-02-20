//
//  Header.h
//  DesignPattern
//
//  Created by Davit Ohanyan on 20/02/16.
//  Copyright © 2016 Davit Ohanyan. All rights reserved.
//
@protocol Command <NSObject>

- (void)execute;

- (void)unExecute;
@end
