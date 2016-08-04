//
//  SRT.h
//  SRT2VTT
//
//  Created by Aggelos Papageorgiou on 04/08/16.
//  Copyright © 2016 Aggelos Papageorgiou. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface SRT: NSObject

+ (instancetype)sharedConverter;

-(NSURL*) convertFileToVTT: (NSURL*)filePath;

@end