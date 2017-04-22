//
//  APsyntaxProtocol.h
//  SyntaxObj-C
//
//  Created by Aleksandr Poliakov on 22.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol APsyntaxProtocol <NSObject>

- (void)sayHiFromProtocol;

@required
- (void)requiredSayHiProtocol;

@optional
- (void)optionalSayHiFromProtocol;

@end
