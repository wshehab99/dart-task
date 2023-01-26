import "dart:math";

void main() {
  List<int> numbers = [];
  var random = Random();
  int max = 1000000;
  int listLength = random.nextInt(1000);
  for (int i = 0; i < listLength; i++) {
    //create numbers positive or negative
    int num = random.nextInt(max) - random.nextInt(max);
    //convert negative numbers to positive
    num = num.abs();
    numbers.add(num);
  }

  List<Pair> result = [];
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (checkSum(numbers[i], numbers[j])) {
        result.add(Pair(numbers[i], numbers[j]));
      }
    }
  }
  result.forEach((element) {
    print(element.toString());
  });
}

bool checkSum(int first, int second) {
  return first + second == 12;
}

class Pair {
  final int a;
  final int b;

  Pair(this.a, this.b);
  @override
  String toString() => "Sum of $a and $b is 12";
}
