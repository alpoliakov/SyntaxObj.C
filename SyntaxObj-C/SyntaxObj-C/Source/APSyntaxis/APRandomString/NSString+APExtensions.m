//
//  NSString+APExtensions.m
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 03.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "NSString+APExtensions.h"

static const NSUInteger kNSStringDefaultRandomStringLength = 30;

@implementation NSString (APExtensions)

+ (id)alphanumericAlphabet {
    NSMutableString *result = [NSMutableString stringWithString:[self letterAlphabet]];
    [result appendString:[self numericAlphabet]];
    
    return [self stringWithString:result];
}

+ (id)numericAlphabet {
    return [self alphabetWithUnicodeRange:NSMakeRange('0', '9' - '0')];
}

+ (id)lowercaseletterAlphabet {
    return [self alphabetWithUnicodeRange:NSMakeRange('a', 'z' - 'a')];
}

+ (id)capitalizedLetterAlphabet {
    return [self alphabetWithUnicodeRange:NSMakeRange('A', 'Z' - 'A')];
}

+ (id)letterAlphabet {
    NSMutableString *result = [NSMutableString stringWithString:[self lowercaseletterAlphabet]];
    [result appendString:[self capitalizedLetterAlphabet]];
    
    return [self stringWithString:result];
}

+ (id)alphabetWithUnicodeRange:(NSRange)range {
    NSMutableString *result = [NSMutableString string];
    for (unichar character = range.location; character < NSMaxRange(range); character++) {
        [result appendFormat:@"%c", character];
    }
    
    return [self stringWithString:result];
}



+ (id)randomString {
    return [self randomStringWithLength:arc4random_uniform(kNSStringDefaultRandomStringLength)];
}

+ (id)randomStringWithLength:(NSUInteger)length {
    return [self randomStringWithLength:length alphabet:[self alphanumericAlphabet ]];
}

+ (id)randomStringWithLength:(NSUInteger)length alphabet:(NSString *)alphabet {
    NSMutableString *result = [NSMutableString stringWithCapacity:length];
    NSUInteger lengthAlphabet = [alphabet length];
    
        for (NSUInteger index = 0; index < length; index++) {
            unichar resultChar = [alphabet characterAtIndex:arc4random_uniform((u_int32_t)lengthAlphabet)];
            [result appendFormat:@"%c", resultChar];
        }
    
        return [self stringWithString:result];
}


@end
