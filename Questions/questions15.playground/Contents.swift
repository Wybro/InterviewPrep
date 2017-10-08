//: Playground - noun: a place where people can play

import UIKit


//BUD (Bottleneck, Unnecessary, Duplicate)
// Asymptotically better: Better than run time by a constant
// Time Complexity: O(nlogn) where nlogn is the merge sort sorted()
// Space Complexity: O(n) where n = length of word

func pangram(word: String, alphabet: [Character]) -> Bool {
    var chars: Set<Character> = []
    for char in word.characters {
        chars.update(with: char)
    }
    let uniqueWord = String(chars).sorted()
    
    for (index,char) in uniqueWord.enumerated() {
        if alphabet[index] != char {
            return false
        }
    }
    return true
}

let alpha: [Character] = ["a","b","c","d","e"]
let word = "cat"
let word2 = "dbace"

print(pangram(word: word, alphabet: alpha))
print(pangram(word: word2, alphabet: alpha))


