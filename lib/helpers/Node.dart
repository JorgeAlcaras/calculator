class Node<T> {
  T? data;
  Node<T>? _next;

  Node(this.data, [this._next]);

  getData() {
    return data;
  }

  setNext(Node<T> node) {
    _next = node;
  }

  getNext() {
    return _next;
  }

  @override
  String toString() {
    return 'Node{value: $data, next: $_next}';
  }
}