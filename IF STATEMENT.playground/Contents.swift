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

var x = 20
var y = 60
var z = 10

var maximum = x
var minimum = x

// Nedd additional if statement inside becuase if y is bigger than z, but both y and z is bigger than x, it would change the maximum to z because of the order that it was setup. So I had to make sure that when we are comparing y & z to x, we have to make sure which one is bigger than another for y & z. 

if x < y {
    if y > z {
        maximum = y
    }
}
if x < z {
    if z > y {
        maximum = z
    }
}
if x > y {
    if z > y {
        minimum = y
    }
}
if x > z {
    if y > z {
        minimum = z
    }
}

var middle = x + y + z - maximum - minimum

print("\(minimum), \(middle), \(maximum)")

/// 7. Find x in function ax^2 + bx + c = 0
/// Input:
///     a = 1
///     b = 3
///     c = 2
/// Output:
///     x1 = -1
///     x1 = -2

var a = 1
var b = 3
var c = 2

var discriminant = b*b - (4*a*c)

if discriminant > 0 {
    print("There are two real roots")
    var root1 = (-b+Int(pow(Double(discriminant), 0.5)))/2*a
    var root2 = (-b-Int(pow(Double(discriminant), 0.5)))/2*a
    print("x1 = \(root1), x1 = \(root2)")
} else if discriminant == 0 {
    print("There is one real root")
    var onlyRoot1 = -b/(2*a)
    print("x1 = \(onlyRoot1)")
} else if discriminant < 0 {
    print("There are no real roots")
}

/// 8. Find x and y, using Cramer's rule 2 linear equations
/// a1x + b1y = c1
/// a2x + b2y = c2
/// Input:
///     a1, b1, c1, a2, b2, c2
/// Output:
///     x: ?
///     y: ?

var a1: Double = 8
var b1: Double = 4
var c1: Double = 2
var a2: Double = 9
var b2: Double = 3
var c2: Double = 2
var x12: Double = 0
var y12: Double = 0

var D = (a1 * b2) - (a2 * b1)
print(D)

if D != 0 {
    x12 = ((c1 * b2) - (c2 * b1)) / D
    print(x12)
    y12 = ((c2 * a1) - (c1 * a2)) / D
    print(y12)
}

