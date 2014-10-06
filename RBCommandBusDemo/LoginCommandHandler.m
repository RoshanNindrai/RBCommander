//
//  LoginCommandHandler.m
//  RBCommandBusDemo
//
//  Created by Roshan Balaji on 10/5/14.
//  Copyright (c) 2014 Uniq. All rights reserved.
//

#import "LoginCommandHandler.h"
#import "LoginCommand.h"

@implementation LoginCommandHandler

-(id)handle:(LoginCommand *)command{
    
    [self performSelector:@selector(didLogIn:) withObject:command afterDelay:2.0];

    return nil;
    
}

-(void)didLogIn:(LoginCommand *)command{
    
    [[NSNotificationCenter defaultCenter] postNotificationName:KDIDLOGINNOTIFICATION object:nil userInfo:@{@"result":[command.username stringByAppendingString:@" logged in"]}];
    
}

@end
