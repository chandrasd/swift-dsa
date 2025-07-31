// https://leetcode.com/problems/valid-palindrome/description/

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var filteredChars = [Character]()
        
        for char in s {
            if char.isLetter || char.isNumber {
                filteredChars.append(Character(char.lowercased()))
            }
        }
        return filteredChars == filteredChars.reversed()
    }
}
