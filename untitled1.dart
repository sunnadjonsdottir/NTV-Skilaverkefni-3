import 'dart:io';

class GroceryList {
  List<String> items = [];

  void addItem(String item) {
    items.add(item);
    print('$item added to the list.');
  }

  void viewList() {
    print('Grocery List:');
    items.isEmpty
        ? print('The list is empty, don\'t forget to add to it.')
        : items.forEach((item) => print('- $item'));
  }
}

void main() {
  var groceryList = GroceryList();

  while (true) {
    print('\nMenu:');
    print('1. Add an item to the list');
    print('2. View the list');
    print('3. End the program');
    stdout.write('Enter your choice (1, 2, or 3): ');
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter the item name: ');
        var itemName = stdin.readLineSync();
        groceryList.addItem(itemName!);
        break;
      case '2':
        groceryList.viewList();
        break;
      case '3':
        print('Ending the program. Enjoy your shopping and remember your list!🥦');
        return;
      default:
        print('Oops! Please choose 1, 2 or 3!');
        break;
    }
  }
}
