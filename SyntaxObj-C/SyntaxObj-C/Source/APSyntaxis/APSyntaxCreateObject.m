//
//  APSyntaxCreateObject.m
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APSyntaxCreateObject.h"
#import "APSyntaxCreateObject+APCategory.h"

@interface APSyntaxCreateObject ()
@property (nonatomic, assign) NSUInteger integerValue;
- (void)sayHiFromExtension;

@end

@implementation APSyntaxCreateObject;

@dynamic array;

#pragma mark -
#pragma Class Methods

// + методы самого класса
+ (instancetype)syntax {
    // self указатель получателя в данном случае указатель на класс
    return [[[self alloc] init] autorelease];
}

#pragma mark -
#pragma Initializations and Deallocations

- (void)dealloc {
    self.atomicCopyObject = nil;
    self.object = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.integerValue = 1;
    }
    
    return self;
}

#pragma mark -
#pragma Accessors Methods

- (NSArray *)array {
    return [[[[[NSMutableArray alloc] initWithObjects:[[NSObject new] autorelease], nil]autorelease]copy] autorelease];
}

#pragma mark -
#pragma Public Methods

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
    NSLog(@"\n%@ %@", string, name);
}

#pragma mark -
#pragma Privat Methods

- (void)sayHiFromExtension {

}

- (void)overLoadedPrint {
    NSLog(@"\n%@ %s line = %d", self, __FILE__, __LINE__);
}

- (void)print {
    NSLog(@"\n%@ %s line = %d", self, __FILE__, __LINE__);
}

@end

