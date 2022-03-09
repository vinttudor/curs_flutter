int squareMeterPrice = 1000;
int roomNumberPrice = 100;

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

