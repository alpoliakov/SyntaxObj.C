//
//  APSubclassCreateObject.m
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APSubclassCreateObject.h"

@implementation APSubclassCreateObject

- (void)sayWithString:(NSString *)string name:(NSString *)name {
    NSLog(@"\nYou are asshole %@!", self);
}

- (void)rapeMe {
    NSLog(@"\nRape me. Do it again and again. Hate me! %@", self);
}

- (void)overLoadedPrint {
    NSLog(@"-----------------------------------");
    NSLog(@"\n%@ %s line = %d", self, __FILE__, __LINE__);
    [super overLoadedPrint];
    NSLog(@"-----------------------------------");
}


@end
