/// Invoking a non-default superclass constructor::
/// By default, a constructor in a subclass calls the superclass unnamed,
/// no-argument constructor. The superclass constructor is called at the
/// beginning of the constructor body. If an initializer list is also being
/// used, it executes before the superclass is called.
///
/// In summary, the order of execution is as follows:
/// [1] initializer list
/// [2] superclass no-arg constructor
/// [3] main class no-arg constructor
///
/// If the superclass doesn't have an unnamed, no-argument constructor,
/// then you must manually call one of the constructors in the superclass.
/// Specify the superclass constructor after a colon (:), just before the
/// constructor body (if any)
class Staff {
  String? firstName;

  Staff.fromJson(Map data) {
    print('in Staff');
  }
}

class Employee extends Staff {
  // Staff does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

void main() {
  var employee = Employee.fromJson({"": ""});
  print(employee);
  // Prints:
  // in Staff
  // in Employee
  // Instance of 'Employee'
}

/// Because the arguments to the superclass constructor are evaluated before
/// invoking the constructor, an argument can be an expression such
/// a function call
class Employer extends Staff {
  Employer() : super.fromJson({});
}

/// Warning: Arguments to the superclass constructor don't have access to this.
/// For example, arguments can call static methods but not instance methods.
