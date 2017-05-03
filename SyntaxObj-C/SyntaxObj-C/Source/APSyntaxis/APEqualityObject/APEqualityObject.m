//
//  APEqualityObject.m
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 03.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APEqualityObject.h"

@interface APEqualityObject ()
@property (nonatomic, assign) NSUInteger value;

@end

@implementation APEqualityObject

#pragma mark -
#pragma Class Methods

+ (instancetype)objectWithValue:(NSUInteger)value {
    return [[[self alloc] objectWithValue:value] autorelease];
}

#pragma mark -
#pragma Initializations and Deallocations

- (instancetype)initWithValue:(NSUInteger)value {
    self = [super init];
    if (self) {
        self.value = value;
    }
    
    return self;
}

#pragma mark -
#pragma Comparison

// Сравнене. Для срвнения имеем два метода:

- (NSUInteger)hash {
    return self.value;
}

- (BOOL)isEqual:(APEqualityObject *)object {
    if ([object isMemberOfClass:[self class]]) {
        return [self isEqualToEqualityObject:(APEqualityObject *)object];
    }
    
    return NO;
}

// Точка перегруза
- (BOOL)isEqualToEqualityObject:(APEqualityObject *)object {
    return self.value == object.value;
}

#pragma mark -
#pragma NSCopying

// метод NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] initWithValue:self.value];
}

@end
