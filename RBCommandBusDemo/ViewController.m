//
//  ViewController.m
//  RBCommandBusDemo
//
//  Created by Roshan Balaji on 10/5/14.
//  Copyright (c) 2014 Uniq. All rights reserved.
//

#import "ViewController.h"
#import "RBCommandBus.h"
#import "LoginCommand.h"

@interface ViewController ()

@property(nonatomic, strong)RBCommandBus *commandBus;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //MOVE THIS TO YOUR BASE CLASS
    self.commandBus = [RBCommandBus new];
    [self performLogin];
    [self performLoginWithCompletion];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)performLogin{
    
    LoginCommand *loginCommand = [LoginCommand new];
    
    loginCommand.username = @"John Appleseed";
    loginCommand.password = @"password";
    
    NSLog(@"Executed command result: %@", [self.commandBus executeCommand:loginCommand]);
    
}

-(void)performLoginWithCompletion{
    
    LoginCommand *loginCommand = [LoginCommand new];
    
    loginCommand.username = @"John Appleseed";
    loginCommand.password = @"password";
    
    [self.commandBus executeCommand:loginCommand withCompletion:^(NSString *result) {
        
        NSLog(@"Result after completion %@", result);
        
    }];

}

@end
