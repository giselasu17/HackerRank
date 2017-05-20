function getNodeValue( head, position) {
    var temp = null;
    var previous = null;
    var currentNode = head;
    var cont = 0;
    while (currentNode != null) {
        temp = currentNode.next;
        currentNode.next = previous;
        previous = currentNode;
        currentNode = temp;
    }
    head =  previous;
    var current = head;
    while (cont != position) {
        current = current.next;
        cont ++;
    }
    return current.data;
}