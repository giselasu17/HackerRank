function reverseLinkedList(head) {
    if (head == null) {
        return null;
    } else {
        var temp = null;
        var previous = null;
        var currentNode = head;
        while (currentNode != null) {
            temp = currentNode.next;
            currentNode.next = previous;
            previous = currentNode;
            currentNode = temp;
        }
        head = previous;
    }
    return head;
}