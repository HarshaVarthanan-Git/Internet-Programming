<?php
class Employee {
    private $name;
    private $age;
    private $salary;
    private $department;

    public function __construct($name, $age, $salary, $department) {
        $this->name = $name;
        $this->age = $age;
        $this->salary = $salary;
        $this->department = $department;
    }

    // Getter methods
    public function getName() {
        return $this->name;
    }

    public function getAge() {
        return $this->age;
    }

    public function getSalary() {
        return $this->salary;
    }

    public function getDepartment() {
        return $this->department;
    }

    // Setter methods
    public function setName($name) {
        $this->name = $name;
    }

    public function setAge($age) {
        $this->age = $age;
    }

    public function setSalary($salary) {
        $this->salary = $salary;
    }

    public function setDepartment($department) {
        $this->department = $department;
    }
}

$employee1 = new Employee("Harsha Varthanan", 30, 50000, "Sales");
echo "Employee Name: " . $employee1->getName() . "<br>";
echo "Employee Age: " . $employee1->getAge() . "<br>";
echo "Employee Salary: " . $employee1->getSalary() . "<br>";
echo "Employee Department: " . $employee1->getDepartment() . "<br>";

$employee1->setName("Patrick Bateman");
$employee1->setAge(35);
$employee1->setSalary(60000);
$employee1->setDepartment("Marketing");

echo "Updated Employee Name: " . $employee1->getName() . "<br>";
echo "Updated Employee Age: " . $employee1->getAge() . "<br>";
echo "Updated Employee Salary: " . $employee1->getSalary() . "<br>";
echo "Updated Employee Department: " . $employee1->getDepartment() . "<br>";

?>
