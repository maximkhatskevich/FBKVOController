//
//  FBKVOController+MKHExtension.m
//  FBKVOController
//
//  Created by Maxim Khatskevich on 20/05/15.
//  Copyright (c) 2015 Kimon Tsinteris. All rights reserved.
//

#import "FBKVOController+MKHExtension.h"

@implementation FBKVOController (MKHExtension)

- (void)bindWithObject:(id)object
               keyPath:(SEL)keyPath
               handler:(void(^)(id oldValue, id newValue))handler
{
    if (handler)
    {
        [self
         observe:object
         keyPath:NSStringFromSelector(keyPath)
         options:NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew
         block:^(id observer, id object, NSDictionary *change) {
             
             id oldValue = change[NSKeyValueChangeOldKey];
             id newValue = change[NSKeyValueChangeNewKey];
             
             //===
             
             BOOL shouldProceed = YES;
             
             if ([oldValue isKindOfClass:NSObject.class] &&
                 [newValue isKindOfClass:NSObject.class])
             {
                 shouldProceed = ![(NSObject *)oldValue isEqual:newValue];
             }
             
             //===
             
             if (shouldProceed)
             {
                 handler(([oldValue isKindOfClass:NSNull.class] ? nil : oldValue),
                         ([newValue isKindOfClass:NSNull.class] ? nil : newValue));
             }
         }];
    }
}

@end
