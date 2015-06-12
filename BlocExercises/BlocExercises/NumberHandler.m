//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* gettin a flag here about loss of integer precision... */
    NSInteger doubledNumber = [number intValue] * 2;
    return [NSNumber numberWithInteger:doubledNumber];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger lowNumber = (number <= otherNumber) ? number : otherNumber;
    NSInteger highNumber = (number <= otherNumber) ? otherNumber : number;
    NSMutableArray *orderedArray= [[NSMutableArray alloc] init];
    while (lowNumber <= highNumber) {
        [orderedArray addObject:[NSNumber numberWithInteger:lowNumber]];
        lowNumber++;
    }

    return orderedArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSInteger i;
    NSInteger lowestNumber = [arrayOfNumbers[0] intValue];
    for (i = 0; i < arrayOfNumbers.count; i++) {
        lowestNumber = (lowestNumber <= [arrayOfNumbers[i] intValue]) ? lowestNumber : [arrayOfNumbers[i] intValue];
    }
    return lowestNumber;
}

@end
