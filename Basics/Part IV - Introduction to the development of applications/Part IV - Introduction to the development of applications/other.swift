//
//  other.swift
//  Part IV - Introduction to the development of applications
//
//  Created by Dimka Novikov on 26.07.2021.
//

import Foundation

// переменная определяет, делать ли следующий раунд в игре
var isDoNextRound: Bool = false

//repeat {
//    // стартуем очередной раунд игры
//    doGameRound()
//    
//    // проверка проведения следующего раунда
//    print("Продолжим играть? Y/y")
//    if let answerNextRound = readLine(), ["Y","y"].contains(answerNextRound) {
//        isDoNextRound = true
//    }
//} while isDoNextRound == true

func doGameRound() {
    // генерируем случайное число
    let randomNumbersArray: [UInt8] = Array(1...50)
    let randomNumber: UInt8 = randomNumbersArray.randomElement()!
    print("Компьютер случайный образом загадал число в диапазоне от \(randomNumbersArray.first!) до \(randomNumbersArray.last!). Вам требуется отгадать его.")
    // указатель на корректный ответ
    var isCorrect = false
    repeat {
        print("Введите ваш вариант и нажмите Enter")
        // ответ пользователя
        let userNumberFromConsole = readLine()
        // проверка корректности ответа пользователя
        // тут обрабатывается ввод букв вместо цифр и пустой строки
        guard let tmpUserNumber = userNumberFromConsole,
              let userNumber = UInt8(tmpUserNumber) else {
                  print("Вы ввели некорректное число")
                  continue
              }
        // проверка введенного ответа и загаданного числа
        if (userNumber == randomNumber) {
            print("Вы угадали!")
            isCorrect = true
        } else if (userNumber < randomNumber) {
            print("Ваш вариант МЕНЬШЕ загаданного числа")
        } else if (userNumber > randomNumber) {
            print("Ваш вариант БОЛЬШЕ загаданного числа")
        }
    } while !isCorrect
}
