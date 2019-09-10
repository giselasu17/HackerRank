function compareLinkedLists( headA, headB) {
    var currentA = headA;
    var currentB = headB;
    if (headA == null || headB == null) {   
        return 0;
    }
    while (currentA != null && currentB != null && currentA.data == currentB.data) { 
         currentA = currentA.next;
         currentB =  currentB.next;
    }
    return Number(currentA == currentB);
}