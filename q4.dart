import 'dart:math';

class RandomBox<T> {
  List<T> _items = [];

  // Method to add an item to the box
  void add(T item) {
    _items.add(item);
  }

  // Method to check if the box is empty
  bool isEmpty() {
    return _items.isEmpty;
  }

  // Method to draw an item randomly from the box
  T? drawItem() {
    if (isEmpty()) {
      print('Box is empty.');
      return null;
    }
    Random random = Random();
    int index = random.nextInt(_items.length);
    return _items[index];
  }
}

void main() {
  // Testing the RandomBox class with different types
  RandomBox<String> stringBox = RandomBox<String>();
  stringBox.add('Apple');
  stringBox.add('Banana');
  stringBox.add('Orange');

  print('Drawing from stringBox:');
  for (int i = 0; i < 5; i++) {
    var item = stringBox.drawItem();
    if (item != null) {
      print('Drawn item: $item');
    }
  }

  RandomBox<int> intBox = RandomBox<int>();
  intBox.add(10);
  intBox.add(20);
  intBox.add(30);

  print('\nDrawing from intBox:');
  for (int i = 0; i < 5; i++) {
    var item = intBox.drawItem();
    if (item != null) {
      print('Drawn item: $item');
    }
  }

  // Testing isEmpty method
  print('\nChecking if stringBox is empty: ${stringBox.isEmpty()}');
  print('Checking if intBox is empty: ${intBox.isEmpty()}');
}
