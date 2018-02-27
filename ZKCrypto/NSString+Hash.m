//
//  NSString+Hash.m
//  ZKCrypto
//
//  Created by zack on 2018/2/1.
//  Copyright © 2018年 zack. All rights reserved.
//

#import "NSString+Hash.h"
#import "CommonCrypto/CommonDigest.h"

@implementation NSString(Hash)
- (NSString *) SHA1Hash
{
    unsigned char hash[CC_SHA1_DIGEST_LENGTH];
    
    (void) CC_SHA1( [self cStringUsingEncoding:NSUTF8StringEncoding], (CC_LONG)[self length], hash );
    return [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",hash[0],hash[1],hash[2],hash[3],hash[4],hash[5],hash[6],hash[7],hash[8],hash[9],hash[10],hash[11],hash[12],hash[13],hash[14],hash[15],hash[16],hash[17],hash[18],hash[19]];
    
}
@end
