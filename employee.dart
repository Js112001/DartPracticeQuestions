import 'dart:math';

class Employee {
  String? name;
  int? age;
  String? city;
  int? salary;

  Employee(String name, int age, String city, int salary) {
    this.name = name;
    this.age = age;
    this.city = city;
    this.salary = salary;
  }

  void display() {
    print("Name: ${this.name}, Age: ${this.age}, City: ${this.city}, Salary: ${this.salary}");
  }
}

void main() {
  // List<int>ids = [1,2,3,4,5,6,7,8,9,10];
  List<String> names = ["Ajay", "Ramesh", "Raj", "Ankush", "Chetan", "Om", "Amar", "Ranjit", "Shruti", "Samantha"];
  List<int> ages = [21, 34, 23, 26, 32, 27, 28, 24, 33, 36];
  List<String> city = ["Mumbai", "Indore", "Pune", "Hyderabad", "Surat", "Chennai", "Kanpur", "Raipur", "Udaipur", "Amritsar"];
  List<int> salary = [9000,12000,14000,25000,5000,8000,27000,3000,13000,33000];

  Map<String, dynamic>data = {};

  for(int i = 0; i < 10; i++) {
    Employee obj = Employee(names[i], ages[i], city[i], salary[i]);

    data.addAll({
      "xyz${i+1}" : obj,
    });
  }

  print("\n");
  data.forEach((id, employeeObj) {
    if(employeeObj.age > 25 && employeeObj.salary >= 10000 && employeeObj.salary <= 20000) {
        employeeObj.display();
    }
  });

}
