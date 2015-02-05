//
//  PGPSignature.h
//  ObjectivePGP
//
//  Created by Marcin Krzyzanowski on 30/01/15.
//  Copyright (c) 2015 Marcin Krzyżanowski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PGPSignatureSubpacket.h"
#import "PGPSignaturePacket.h"
#import "PGPKeyID.h"

@interface PGPSignature : NSObject
@property (assign) PGPSignatureType type;
@property (copy) NSDate *creationDate;
@property (copy) PGPKeyID *issuerKeyID;
@property (strong, readonly) PGPSignaturePacket *packet;

- (instancetype)initWithPacket:(PGPSignaturePacket *)packet NS_DESIGNATED_INITIALIZER;

@end