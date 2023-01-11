import  UIKit

/// IF - STATEMENT
/// 1. Input your age. Display your age and stages like this pattern
/// < 1     Baby
/// 2 -> 3        Toddler
/// 4 -> 12      Kid
/// 13 -> 18    Teenager
/// 19 -> 60    Adult
/// > 60          Senior
/// Input:
///     Enter your age: 5
/// Output:
///     Your age is 5. You are a kid

var age = 5
var stage: String

if age <= 1 {
    stage = "Baby"
} else if age >= 2 && age <= 3 {
    stage = "Toddler"
} else if age >= 4 && age <= 12 {
    stage = "Kid"
} else if age >= 13 && age <= 18 {
    stage = "Teenager"
} else if age >= 19 && age <= 60 {
    stage = "Adult"
} else {
    stage = "Senior"
}

print("Your age is \(age). You are \(stage)")

/// 2. Input 2 numbers. Show the comparison of 2 numbers on console
/// Input:
///     Enter first number: 5
///     Enter second number: 4
/// Output:
///     5  >  4

var e = 5
var d = 4

if e > d {
    print("\(e) > \(d)")
} else {
    print("\(d) > \(e)")
}

/// 3. Input the year and print whether that year is a leap year or not.
/// A year is a leap year if the following conditions are satisfied: Year is multiple of 400 and year is multiple of 4 and not multiple of 100.
/// Input:
///     Input the year: 2016
/// Output:
///     2016 is a leap year

var year = 2016
if year % 400 == 0 {
    if year % 4 == 0 && year % 100 != 0 {
        print("\(year) is a leap year")
    } else if year % 100 == 0 {
        print("\(year) is a leap year")
    } else {
        print("\(year) is not a leap year")
    }
} else if year % 4 == 0 && year % 100 != 0 {
    print("\(year) is a leap year")
} else {
    print("\(year) is not a leap year")
}

/// 4. Check n is divisor of m or not
/// Input:
///     m = 10
///     n = 2
/// Output:
///     2 is divisor of 10

var m = 10
var n = 2

if m % n == 0 {
    print("\(n) is divisor of \(m)")
} else {
    print("\(n) is not a divisor of \(m)")
}

/// 5. Input 2 numbers. Show the maximum and minimum number on console
/// Input:
///     Enter first number:  5
///     Enter second number:  4
/// Output:
///     Maximum number is 5
///     Minimum number is 4

var max = 5
var min = 4

if max > min {
    print("Maximum number is \(max) \nMinimum number is \(min)")
} else if min > max{
    print("Maximum number is \(min) \nMinimum number is \(max)")
} else {
    print("Both numbers are equal to each other: max = \(max) & min = \(min)")
}

/// 6. Input 3 numbers. Display the list of number from lowest to highest
/// Input:
///     Enter first number: 20
///     Enter second number: 60
///     Enter third number: 10
/// Output:
///     10, 20, 60

var a = 20
var b = 60
var c = 10

var maximum = a
var minimum = a

if a < b { maximum = b }
if a < c { maximum = c }
if a > b { minimum = b }
if a > c { minimum = c }

var middle = a + b + c - maximum - minimum

print("\(minimum), \(middle), \(maximum)")

/// 7. Find x in function ax^2 + bx + c = 0
/// Input:
///     a = 1
///     b = 3
///     c = 2
/// Output:
///     x1 = -1
///     x1 = -2
