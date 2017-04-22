//
//  APSyntaxCreateObject.h
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class APSyntaxCreateObject;


// использование полей {} необходимо избегать, приведены в качестве примера
// по дефолту, поля - @protected

@interface APSyntaxCreateObject : NSObject <NSObject>{
    @public
    NSObject *_object;
    
    @private
    NSObject *_privateObject;
    
    @protected
    NSObject *_protectedObject;
}

// @property способ создать и геттер и сеттер (в зависимости от передаваемых параметров)
@property (nonatomic, retain)   NSObject    *object;
// это равносильно
- (void)setObject:(NSObject *)object;
- (NSObject *)object;

@property (atomic, copy)    NSObject    *atomicCopyObject;
@property (nonatomic, assign, readonly) NSUInteger integerValue;
@property (nonatomic, assign, readwrite, getter=isReady, setter=setIsReady:)  BOOL    ready;

// + методы самого класса
+ (instancetype)syntax;

// - методы объекта класса
- (void)sayHi;
- (id)text; // (NSString *)text;

// метод с одним параметром
// sayWithString - селектор, (NSString *) - тип принимаемого параметра, string - имя параметра
- (void)sayWithString:(NSString *)string;

// метод с двумя параметрами
// name - продолжение селектора
- (void)sayWithString:(NSString *)string name:(NSString *)name;

@end






