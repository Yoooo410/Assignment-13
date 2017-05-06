//
//  main.m
//  Assignment#13
//
//  Created by yoshitokomiya on 2017-05-05.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSArray* values = [inputString componentsSeparatedByString:@" "];
        
        for (int i = 0; i < values.count; i++) {
            NSString *value = [values objectAtIndex:i];
            
            NSString *valueF = [value substringFromIndex:i];
            NSString *valueB = [value substringToIndex:i];
            
            NSLog(@"%@%@ay", valueF, valueB);
        }
        
    }
    return 0;
}
