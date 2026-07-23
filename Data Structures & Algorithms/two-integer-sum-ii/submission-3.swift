class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {

        for i in 0..<numbers.count - 1 {
            let current = numbers[i]
            let target = target - current
            var left = i + 1
            var right = numbers.count - 1
            while left <= right {
                let mid = left + (right - left) / 2
                
                if numbers[mid] == target {
                    
                    return [i + 1, mid + 1]
                } else if numbers[mid] < target {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            } 
        }
        return []
    }
}
