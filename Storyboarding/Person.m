//
//  Person.m
//  Storyboarding
//
//  Created by ChildhoodAndy on 14-7-30.
//  Copyright (c) 2014年 ChildhoodAndy. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString*)name favorColor:(UIColor*)favorColor age:(int)age
{
    self = [super init];
    if (self) {
        self.name = name;
        self.favorColor = favorColor;
        self.age = age;
    }
    
    return self;
}

@end
