//
//  APSyntaxCreateObject.h
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class APSyntaxCreateObject;
@protocol APsyntaxProtocol;


// использование полей {} необходимо избегать, приведены в качестве примера
// по дефолту, поля - @protected

@interface APSyntaxCreateObject : NSObject <NSObject>{
    @public
    NSObject *_publicObject;
    
    @private
    NSObject *_privateObject;
    
    @protected
    NSObject *_protectedObject;
}

// @property способ создать и геттер и сеттер (в зависимости от передаваемых параметров)
@property (nonatomic, retain)   id<APsyntaxProtocol> object;
// это равносильно
- (void)setObject:(id<APsyntaxProtocol>)object;
- (id<APsyntaxProtocol>)object;

@property (atomic, copy)                                                  NSObject    *atomicCopyObject;
@property (nonatomic, assign, readonly)                                   NSUInteger  integerValue;
@property (nonatomic, assign, readwrite, getter=isReady, setter=setIsReady:)  BOOL    ready;
@property (nonatomic, readonly)                                            NSArray     *array;

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

- (void)overLoadedPrint;
- (void)print;

@end
