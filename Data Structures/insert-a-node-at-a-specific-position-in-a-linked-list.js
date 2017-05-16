function insert(head, data, position) {
    var newNode = new Node(data);
    
    if (position == 0) {
        newNode.next = head;
        return newNode; 
    }
    
    var count = 0;
    var previous = null;
    var currentNode = head;
    while (position != count) {
        previous = currentNode;
        currentNode = currentNode.next;
        count ++;
    }
    newNode.next = previous.next;
    previous.next  = newNode;
    return head;
}
