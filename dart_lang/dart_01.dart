void main(List<String> args) {
  late String name;
  name = "Jaw";

  print("Hello $name, how you doing?");
  multiple_by_number(number: 1, multiply_by: 10);

  String fizz_buzz_result = fizzBuzz(7);
  print("Resultado do FizzBuzz foi: $fizz_buzz_result!");

  sayTheTruth(10);
}

void multiple_by_number({required int number, required int multiply_by}) {
  int result = number * multiply_by;

  if (result > 10) {
    print("Caraio mané maior que 10");
  } else if (result == 10) {
    print("Bah mas acertou na mosca seu chinelao");
  } else {
    print("Bah e os guri na real");
  }
  return;
}

String fizzBuzz(final int fizzBuzzNumber) {
  late String result;

  if (fizzBuzzNumber % 3 == 0 && fizzBuzzNumber % 5 == 0) {
    result = "FizzBuzz";
  } else if (fizzBuzzNumber % 3 == 0) {
    result = "Fizz";
  } else if (fizzBuzzNumber % 5 == 0) {
    result = "Buzz";
  } else {
    result = "$fizzBuzzNumber isnt neither divisible by 3 or 5";
  }

  return result;
}

void sayTheTruth(final int repeats) {
  for (int i = 1; i < repeats + 1; i++) {
    print("Bed você é front-end!");
    print("Bed foi lembrado $i que ele é front-end!");
  }
}

// All Can by strongly typed 
// You must specify the return of a function when you create it 
// Type of shit comes first for some reason (???????????)
// To define a variable later use the late data type
// Why am I learning this?
// Final = never gonna change IN CODE
// Const = never gonna change IN COMPILE TIME
// To say that you want shit to be explicit you need to put the params inside of {}
// If you require them put them as required else pass a default value
// We can pass a variable as int? for example it says to us that the var can be Null
// So we have to do a null check where we want to use it by passing var!