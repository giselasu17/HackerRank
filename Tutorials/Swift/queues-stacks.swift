struct Stack {
    var elements = [Character]()
    mutating func pushStack(_ c: Character) {
        elements.append(c)
    }
    mutating func popStack() -> Character {
        return elements.removeLast()
    }
}
struct Queue {
    var elements = [Character]()
    mutating func pushQueue(_ c: Character) {
        elements.append(c)
    }
    mutating func popQueue() -> Character {
        return elements.remove(at:0)
    }
}
class Solution {
    var stack: Stack
    var queue: Queue
    init() {
        self.stack = Stack()
        self.queue = Queue()
    } 
    func pushCharacter(c: Character) {
		stack.pushStack(c)
	}
    func popCharacter() -> Character {
	    return stack.popStack()
	}
    func enqueueCharacter(c: Character) {
        queue.pushQueue(c)
	}
    func dequeueCharacter() -> Character {
		return queue.popQueue()
	}
}