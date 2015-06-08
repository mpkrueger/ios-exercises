//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSString *favoriteDrink = characterDictionary[@"favorite drink"];
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favoriteDrinks = [NSMutableArray array];
    [charactersArray enumerateObjectsUsingBlock:^(id character, NSUInteger idx, BOOL *stop) {
        [favoriteDrinks addObject:character[@"favorite drink"]];
    }];
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *resultDictionary = [characterDictionary mutableCopy];
    NSString *quote = @"Engage!";
    [resultDictionary setObject:quote forKey:@"quote"];
    return resultDictionary;
}

@end
