typedef TapMe = void Function(); //clasa abstracta doar pentru o functie, un fel de interfata

void main() {
  //final Dog dog = Dog(4);
  const Animal dog = Dog(4);
  //const dynamic dog = Dog(4);
  //const Object dog = Dog(4);

  // definire de scop (regiune)
  {
    var dog = Dog(5);
    dog.saySomething();
  }

  const dog2 = Dog(5);
  print(dog == dog2);

  final Animal cat = Cat(4);

  print(dog.legsCount);
  dog.eat();
  cat.eat();

  //dog.bark();
  (dog as Dog).bark(); // ob Dog e de tip Dog nu Animal care nu contine metoda bark si atunci facem cast
  //(cat as Dog).bark(); primes eroare la rularem, n-am bark in Cat

  const doggo = Dog.base();
  doggo.eat();

  cat.saySomething();
  doggo.saySomething();

  // doggo.amGuitar();

  print(dog);
}

// class Cat extends Dog {
//   Cat(this.legsCount) : super(legsCount);
class Cat extends Animal {
  Cat(this.legsCount);

  @override
  final int legsCount;

  @override
  void eat() {
    print('soarec');
  }
}

class Dog extends Animal implements Piano, Guitar {
//class Dog extends Animal with mPiano, mGuitar {
  const Dog(this.legsCount); //default sau unnanmed
  const Dog.base() : legsCount = 4; //named
  //Dog(this._legsCount);



  //int _legsCount;

  @override
  final int legsCount;
  //int get legsCount => _legsCount; //getter

  void bark() {
    print('ham ham');
  }

  @override
  void eat() {
    print('I\'m eating');
  }

  // suprascrie toString din Object
  @override
  String toString() {
    return 'Dog:$legsCount';
  }

  // suprascrie =(equal) din Object
  @override
  bool operator ==(Object other) {
    if (other is Dog) {
      return other.legsCount == legsCount;
    }

    return false;
  }
}

abstract class Animal {
  const Animal();

  int get legsCount;
  //late int legsCount;

  // [return type][name][parameters]
  void eat();

  void saySomething() {
    print('I have $legsCount legs');
  }
}

class Piano {}

class Guitar {}

mixin mPiano {
  void amPiano() {}
}

mixin mGuitar {
  void amGuitar() {}
}