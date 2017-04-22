//
//  APSyntaxCreateObject.m
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APSyntaxCreateObject.h"

@implementation APSyntaxCreateObject;

// + методы самого класса
+ (instancetype)syntax {
    // self указатель получателя в данном случае указатель на класс
    return [[[self alloc] init] autorelease];
}

// - методы объекта класса
- (void)sayHi {
    [self sayWithString:@"Hi!"]; // self указатель уже на объект
}
- (id)text {
    return NSStringFromClass([self class]);
}

// метод с одним параметром
// sayWithString - селектор, (NSString *) - тип принимаемого параметра, string - имя параметра
- (void)sayWithString:(NSString *)string {
    [self sayWithString:string name:[self description]];
}

// метод с двумя параметрами
// name - продолжение селектора
- (void)sayWithString:(NSString *)string name:(NSString *)name {
    NSLog(@"%@ %@", string, name);
}

@end

