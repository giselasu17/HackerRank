func removeDuplicates(head: Node?) -> Node? {
        if head == nil {
            return head
        }
        var p: Node? = head
        while p?.next != nil {
           if p?.data == (p?.next)!.data {
                p?.next = (p?.next)!.next
           }
           else {
                 p = p?.next
           }
        }
        return head
}