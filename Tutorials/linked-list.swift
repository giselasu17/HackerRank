func insert(head: Node!, data: Int!) -> Node {
    // Enter your code here.
    let newNode = Node(data: data)
    if head == nil {
       return newNode
    }
    var n: Node! = head
    while n.next != nil {
       n = n.next
    }
    n.next = newNode
    return head
}