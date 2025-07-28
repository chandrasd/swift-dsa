// https://leetcode.com/problems/group-anagrams/description/

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        // Technically not possible to have a Dictionary used as key inside of another Dictionary since it does not necessarily conform to hashable
        var groups = [[Character: Int]: [String]]()

        for word in strs {
            var count = [Character: Int]()
            for char in word {
                count[char, default: 0] += 1
            }

            groups[count, default: []].append(word)
        }

        return Array(groups.values)
    }
}
