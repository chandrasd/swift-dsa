// https://leetcode.com/problems/two-sum/description/
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for (index, num) in nums.enumerated() {
            if let complementIndex = map[target - num] {
                return [complementIndex, index]
            }
            map[num] = index
        }
        return []
    }
}
