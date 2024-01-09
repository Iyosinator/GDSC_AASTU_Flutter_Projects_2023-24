/*
 Name:- Eyosias Mulugeta
 Date:- 11/28/2023
 Title:- Dart Task - 2 Week -2 Project
 */

void main(){
  // Question #1  Find the maximum number in the list.
  //Declaring a list of numbers.
  List<int> numbers = [10, 25, 9, 30, 18];
  //Declaring a function to find the maximum number in the list.

  int findMaximum(List<int> numbers) {
    //Declaring a variable to store the maximum number.
    int maximum = numbers[0];
    //Looping through the list to find the maximum number.
    for (int number in numbers) {
      //Checking if the current number is greater than the maximum number.
      if (number > maximum) {
        //If the current number is greater than the maximum number, then the current number is the maximum number.
        maximum = number;
      }
  }
    //Returning the maximum number.
    return maximum;
  }

  // Question #2 Find the minimum number in the list.
    //Declaring a variable to store the minimum number.
  int findMinimum(List<int> numbers) {  
    int minimum = numbers[0];
    //Looping through the list to find the minimum number.
    for (int number in numbers) {
      //Checking if the current number is less than the minimum number.
      if (number < minimum) {
        //If the current number is less than the minimum number, then the current number is the minimum number.
        minimum = number;
      }
    }
    //Returning the minimum number.
    return minimum;
  }

  //Question #3 Find the sum of all numbers in the list
  //Declaring a variable to store the sum of all numbers in the list.
  int calculateSum(List<int> numbers) {
    //Declaring a variable to store the sum of all numbers in the list.
    int sum = 0;
    //Looping through the list to find the sum of all numbers in the list.
    for (int number in numbers) {
      //Adding the current number to the sum.
      sum += number;
    }
    //Returning the sum of all numbers in the list.
    return sum;
  }

  // Question #4 Create a function named calculateAverage that takes a list of numbers as input and returns the average of all numbers in the list.
  //Declaring a function to calculate the average of all numbers in the list.
  double calculateAverage(List<int> numbers) {
    //Declaring a variable to store the sum of all numbers in the list.
    int sum = 0;
    //Looping through the list to find the sum of all numbers in the list.
    for (int number in numbers) {
      //Adding the current number to the sum.
      sum += number;
    }
    //Returning the average of all numbers in the list.
    return sum / numbers.length;
  }
  // Testing the Code
  print('Test 1');
  print(findMaximum(numbers));
  print(findMinimum(numbers));
  print(calculateSum(numbers));
  print(calculateAverage(numbers));

  //Testing Code with other Numbers
  print("Test 2");
  print(findMaximum([0,1,2,3,4,5,6,7,8,9,10]));
  print(findMinimum([0,1,2,3,4,5,6,7,8,9,10]));
  print(calculateSum([0,1,2,3,4,5,6,7,8,9,10]));
  print(calculateAverage([0,1,2,3,4,5,6,7,8,9,10]));  
}