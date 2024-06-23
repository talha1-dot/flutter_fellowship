class Employee {
  String _name = '';
  int _age = 0;
   Job _job; // Using 'late' keyword to delay initialization until first use

  Employee(this._name, this._age, this._job);

  // Named constructor for creating Employee with job details
  Employee.withJobDetails(String name, int age, String designation, double salary, int id) {
    _name = name;
    _age = age;
    _job = Job(designation, salary, id); // Initializing _job here
  }

  String get name => _name;
  set name(String name) => _name = name;

  int get age => _age;
  set age(int age) => _age = age;

  Job get job => _job;
  set job(Job job) => _job = job;

  bool isSalaryGreaterThan50K() {
    return _job.salary > 50000;
  }

  void display() {
    print('Name: $_name');
    print('Age: $_age');
    print('Job Designation: ${_job.designation}');
    print('Job Salary: ${_job.salary}');
    print('Job ID: ${_job.id}');
  }
}
