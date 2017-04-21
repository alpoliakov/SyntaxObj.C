//
//  APSyntaxis.m
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APSyntaxis.h"

#pragma mark -
#pragma mark Private Declarations

static
void APAutoreleasePoolLiteral();

static
void APAutoreleasePoolExplicit();

#pragma mark -
#pragma mark Public Implementations

void APObjSyntax() {
    APAutoreleasePoolLiteral();
    APAutoreleasePoolExplicit();
}

#pragma mark -
#pragma mark Private Declarations

void APAutoreleasePoolLiteral() {
    @autoreleasepool {
        NSLog(@"utoreleasePool Literal");
    }
}

void APAutoreleasePoolExplicit() {

}

