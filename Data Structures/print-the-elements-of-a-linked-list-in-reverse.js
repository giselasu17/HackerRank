function reversePrint(head) {
    if (head != null) {
        var temp = null;
        var previous = null;
        var currentNode = head;
        while (currentNode != null) {
            temp =  currentNode.next;
            currentNode.next = previous;
            previous = currentNode;
            currentNode =  temp;
        }
        head = previous;
        var current = head;
        while (current != null) {
            console.log(current.data);
            current = current.next;
        }
        return head;
    }
}