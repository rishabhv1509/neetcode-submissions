class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var ans = [String:[String]]()
        for str in strs {
            let sortedString = String(str.sorted())
            ans[sortedString, default:[]].append(str)
        }
        return Array(ans.values)
    }
}
