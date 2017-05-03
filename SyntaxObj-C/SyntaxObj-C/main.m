//
//  main.m
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APSyntaxCreateObject.h"
#import "APSyntaxis.h"
#import "APSubclassCreateObject.h"

#import "APSyntaxCreateObject+APCategory.h"
#import "NSString+APExtensions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        APObjectCSyntax();
        APSyntaxCreateObject *syntax = [APSyntaxCreateObject syntax];
        
        APSyntaxCreateObject *subclass = [APSubclassCreateObject syntax];
        [syntax sayHi];
        [subclass sayHi];
        
        NSLog(@"\n------------------------------\n");
        
        [syntax sayHiFromCategory];
        [subclass sayHiFromCategory];
        
        // проверяем на наличие метода
        if ([subclass respondsToSelector:@selector(rapeMe)]) {
            [subclass rapeMe];
        }
        
        NSLog(@"\n------------------------------\n");
        
        [syntax print];
        [subclass print];
        
        [syntax overLoadedPrint];
        [subclass overLoadedPrint];
        
        NSLog(@"\n------------------------------\n");
        
        NSLog(@"\n%@", [NSString randomString]);
        NSLog(@"\n%@", [NSString randomStringWithLength:10]);
        NSLog(@"\n%@", [NSString randomStringWithLength:10 alphabet:[NSString randomString]]);
        NSLog(@"\n%@", [NSString alphabetWithUnicodeRange:NSMakeRange(1, 10)]);
    }
    
    return 0;
}
