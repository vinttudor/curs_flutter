int squareMeterPrice = 1000;
int roomNumberPrice = 100;

void main() {
  final redHouse = House(1, 'Iuliu Maniu', 'red', false, 25);
  redHouse.color = 'yellow';
  print(redHouse.color);
  print(redHouse.calculatePrice());
  final blueHouse = House(2, 'Iuliu Maniu', 'blue', false, 45);
  print(blueHouse.color);
  print(blueHouse.calculatePrice());

  print(squareMeterPrice);


  testFunction('name', 10);
  testFunction2('name');
  testFunction3(age: 24, name: 'Razvan');
  testFunction4(name: 'Adi');
}

// [return type][name][parameters] - method
// [name][parameters] - consructor
class House {
  House(this.roomNumber, this.address, this.color, this.hasGarage, this.area);

  int roomNumber;
  String address;
  String color;
  bool hasGarage;
  //bool _hasGarage; _ create private property, protected doesn't exist in dart
  double area;


  double calculatePrice() {
    return area * squareMeterPrice +  roomNumber * roomNumberPrice;
  }
}

// [return type][name][parameters]
// 1. positional required
void testFunction(String name, int age) {
  print('testFunction: $name $age');
}

// 2. positional optional
void testFunction2([String? name, int? age = 16]) {
  print('testFunction: $name $age');
}

// 3. name optional
void testFunction3({String? name, int? age = 16}) {
  print('testFunction: $name $age');
}

// 4. name required
void testFunction4({required String name, int? age}) {
  print('testFunction: $name $age');
}
