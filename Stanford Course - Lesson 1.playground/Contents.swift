import Foundation // для sin и M_PI

/* 

////////// Lessson 1 Task 1
 
/* Написатьфункцию,котораявыводитнаэкранвсенатуральныечислаиз диапазона от А до В в записи которых цифра 7 встречается N раз.
При отсутствии чисел с указанными свойствами выдать на экран сообщение "Требуемых чисел нет".
Границы диапазона А и В и значение N задаются как параметры функции.  Объекты типа String можно рассматривать и как массивы символов. */


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


 
////////// Lessson 1 Task 2
 
/* Написатьфункцию,принимающуюнатуральноетрехзначноечисло.  Вычислить и вывести на экран число, полученное путем "переворота" (123 => 321).
Не использовать методы для работы со строками. */
 

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



////////// Lessson 1 Task 3
 
/* Написатьфункцию,котораяпринимаетчетырехзначноедесятичноечисло, формирует и выводит на экран признак "счастливого числа" (сумма первых двух цифр равне сумме последних двух).
Не использовать методы для работы со строками. */
 

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



////////// Lessson 1 Task 4
 
/* Реализоватьметодвычисленияфакториала. */
 

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



////////// Lessson 1 Task 5
 
/* ВычислитьзначениефункцииY=F(X),заданнойграфиком
      |0.5 при X<=-0.5
      | X+1 при -0.5<X<=0
 Y = <
      | X*X-1при 0<X<=1
      | X-1 при X>1 */
 

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



////////// Lessson 1 Task 6
 
/* ВычислитьзначениефункцииG=F(X),заданнойграфиком
      | sin(π/2), если X<=0.5
 G = <
      | sin((X-1)*π/2), если X>0.5
 π — представлена в виде глобальной константы M_PI  sin — глобальная функция */
 

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




//--- ЦИКЛЫ

////////// Lessson 1 Task 7
 
/* Написатьфункциюдлясокращенияобыкновеннойдроби.
Дробь передается в виде числителя и знаменателя двумя отдельными целочисленными параметрами.
Как вспомогательную функцию определить и использовать метод для вычисления наибольшего общего делителя двух целых чисел. */

 
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



////////// Lessson 1 Task 8
 
/* Написатьфункцию,котораянаходитираспечатываетвсенатуральные трехзначные числа, равные сумме кубов своих цифр. */
 

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



////////// Lessson 1 Task 9

/* Написатьфункцию,принимающуюнатуральныечислаnиk.  Задача функции: определить k-ю справа цифру числа n. */
 

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



////////// Lessson 1 Task 10
 
/* Написать функцию, вычисляющую k-ое число Фибоначчи. */


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
 




//--- МАССИВЫ

////////// Lessson 1 Task 11

/* Написать функцию, принимающую натуральное число N.
 Одномерный массив размером N заполнить случайными числами.   Вывести на экран количество простых чисел в массиве (Для удобства проверки дополнительно вывести сгенерированный массив).
 Для генерации простого числа можно использовать глобальную функцию arc4random(). Следует обратить внимание, что функция возвращает значение типа UInt32 (потребуется преобразование), а также работает на всем диапазоне (можно применить arc4random() % 100 для получения чисел в промежутке [0, 100) ) */


func findSimpleNumber (n: Int) {
    
    var randomNumbersArray = [Int]()
    
    
    for i in 0..<n {
        
        randomNumbersArray.append(Int(arc4random() % 100)) // проверял числа на "простое - или нет" сразу после добавление в массив, не дожидаясь формирования всего массива
        
        if randomNumbersArray[i] % 2 != 0 && randomNumbersArray[i] > 2 { // 2 - единственное четное простое число, пришлось его вынести в отдельный if
            
            let half = Int(randomNumbersArray[i] / 2) + 1
            var simple = true
            

                for j in 2...half { // вообще, как я позже прочитал, можно было проверять до округленного корня числа, но проверять до половины была моя идея и я решил оставить :)
                                    // также можно было не проверять четные числа, но как говлорил Alex Skutorenko, нужно заставить программу работать, а потом уже заниматься оптимизацией
                    if randomNumbersArray[i] % j == 0 {
                        simple = false
                        break
                    }
                    
                }
                
                if simple == true {
                    print("\(randomNumbersArray[i]) - простое число")
                }
            
            
            simple = false

        } else if randomNumbersArray[i] == 2 {
            print("\(randomNumbersArray[i]) - простое число")
        }
        
    }
    
    print(randomNumbersArray)
    
}

findSimpleNumber(n: 10)
 



////////// Lessson 1 Task 12

/* Написать функцию, заполняющую случайными числами целочисленный массив длиной N. Найти в нем два наименьших элемента (и вывести на экран) */

func findTwoMin (n: Int) {
    
    var randomNumbersArray = [Int]()
    var min1: Int
    var min2: Int
    
    for _ in 0..<n {
        randomNumbersArray.append(Int(arc4random() % 100))
    }
    
    min1 = randomNumbersArray[0]
    min2 = min1
    
    for i in randomNumbersArray {
        if i < min1 {
            min2 = min1
            min1 = i
        }
    }
    
    print(randomNumbersArray)
    print("Минимальные числа массива - \(min1) и \(min2)")
    
}

findTwoMin(n: 10)

 */



////////// Lessson 1 Task 13

/* Сгенерировать (и вывести) двумерную матрицу размером N*N (N<20). Найти сумму ее элементов, находящихся на диагонали, и сумму элементов на диагонали, "ортогональной" главной. */


arc4random




