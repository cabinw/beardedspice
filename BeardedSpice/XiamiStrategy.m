//
//  XiamiStrategy.m
//  BeardedSpice
//
//  Created by cabinw on 22/4/14.
//  Copyright (c) 2014 Tyler Rhodes / Jose Falcon. All rights reserved.
//

#import "XiamiStrategy.h"

@implementation XiamiStrategy

-(id) init
{
    self = [super init];
    if (self) {
        predicate = [NSPredicate predicateWithFormat:@"SELF LIKE[c] '*xiami.com*'"];
    }
    return self;
}

-(BOOL) accepts:(id <Tab>)tab
{
    return [predicate evaluateWithObject:[tab URL]];
}

-(NSString *) toggle
{
    return @"(function(){return document.querySelectorAll('#J_playBtn')[0].click()})()";
}

-(NSString *) previous
{
    return @"(function(){return document.querySelectorAll('#J_prevBtn')[0].click()})()";
}

-(NSString *) next
{
    return @"(function(){return document.querySelectorAll('#J_nextBtn')[0].click()})()";
}

-(NSString *) pause
{
    return @"(function(){return document.querySelectorAll('#J_playBtn')[0].click()})()";
}

-(NSString *) displayName
{
    return @"Xiami";
}

@end
