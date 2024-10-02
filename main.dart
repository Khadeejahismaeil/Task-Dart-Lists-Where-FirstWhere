void main() {
  //  Lists 1:
  var numbers = [5, 3, 15, 4, 1];

  int sum = 0;
  numbers.forEach((number) => sum += number);
  print('Sum:$sum');

//Lists2:
  int largest = numbers.first;
  //DRY: numbers.forEach((number) => largest = number > largest ? number : largest);
  numbers.forEach((number) {
    if (number > largest) {
      largest = number;
    }
  });
  print('Largest number: $largest');
//wheree
  List<int> filterVisitors(List<int> ages, int minAge) {
    return ages.where((age) => age >= minAge).toList();
    // tolist convert (minAge) fron int to a list
  }

  //  FirstWhere + orelse
  int findOdds(List<int> numbers) {
    final oddNumber =
        numbers.firstWhere((number) => number % 2 != 0, orElse: () => 0);
    return oddNumber;
  }

  final firstOddNumber = findOdds([1, 2, 3, 4, 5]);
  print("first Odd Number $firstOddNumber");
}
