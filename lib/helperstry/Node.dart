class Node<T> {
  T _data;
  Node<T>? _next;

  Node(this._data, [this._next]);

  Nodo(T data) {
    _data = data;
    _next = null;
  }

  T getData() {
    return _data;
  }

  setNext(Node<T> node) {
    _next = node;
  }

  getNext() {
    return _next;
  }

  @override
  String toString() {
    return 'Node{value: $_data, next: $_next}';
  }
}
