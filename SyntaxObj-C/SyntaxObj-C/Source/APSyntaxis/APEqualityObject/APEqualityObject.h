//
//  APEqualityObject.h
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 03.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APEqualityObject : NSObject <NSCopying>
@property (nonatomic, readonly) NSUInteger value;

+ (instancetype)objectWithValue:(NSUInteger)value;

- (instancetype)initWithValue:(NSUInteger)value;

// Точка перегруза
- (BOOL)isEqualToEqualityObject:(APEqualityObject *)object;

@end
