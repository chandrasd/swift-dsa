// https://leetcode.com/problems/best-time-to-buy-and-sell-stock

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var result = 0
        
        for price in prices {
            minPrice = min(price, minPrice)
            result = max(result, price - minPrice)
        }
        
        return result
    }
}