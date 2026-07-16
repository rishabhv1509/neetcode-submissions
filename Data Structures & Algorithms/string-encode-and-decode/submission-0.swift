class Solution {

    func encode(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        var ans = ""
        for str in strs {
            ans += "\(str.count),"
        }
        ans += "#"
        for str in strs {
            ans += str
        }
        return ans
    }

    func decode(_ str: String) -> [String] {
        if str.isEmpty { return [] }
        let sArr = Array(str)
        var sizes: [Int] = []
        var res: [String] = []
        var i = 0

        while sArr[i] != "#" {
            let start = i
            while sArr[i] != "," {
                i += 1
            }
            sizes.append(Int(String(sArr[start..<i]))!)
            i += 1
        }

        i += 1
        for sz in sizes {
            let substring = String(sArr[i..<i+sz])
            res.append(substring)
            i += sz
        }
        return res
    }
}
