//
//  APSyntaxCreateObject.h
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

// использование полей {} избегать, приведены в качестве примера
// по дефолту, поля - @protected

@interface APSyntaxCreateObject : NSObject {
    @public
    NSObject *_object;
    
    @private
    NSObject *_privateObject;
    
    @protected
    NSObject *_protectedObject;
}

-(void)sayHi;
-(id)text; // (NSString *)text;

// метод с одним параметром
// sayWithString - селектор, (NSString *) - тип принимаемого параметра, string - имя параметра
-(void)sayWithString:(NSString *)string;

// метод с двумя параметрами
// name - продолжение селектора
-(void)sayWithString:(NSString *)string name:(NSString *)name;

@end
