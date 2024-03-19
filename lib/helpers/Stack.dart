import 'Node.dart';

class CustomStack<T> {
  Node<T> _top = Node<T>(null as T);

  @override
  String toString() {
    return 'Stack{top: ${_top.toString()} }';
  }

  void push(T value) {
    Node<T> node = Node<T>(value);
    node.setNext(_top);
    _top = node;
  }

  Node<T>? pop() {
    Node<T>? current;
    if (_top.getNext() != null) {
      current = _top;
      _top = _top.getNext();
    }
    return current;
  }

  Node<T>? peek() {
    return _top;
  }

  bool get isEmpty => _top == null;

  bool get isNotEmpty => _top != null;
}
