function insert(head, data, position) {
    var newNode = new Node(data);
    
    if (position == 0) {
        newNode.next = head;
        return newNode; 
    }
    
    var count = 0;
    var currentNode = head;
    while (position -1 != count) {
        currentNode = currentNode.next;
        count ++;
    }
    newNode.next = currentNode.next;
    currentNode.next  = newNode;
    return head;
}
