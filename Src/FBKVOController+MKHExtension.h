//
//  FBKVOController+MKHExtension.h
//  FBKVOController
//
//  Created by Maxim Khatskevich on 20/05/15.
//  Copyright (c) 2015 Kimon Tsinteris. All rights reserved.
//

#import "FBKVOController.h"

@interface FBKVOController (MKHExtension)

- (void)bindWithObject:(id)object
               keyPath:(SEL)keyPath
               handler:(void(^)(id newValue))handler;

@end
