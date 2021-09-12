func removeDuplicates(array: inout [Int]) -> Int {
    var last: Int?
    var index: Int = 0
    while index < array.count {
        if array[index] == last {
            array.remove(at: index)
        } else {
            last = array[index]
            index += 1
        }
    }
    return array.count
}

var array = [0, 0, 1, 1, 3, 4, 4, 4, 5, 5, 8]
removeDuplicates(array: &array)
print(array)





