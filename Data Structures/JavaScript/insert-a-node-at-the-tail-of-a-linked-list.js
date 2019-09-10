function insert(head, data) {
    var newNode = new Node(data);
    if (head == null) {
        head =  newNode;
    } else {
        var currentNode = head;
        while (currentNode.next != null){
            currentNode =  currentNode.next;
        }
        currentNode.next = newNode;
    }
    return head;
}