class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var sArray = Array(s)
        var start = 0
        var end = sArray.count - 1
        while start < end {
            while start < end, !isAlphaNum(sArray[start]) {
                start += 1
            }
            while end > start, !isAlphaNum(sArray[end]) {
                end -= 1
            }
            if sArray[start].lowercased() != sArray[end].lowercased() {
                return false
            }
            start += 1
            end -= 1
        }
        return true
    }

    func isAlphaNum(_ char: Character) -> Bool {
        return char.isLetter || char.isNumber
    }
}
