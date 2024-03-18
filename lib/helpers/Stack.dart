import 'Node.dart';

class Stack<T> {
  Node<T>? top;
  

  void push(value) {
    Node<T> node = Node(value);
    if(top != null) {
      node.setNext(top!);
    }
    top = node;
  }

  Node<T>? pop() {
    Node<T>? current;
    if(top?.getNext() != null) {
      current = top;
      top = top?.getNext();
    }
    return current;
  }

  Node<T>? peek() {
    return top;
  }

  bool get isEmpty => top == null;
}