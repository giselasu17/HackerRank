function insert(head, data) {
    var newNode = new Node(data);
    if (head == null) {
        return newNode;
    } else {
        newNode.next = head;
        head = newNode;
    }
    return head;
}