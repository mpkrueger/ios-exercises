import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    return "My favorite cheese is \(cheese)"
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
    numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"
numberDictionary

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively

for i in 1...10 {
    println(i)
}


// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..<11 {
    println(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]



let characters = [worf, picard]
picard["favorite drink"]



func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    
    // Here I initiated the favDrinks array with a string - but how would I initiate an empty array? I kept getting a type error
    var favDrinks = ["tea"]
    for char in characters {
        favDrinks.append(char["favorite drink"]!)
    }
    return favDrinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
func stringsArrayIntoSemicolonString(strings:Array<String>) -> String {
    var expectedOutput = ""
    for item in strings {
        if item == strings[0] {
            expectedOutput = item
        } else {
            expectedOutput = expectedOutput + ";" + item
        }
    }
    return expectedOutput
}

stringsArrayIntoSemicolonString(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

var cerealsSorted = sorted(cerealArray, {cereal1, cereal2 in cereal1 < cereal2})
var cerealsSorted1 = sorted(cerealArray, <)