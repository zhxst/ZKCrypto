//
//  ZKCryptor.m
//  ZKCrypto
//
//  Created by zack on 2018/1/29.
//  Copyright © 2018年 zack. All rights reserved.
//

#import "ZKCryptor.h"
#import "NSData+CommonCrypto.h"
#import "RSAUtil.h"

@implementation ZKCryptor
+ (nullable NSData *)decryptAES128Data: (NSData *)data withKey:(id)key iv:(id)iv error:(NSError **)error {
    CCCryptorStatus status = kCCSuccess;
    NSData* result = [data decryptedDataUsingAlgorithm:kCCAlgorithmAES128 key:key initializationVector:iv options:kCCOptionPKCS7Padding error:&status];
    if (result != nil)
        return result;
    if (error != nil)
        *error = [NSError errorWithCCCryptorStatus:status];
    return nil;
}

+ (nullable NSData *)decryptRSAData:(NSData *)data publicKey:(NSString *)key{
    return [RSAUtil decryptData:data publicKey:key];
}

@end
