//
//  RBCommandBus.m
//  RBCommandBusDemo
//
//  Created by Roshan Balaji on 10/5/14.
//  Copyright (c) 2014 Uniq. All rights reserved.
//

#import "RBCommandBus.h"

@interface RBCommandTranslator : NSObject

-(NSString *)toCommandHandler:(id)command;

@end

@implementation RBCommandTranslator

NSString *const KHANDLERCLASSSUFFIX = @"Handler";

-(NSString *)toCommandHandler:(id)command
{
    
    NSString *commandClassName =  NSStringFromClass([command class]);
    
    return [commandClassName stringByAppendingString:KHANDLERCLASSSUFFIX];
    
}

@end


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
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        
        id result = [self executeCommand:command];
        dispatch_async(dispatch_get_main_queue(), ^{
            if(completion)
                completion(result);
        });
        
    });
    

}

@end

