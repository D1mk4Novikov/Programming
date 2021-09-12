// Linked List
// 3 -> 5 -> 2 -> nil

class ListNode {
    var value: Int
    var next: ListNode?
    init(value: Int, next: ListNode?) {
        self.value = value
        self.next = next
    }
}

let thirdNode = ListNode(value: 3, next: nil)
let secondNode = ListNode(value: 2, next: thirdNode)
let oneNode = ListNode(value: 1, next: secondNode)

func printList(head: ListNode?) {
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? "-1")
        currentNode = currentNode?.next
    }
}

//printList(head: oneNode)
func reverseList(head: ListNode?) -> ListNode? {
    var currentNode = head
    var prev: ListNode?
    var next: ListNode?
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = next
    }
    
// можете раскомментировать данный блок, чтобы понять последовательность действий
//    while currentNode != nil {
//        print("currentNode?.value: \(currentNode?.value)")
//        printList(head: currentNode)
//        next = currentNode?.next
//        print("next: \(next?.value)")
//        printList(head: next)
//        currentNode?.next = prev
//        print("currentNode?.next: \(currentNode?.next?.value)")
//        printList(head: currentNode?.next)
//        prev = currentNode
//        print("prev: \(prev?.value)")
//        printList(head: prev)
//        currentNode = next
//        print("currentNode: \(currentNode?.value)")
//        printList(head: currentNode)
//        print("-----------")
//    }
    
    return prev
}


let list = reverseList(head: oneNode)
//printList(head: list)
