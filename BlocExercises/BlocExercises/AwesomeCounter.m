//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *counter = @"";
    NSInteger lowNumber = (number < otherNumber) ? number : otherNumber;
    NSInteger highNumber = (number > otherNumber) ? number : otherNumber;
    while (lowNumber <= highNumber) {
        counter = [counter stringByAppendingString:[NSString stringWithFormat:@"%ld", lowNumber]];
        lowNumber++;
    }
    return counter;
}

@end
