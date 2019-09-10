/*
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
void Print(Node *head)
{
    struct Node *currentNode = head;
    while (currentNode != NULL) {
        printf("%d \n", currentNode->data);
        currentNode = currentNode->next;
    }
}