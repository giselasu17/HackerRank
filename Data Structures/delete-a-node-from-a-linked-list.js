function deleteNode(head, position) {
    var count = 0;
    var previous = null;
    var currentNode = head;
    if (position == 0) {
        head = currentNode.next;
    } else { 
        while (count != position) {
            previous = currentNode;
            currentNode = currentNode.next;
            count ++;
        }
        previous.next = currentNode.next;
    }
    return head;
}