//
//  APSyntaxCreateObject+APCategory.m
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 22.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APSyntaxCreateObject+APCategory.h"

// Category интерфейс над APSyntaxCreateObject
// расширение нашего класса новым методом. Метод реализуется тут же
@implementation APSyntaxCreateObject (APCategory)

- (void)sayHiFromCategory {
    [self sayHi];
    [self sayWithString:[self text] name:@"APCategory"];
}

@end
