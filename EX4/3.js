class ComplexNumber {
  constructor(real, imaginary) {
    this.real = real;
    this.imaginary = imaginary;
  }
  add(other) {
    return new ComplexNumber(this.real + other.real, this.imaginary + other.imaginary);
  }

  display() {
    console.log(`${this.real} + ${this.imaginary}i`);
  }
}

function addComplexNumbers(complex1, complex2) {
  return complex1.add(complex2);
}

const complex1 = new ComplexNumber(2, 3);
const complex2 = new ComplexNumber(1, 4);
const sum = addComplexNumbers(complex1, complex2);
sum.display();
