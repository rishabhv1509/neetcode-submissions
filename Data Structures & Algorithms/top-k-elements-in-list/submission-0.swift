class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freqTable = [Int: Int]()
        for num in nums {
            freqTable[num, default: 0] += 1
        }
        var arr = [(Int,Int)]()
        for (num,count) in freqTable {
            arr.append((count,num))
        }
        arr.sort { $0.0 < $1.0 }

        var res = [Int]()
        while res.count < k {
            res.append(arr.removeLast().1)
        }
        return res
    }
}
