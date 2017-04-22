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

static
void APObjectCNil();

static
void APObjectCLiterals();

static
void APObjectCTollFreeBridging();

static
void APObjectCMessaging();

#pragma mark -
#pragma mark Public Implementations

void APObjectCSyntax() {
    APAutoreleasePoolLiteral();
    APAutoreleasePoolExplicit();
    APObjectCNil();
    APObjectCLiterals();
    APObjectCTollFreeBridging();
    APObjectCMessaging();
}

#pragma mark -
#pragma mark Private Declarations

// APAutoreleasePool literal

void APAutoreleasePoolLiteral() {
    @autoreleasepool {
        NSObject *object = [[NSObject new] autorelease];
        
        NSLog(@"NSAutoreleasePool Literal");
        NSLog(@"object - %@", object);
    }
}

// APAutoreleasePoolLiteral это тоже самое, что и APAutoreleasePoolExplicit

void APAutoreleasePoolExplicit() {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSObject *object = [[NSObject new] autorelease];
    
    NSLog(@"NSAutoreleasePool explicit");
    NSLog(@"object - %@", object);
    
    [pool drain];
}

// Что есть ноль в Objective C
// Nil - ноль для классов, nil - ноль для объектов
// Для простейших типов (например char) - Null

void APObjectCNil() {
    NSLog(@"Nil and Nil:");
    
    id object = nil;
    Class class = Nil;
    
    NSLog(@"object = %@, class = %@", object, class);
}

// Literals
// Если есть @ - литерал, если нет @ - посылка сообщения

void APObjectCLiterals() {
    NSNumber *number = @(5);
    NSLog(@"namber literal = %@, class = %@", number, [number class]);
    
    NSArray *array = @[number, number];
    NSLog(@"array literal = %@, class = %@", array, [array class]);
    
    NSString *string = @"string";
    NSLog(@"string = %@, class = %@", string, [string class]);
    
    NSDictionary *dictionary = @{number : string};
    NSLog(@"dictionery = %@, class = %@", dictionary, [dictionary class]);
}

// Toll Free Bridging
// Мост (тоннель) между С и Objective C

void APObjectCTollFreeBridging() {
    CFStringRef stringRef = (CFStringRef)[[NSString alloc] initWithFormat:@"%d", arc4random()];
    NSString *string = (NSString *)stringRef;
    [string retain];
    
    NSLog(@"string retain count = %lu", (unsigned long)[string retainCount]);
    NSLog(@"CFString = %@, NSString = %@", (NSString *)stringRef, [string description]);
    
    CFRelease(stringRef);
    
    NSLog(@"string retain count = %lu", (unsigned long)[string retainCount]);
    
    [string release];
}

// Messaging

void APObjectCMessaging() {
    // 1 variant
    id object = [[NSObject new] autorelease];
    
    // 2 variant
    object = [NSMutableArray arrayWithObjects:object, [[NSObject new] autorelease], nil];
    
    // 3 variant
    object = [NSMutableDictionary dictionary];
    [object setObject:[[NSObject new] autorelease]
               forKey:[[[NSString alloc] initWithFormat:@"%d", arc4random()] autorelease]];
    
    // 4 variant
    SEL selector = @selector(setObject:forKey:);
    [object performSelector:selector
                 withObject:[[NSObject new] autorelease]
                 withObject:[[[NSString alloc] initWithFormat:@"%d", arc4random()] autorelease]];
}
