void main() {
  //print('Hello world!');

  // [type][name]=[value]
  int age = 24;
  int? age2 = 24;

  // compilare => run

  const bool isAwesome = true; // compiledtime constants
  final double weight = 72; // runtime constants

  if (isAwesome) {
    print('good');
  } else {
    print(
        'not good'); // nu se ruleaza niciodata datorita lui isAwesome constante
  }

  String name = 'Big Boss';

  List list = [age, name]; // [0], [1]
  print(list);
  Set set = {age, age, name, age}; // -> length == 2
  print(set);
  Map map = {'age': age}; // ['age']
  print(map);

  //

  print(list.length);

  /*
  list.map((e) => null);
  list.expand((element) => null);
  list.contains(element);
  list.toList();
   */

  List<int> ints = [1, 2, 3, 4];

  // [return type][name][params]
  print(ints.map((int value) {
    //return value.toString();
    return '$value ani';
  }));

  final Iterable<String> data = ints.map((int value) {
    return '$value ani';
  });
  print(data);

  final Set<String> data2 = ints //
    .map((int value) => '$value ani')
    .toSet();
  print(data2);

  final List<List<int>> ints2 = [
    [1, 2, 3, 4],
    [5, 6, 7, 8]
  ];
  final data3 = ints2 //
    .expand((List<int> value) => value)
    .map((int value) => '$value ani')
    .toList();
  print(data3);


  final data4 = ['Catalin', 'Adi', 'Razvan'];
  final data5 = data4
    .expand((String value) => ['a', 'b', 'c', value])
    .toList();
  print(data5);


  final isThere = data5.contains('Razvan');
  print(isThere);
}
