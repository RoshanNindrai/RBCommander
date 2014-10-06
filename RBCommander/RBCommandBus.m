//
//  RBCommandBus.m
//  RBCommandBusDemo
//
//  Created by Roshan Balaji on 10/5/14.
//  Copyright (c) 2014 Uniq. All rights reserved.
//

#import "RBCommandBus.h"

@interface RBCommandBus ()

@property(nonatomic, strong)RBCommandTranslator *commandTranslator;

@end

@implementation RBCommandBus

-(instancetype)init{
    
    self = [super init];
    if(self){
        
        self.commandTranslator = [RBCommandTranslator new];
        
    }
    
    return self;
    
}

-(id)executeCommand:(id)command
{
    
    NSString *commandHandlerClassName = [self.commandTranslator toCommandHandler:command];
    
    id<RBHandlerProtocol>handler = [NSClassFromString(commandHandlerClassName) new];
    
    return [handler handle:command];
    
}

-(void)executeCommand:(id)command withCompletion:(void(^)(id result))completion{
    
    if(completion)
        completion([self executeCommand:command]);
    

}

@end

