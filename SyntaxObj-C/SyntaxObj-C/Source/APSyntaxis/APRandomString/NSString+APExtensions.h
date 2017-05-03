//
//  NSString+APExtensions.h
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 03.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (APExtensions)

// English
+ (id)alphanumericAlphabet;

// Arabian
+ (id)numericAlphabet;

// English
+ (id)lowercaseletterAlphabet;

// English
+ (id)capitalizedLetterAlphabet;

// English
+ (id)letterAlphabet;

+ (id)alphabetWithUnicodeRange:(NSRange)range;

// return strings with English alphanumerics characters of random length
// of up to 30 with the class of receiver:

+ (id)randomString;

// return strings with English alphanumerics characters of random length with the class of receiver:

+ (id)randomStringWithLength:(NSUInteger)length;

// return strings with characters from alphabet of length with the class of receiver:

+ (id)randomStringWithLength:(NSUInteger)length alphabet:(NSString *)alphabet;

@end
