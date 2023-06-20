import 'dart:math';

class Employee {
  int? _id;
  String? _name;
  int? _age;
  String? _city;
  int? _salary;

  set id(int id) => this._id = id;
  int get id => this._id!;

  set name(String name) => this._name = name;
  String get name => this._name!;

  set age(int age) => this._age = age;
  int get age => this._age!;

  set city(String city) => this._city = city;
  String get city => this._city!;

  set salary(int salary) => this._salary = salary;
  int get salary => this._salary!;

  void empInfo() {
    print("$_name with id: $_id and has age $_age living in $_city with salary $_salary");
  }
}

void main() {
  // List<int>ids = [1,2,3,4,5,6,7,8,9,10];
  List<String> names = ["Ajay", "Ramesh", "Raj", "Ankush", "Chetan", "Om", "Amar", "Ranjit", "Shruti", "Samantha"];
  List<int> ages = [21, 34, 23, 26, 32, 27, 28, 24, 33, 36];
  List<String> city = ["Mumbai", "Indore", "Pune", "Hyderabad", "Surat", "Chennai", "Kanpur", "Raipur", "Udaipur", "Amritsar"];
  List<int> salary = [9000,12000,14000,25000,5000,8000,27000,3000,13000,33000];

  List<Map<String, dynamic>> data = [];

  for(int i = 0; i < 10; i++) {
    Employee obj = Employee();
    obj.id = i+1;
    obj.name = names[Random().nextInt(names.length)];
    obj.age = ages[Random().nextInt(ages.length)];
    obj.city = city[Random().nextInt(city.length)];
    obj.salary = salary[Random().nextInt(salary.length)];

    Map<String, dynamic> mp = {
      'id': obj.id,
      'name': obj.name,
      'age': obj.age,
      'city': obj.city,
      'salary': obj.salary
    };

    data.add(mp);
  }

  print("\n");
  
  print("Employees with age greater than 25: ");
  data.forEach((employee) {
    if(employee['age'] > 25) {
      print(employee);
    }
  });

  print("\n");

  print("Employess with salary between 10K and 20K: ");
  data.forEach((employee) {
    if(employee['salary'] >= 10000 && employee['salary'] <= 20000) {
      print(employee);
    }
  });
}