func reverseString(string: inout [Character]) {
    var first = 0
    var last = string.count - 1
    while first < last {
        (string[first], string[last]) = (string[last], string[first])
//        let temp = string[first]
//        string[first] = string[last]
//        string[last] = temp
        first += 1
        last -= 1
    }
}

var charArray: [Character] = ["G","o"," ","1","2"]
reverseString(string: &charArray)





