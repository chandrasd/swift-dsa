// https://leetcode.com/problems/binary-search/description/

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var lo = 0
        var hi = nums.count - 1
        while lo <= hi {
            let mid = (hi + lo) / 2
            if nums[mid] == target {
                return mid
            }
            if nums[mid] > target {
                hi = mid - 1
            } else {
                lo = mid + 1
            }
        }
        return -1
    }
}
