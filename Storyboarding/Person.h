//
//  Person.h
//  Storyboarding
//
//  Created by ChildhoodAndy on 14-7-30.
//  Copyright (c) 2014年 ChildhoodAndy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic, strong)NSString* name;
@property(nonatomic, strong)UIColor* favorColor;
@property(nonatomic, assign)int age;

- (id)initWithName:(NSString*)name favorColor:(UIColor*)favorColor age:(int)age;

@end
