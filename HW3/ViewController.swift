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

        print("String Easy. Task 1")
        print("My name has \(lettersCount(myNameIs: "Alex")) characters")
        print("==========================================")


        print("String Easy. Task 2")
        user(name: "Alex", lastName: "Bes")
        print("==========================================")

        print("String Easy. Task 3")
        let nameAndMidleName = "Александр КонстантиновИч"
        manOrWoman(name: nameAndMidleName)
    }


//      Дополнительное задание

    //    Block 1. String Easy. Task 1
    //    Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем. Возвращенное значение показать в консоль


    let myNameIs = ""

    func lettersCount(myNameIs: String) -> Int {

        return myNameIs.count
    }


//      String Easy. Task 2
//      Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”


    func user(name: String, lastName: String) {
print(name.lowercased(), lastName.lowercased(), separator: "_")
    }

//      String Easy. Task 3
//      Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд.
//      Подсказка: в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его

    func manOrWoman(name: String) {
        let someString = name.lowercased()
        if someString.hasSuffix("ич") {
            print("Man")
        } else if someString.hasSuffix("на") {
            print("Woman")
        } else {
            print("It hasn't middle name")
        }
    }


}

