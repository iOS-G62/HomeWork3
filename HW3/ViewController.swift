//
//  ViewController.swift
//  HW3
//
//  Created by Alexandr on 25.04.2018.
//  Copyright © 2018 Alexandr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {




    override func viewDidLoad() {
        super.viewDidLoad()

        //   > MY CODE IS BELOW <


        print("String Easy. Task 1")
        print("My name has \(lettersCount(inName: "Alex")) characters")
        print("==========================================")


        print("String Easy. Task 2")
        user(name: "Alex", lastName: "Bes")
        print("==========================================")


        print("String Easy. Task 3")
        let nameAndMiddleName = "Александр КонстантиновИч"
        manOrWoman(name: nameAndMiddleName)
        print("==========================================")


        //      Collections Easy: Задание 1
        //      Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.
        print("Collections Easy. TASK 1")
        var someArray = [4, 5, 10, 14]
        someArray = []
        print("someArray is empty: \(someArray)")
        print("=========================")


        //      Collections Easy: Задание 2
        //      Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль.

        print("Collections Easy. TASK 2")

        let firstArray = [5, 10, 12, 167,77]
        let secondArray = [123, 33, 47, 88]
        let associationArrays = firstArray + secondArray

        print(associationArrays)
        print("=========================")


        //      Collections Easy: Задание 3
        //      Создать массив с любыми значениями типа строка(во viewDidLoad()). Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)

        print("Collections Easy. TASK 3")

        let someArrayStrings = ["Mike", "John", "Jessica", "Dave"]

        printNames(elementsOf: someArrayStrings)
        print("=========================")


        //      Collections Easy: Задание 4
        //      Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром

        print("Collections Easy. TASK 4")

        let cities = ["Kiev", "Berlin", "London", "Rome"]

        print(firstAndLast(array: cities))
        print("=========================")


        //      Collections Easy: Задание 5
        //      Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
        //      Добавить в данный словарь еще 2 новых элемента.

        print("Collections Easy. TASK 5")

        var nameAndAge = ["Neo": 27, "Rick": 24, "Jessica": 21]

        nameAndAge["Criss"] = 33
        nameAndAge["Brian"] = 22
        print(nameAndAge)
        print("=========================")


        //      Collections Easy: Задание 6
        //      Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
        //      Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
        //      Например: передаваемый словарь будет такой:
        //          ["Max": 1, "Dasha": 2, "Sergey": 3]
        //      И если передать второй аргумент "Sergey", то метод должен удалить элемент из передаваемого массива с ключом "Sergey".

        print("Collections Easy. TASK 6")

        let namesAndYears = ["Max": 20, "Harris": 24, "Alex": 22]

        deleteElementIn(someDictionary: namesAndYears, deleteElement: "Harris")
        print("=========================")


        //  > MY CODE IS ABOVE <


    }



    //  > MY METHODS: <

    //    Block 1. String Easy. Task 1
    //    Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем. Возвращенное значение показать в консоль


    let inName = ""

    func lettersCount(inName: String) -> Int {

        return inName.count
    }


//      String Easy. Task 2
//      Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”

    func user(name: String, lastName: String) -> () {
        func userName () {
            print(name.lowercased(), lastName.lowercased(), separator: "_")
        }
        return userName()
    }


//      String Easy. Task 3
//      Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд.
//      Подсказка: в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его

    func manOrWoman(name: String) {
        let fullName = name.lowercased()
        if fullName.hasSuffix("ич") {
            print("Man")
        } else if fullName.hasSuffix("на") {
            print("Woman")
        } else {
            print("It hasn't middle name")
        }
    }



    //      Collections Easy: Задание 3
    //      Создать массив с любыми значениями типа строка(во viewDidLoad()). Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)

    func printNames (elementsOf: [String]) {
        for names in elementsOf {
            print(names)
        }
    }


    //      Collections Easy: Задание 4
    //      Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром


    func firstAndLast (array: [String]) -> [String] {
       let newArray = [array.first  ?? "There is no elements in array"] + [array.last ?? "There is no elements in array"]
        return newArray
    }


    //      Collections Easy: Задание 6
    //      Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
    //      Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
    //      Например: передаваемый словарь будет такой:
    //          ["Max": 1, "Dasha": 2, "Sergey": 3]
    //      И если передать второй аргумент "Sergey", то метод должен удалить элемент из передаваемого массива с ключом "Sergey".

    func deleteElementIn (someDictionary: [String: Int], deleteElement: String)  {

        var newDict = someDictionary
        newDict[deleteElement] = nil
        print (newDict)

    }
//  > MY METHODS: <
}

