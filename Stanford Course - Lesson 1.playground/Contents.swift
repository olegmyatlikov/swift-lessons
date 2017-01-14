import Foundation // для sin и M_PI

/*

// Lessson 1 Task 1

func findSevenInCollection (a: Int, b: Int, n: Int) {
    
    var arrayWithSeven = [Int]()
    var howManySeven = 0
    
    if b > a {
        for i in a...b {
            howManySeven = 0
            for j in String(i).characters {
                if j == "7" {
                    howManySeven = howManySeven + 1
                }
                if howManySeven == n {
                    arrayWithSeven.append(i)
                    break
                }
            }
        }
    }
    
    
    if arrayWithSeven.isEmpty {
        print("Требуемых чисел нет")
    } else {
        print("В диапазоне от \(a) до \(b) цифра 7 встречается \(n) раза в числах - \(arrayWithSeven)")
    }
    
}

findSevenInCollection(a: 500, b: 800, n: 2)


// Lessson 1 Task 2

func revertNumbers (number: Int) {
    
    
    if (number / 100 == 0) || (number / 100 > 9) {
        print("Не трехзначное число")
    } else {
        
        let firstNumber : Int = number / 100
        let secondNumber : Int = (number - firstNumber * 100) / 10
        let thirdNumber : Int = number - firstNumber * 100 - secondNumber * 10
        
        let result = thirdNumber * 100 + secondNumber * 10 + firstNumber
        
        print("Исходное число - \(number), перевернутое - \(result)")
        
    }
    
}

revertNumbers(number: 123)



// Lessson 1 Task 3

func happyNumber (number: Int) {

    if (number / 1000 == 0) || (number / 1000 > 9) {
        print("Не четырехзначное число")
    } else {
    
        let firstNumber : Int = number / 1000
        let secondNumber : Int = (number - firstNumber * 1000) / 100
        let thirdNumber : Int = (number - firstNumber * 1000 - secondNumber * 100) / 10
        let fourth : Int = (number - firstNumber * 1000 - secondNumber * 100 - thirdNumber * 10)
    
        if firstNumber + secondNumber == thirdNumber + fourth {
            print ("\(number) - счастливое число")
        } else {
            print("\(number) - просто цифра :)")
        }
        
    }
    
}

happyNumber(number: 6006)



// Lessson 1 Task 4

func factorial(number: Int) {
    
    var result: Int = 1 // Если number = 0 мы минуя if-ы распечатаем результат 1, так !0 = 1
    
    if number > 0 {
        for i in 1...number {
            result = i * result
        }
    } else if number < 0 {
        print ("Факториал определён только для целых неотрицательных чисел")
    }
        
    print("!\(number) = \(result)")
    
}

factorial(number: 0)



// Lessson 1 Task 5

func functionResultY (x: Float) {
    
    var y : Float = 0
    
    switch x {
    case _ where x <= -0.5 :
        y = 0.5
    case _ where x > -0.5 && x <= 0 :
        y = x + 1
    case _ where x > 0 && x <= 1 :
        y = x * x - 1
    case _ where x > 1 :
        y = x - 1
    default :
        break
    }
    
    print("При x = \(x), y = \(y)")
    
}

functionResultY (x: 1)



// Lessson 1 Task 6

func functionResultG (x: Double) {

    var g: Double = 0
    
    if x <= 0.5 {
        g = sin(M_PI / 2)
    }
    
    if x > 0.5 {
        g = sin((x - 1) * M_PI / 2)
    }
    
    print("При x = \(x), g = \(g) RAD")
    
}


functionResultG (x: 0.3)




//// ЦИКЛЫ

// Lessson 1 Task 7

func greatestСommoтFactor (a: Int, b: Int) -> Int {
    
    var firstNum = a
    var secondNum = b
    
    while firstNum != secondNum {
        if firstNum > secondNum {
            firstNum = firstNum - secondNum
        } else {
            secondNum = secondNum - firstNum
        }
    }
    
    return firstNum
    
}


func fractionReduction (numerator: Int, denominator: Int) {
    
    let nod: Int = greatestСommoтFactor(a: numerator, b: denominator)
    
    print("\(numerator)/\(denominator) = \(numerator/nod)/\(denominator/nod)")
}

fractionReduction(numerator: 45, denominator: 2205)



// Lessson 1 Task 8

func findNumberSumCube() {
    
    var array = [Int]()
    var resultSum: Int
    
    for i: Int in 100...999 {
        resultSum = 0
        let a: Int = i / 100
        let b: Int = (i - (a*100)) / 10
        let с: Int = i - (a*100) - (b*10)
        resultSum = resultSum + (a * a * a) + (b * b * b) + (с * с * с)
        //array.append(resultSum)
        if resultSum == i {
            array.append(i)
        }
        
    }
    
    print(array)
    
}

findNumberSumCube()



// Lessson 1 Task 9

func findKNumInN (n: Int, k: Int) {
    
    
    var arrayN = [Character]()
    var arrayRevertN = [Character]()
    
    for i in String(n).characters {
        arrayN.append(i)
    }
    
    for i in 1...arrayN.count {
        arrayRevertN.append(arrayN[arrayN.count - i])
    }
    
    if k > arrayRevertN.count || k <= 0 {
        print("Ошибка! В исходном числе нету \(k)-ой цифры слева")
    } else {
        print(arrayRevertN[k-1])
    }
    
    
}

findKNumInN(n: 21734, k: 3)



// Lessson 1 Task 10


func numInFibonacci (k: Int) {
    
    var arrayFibonacci = [0, 1] // start by 0
    
    if k > 0 {
        for i in 2...k {
            arrayFibonacci.append(arrayFibonacci[i-1] + arrayFibonacci[i-2])
        }
        print("\(k)-е число Фибоначи  '\(arrayFibonacci[k-1])'")
    } else {
        print("Введите положительное число")
    }
    
    
    
}

numInFibonacci(k: 3)
*/



//// МАССИВЫ

// Lessson 1 Task 11

func findSimpleNumber (n: Int) {
    
    var randomNumbersArray = [Int]()
    var simple = true
    
    for i in 0..<n {
        randomNumbersArray.append(Int(arc4random() % 100))
        
        if randomNumbersArray[i] % 2 != 0 {
            
            var half = Int(randomNumbersArray[i] / 2) + 1
            
            for j in 3...half {
                
                if randomNumbersArray[i] % j == 0 {
                    simple = false
                    break
                }
                
                
            }
            
            if simple == true {
                print("\(randomNumbersArray[i]) - простое число")
            }
            
            simple = false

        }
    }
    
    print(randomNumbersArray)
    
}

findSimpleNumber(n: 10)











