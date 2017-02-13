struct Queue {
    var elements = [Node?]()
    var isEmpty: Bool {
        return elements.isEmpty
    }
    mutating func pushQueue(_ data: Node?) {
        elements.append(data)
    }
    mutating func popQueue() -> Node? {
        return elements.remove(at:0)
    }
}

func levelOrder(root: Node?) {
    var queue: Queue
    var element: Node?
    if root != nil {
        queue = Queue()
        queue.pushQueue(root)
     
        while !queue.isEmpty {
            element = queue.popQueue()
            print(element!.data, terminator: " ")
            
            if element?.left != nil {
               queue.pushQueue(element?.left)
            }
            if element?.right != nil {
               queue.pushQueue(element?.right)
            }
        }
    }
}