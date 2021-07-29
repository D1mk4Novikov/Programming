//
//  main.swift
//  Part IV - Introduction to the development of applications
//
//  Created by Dimka Novikov on 26.07.2021.
//

import Foundation


//Функция получает указатель на операцию из консоли
func getOperationFromConsole() -> String {
    var stringFromConsole: String?
    for _ in 1... {
        print("Введите указатель на операцию \(availableOperations)")
        stringFromConsole = readLine()
        guard availableOperations.contains(stringFromConsole ?? "") else {
            print("Вы ввели неверное значение. Повторим...")
            continue
        }
        break
    }
    return stringFromConsole!
}

// Функция получает значение очередного аргумента
func getArgumentFromConsole(argumentNumber: UInt) -> Int {
    var stringFromConsole: String?
    var resultNumber: Int = 0
    for _ in 1... {
        print("Введите числовое значение аргумента # \(argumentNumber)")
        stringFromConsole = readLine()
        
        guard let string = stringFromConsole else {
            print("Вы ввели неверное значение. Повторим...")
            continue
        }
        guard let number = Int(string) else {
            print("Вы ввели неверное значение. Повторим...")
            continue
        }
        resultNumber = number
        break
    }
    return resultNumber
}

// Функция производит операцию над аргументами
func doOpertaion(_ operation: String, with arg1: Int, and arg2: Int) -> Double {
    var result: Double = 0
    switch operation {
    case "+":
        result = Double(arg1 + arg2)
    case "-":
        result = Double(arg1 - arg2)
    case "/":
        result = Double(arg1) / Double(arg2)
    case "*":
        result = Double(arg1 * arg2)
    case "^":
        result = pow(Double(arg1), Double(arg2))
    default:
        break
    }
    return result
}


// массив содержит список доступных операций
let availableOperations = ["*", "/", "+", "-", "^"]

// запрос операции
let operation = getOperationFromConsole()
// запрос первого аргумента
let firstArgument = getArgumentFromConsole(argumentNumber: 1)
// запрос второго аргумента
let secondArgument = getArgumentFromConsole(argumentNumber: 2)

//подсчет суммы аргументов
var result = doOpertaion(operation, with: firstArgument, and: secondArgument)

//вывод результата на консоль
print("Результат операции [\(operation)]= \(result)")
