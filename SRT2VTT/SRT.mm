//
//  NSObject+SRT2VTT.m
//  SRT2VTT
//
//  Created by Aggelos Papageorgiou on 03/08/16.
//  Copyright © 2016 Aggelos Papageorgiou. All rights reserved.
//

#import "SRT.h"
#import "Converter.h"
#include "CmdLine.h"

@implementation  SRT

+ (instancetype)sharedConverter {
    static dispatch_once_t onceToken;
    static SRT *sharedConverter;
    dispatch_once(&onceToken, ^{
        sharedConverter = [[SRT alloc] init];
    });
    return sharedConverter;
}

- (instancetype)init {
    self = [super init];
    return self;
}


-(NSURL*) convertFileToVTT: (NSURL*)filePath{
    try{
        // Convert
        
        Converter converter(0, [[filePath URLByDeletingLastPathComponent] fileSystemRepresentation] , true, false);
        NSFileManager* fileManager =[[NSFileManager alloc]init];
        NSString* VTTfile = [[filePath lastPathComponent] stringByReplacingOccurrencesOfString:@"srt" withString:@"vtt"];
        [fileManager createFileAtPath:VTTfile contents:nil attributes:nil];
        int retCode = converter.convertFile([[filePath relativePath] fileSystemRepresentation]);
        NSURL* outputURL = [filePath URLByDeletingLastPathComponent];
        outputURL = [outputURL URLByAppendingPathComponent:VTTfile];
        return outputURL;
        
    }catch(TCLAP::ArgException &e){
        NSLog(@"unable to convert to vtt %s",e.what());
    }
    
    return [NSURL URLWithString:@"/"];
}

@end
