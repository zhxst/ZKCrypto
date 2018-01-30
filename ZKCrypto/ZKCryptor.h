//
//  ZKCryptor.h
//  ZKCrypto
//
//  Created by zack on 2018/1/29.
//  Copyright © 2018年 zack. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface ZKCryptor : NSObject

+ (nullable NSData *)decryptAES128Data: (NSData *)data withKey:(id)key iv:(id)iv error:(NSError **)error;
+ (nullable NSData *)decryptRSAData:(NSData *)data publicKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
