//
//  RBCommandBus.h
//  RBCommandBusDemo
//
//  Created by Roshan Balaji on 10/5/14.
//  Copyright (c) 2014 Uniq. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RBHandlerProtocol <NSObject>

@required
-(id)handle:(id)command;

@end


@interface RBCommandBus : NSObject

//execute a command object with its specific handler
-(id)executeCommand:(id)command;

//execute command with Completion Blocks
-(void)executeCommand:(id)command withCompletion:(void(^)(id result))completion;

@end
