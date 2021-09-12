class Solution {
    func twoSum(array: [Int], target: Int) -> [Int] {
        
        var dictionary: [Int : Int] = [:]
        var resultArray : [Int] = []
        
        for (i, j) in array.enumerated() {
            if let index = dictionary[target - j]{
                resultArray.append(index)
                resultArray.append(i)
                return resultArray
            }
            dictionary[j] = i
            
        }
        return resultArray
    }
}

let example = Solution()
example.twoSum(array: [4,6,8,3,5,24,3,12], target: 13)


print("32323")




































