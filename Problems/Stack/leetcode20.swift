// https://leetcode.com/problems/valid-parentheses/description/

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for char in s {
            switch char {
            case "(":
                stack.append(")")
            case "[":
                stack.append("]")
            case "{":
                stack.append("}")
            default:
                if stack.isEmpty || stack.removeLast() != char {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}
