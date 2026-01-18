/* 1. Создайте два массива. Первый от 0 до 14, второй от 14 до 30. Объедините их в один
 массив. */
var firstArray = Array(0...14)
var secondArray = Array(14...20)

let finalArray = firstArray + secondArray


/* 2. Создать функцию, которая принимает массив int. Возвести все Int в квадрат.
 Возвратить новый массив. */

func squareArray(array: [Int]) -> [Int] {
    var resultInt = 0
    var resultArray: [Int] = []
    
    for element in array {
       resultInt = element * element
       resultArray.append(resultInt)
    }
    return resultArray
}

squareArray(array: [ 1, 2, 3, 4, 5])


/* 3. Создать функцию, которая принимает массив int. Возвратить новый массив с только
 четными элементами. */

func intArray(array: [Int]) -> [Int] {
    var resultArray: [Int] = []
    
    for element in array {
        if element % 2 == 0 {
            resultArray.append(element)
        }
    }
    return resultArray
}

intArray(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

// еще вариант выполнения того же задания
func intArray2(array: [Int]) -> [Int] {
    var resultArray = array.filter { $0 % 2 == 0 }
    return resultArray
}

intArray2(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])


/* 4.
 4.1. Написать 3 примера с использованием .map
 4.2. Написать 2 примера с использованием .filter
 4.3. Написать 2 примера с использованием .compactMap
 4.4. Написать 2 примера с .sort - изменяет исходный массив
 4.5. Написать 2 примера с .sorted - не изменяет исходный массив, возвращает новый
 */

// 4.1.
let numbers = [1, 2, 3, 4, 5]
let resultnumbers = numbers.map { $0 * 5 }

let intNumbers = [1, 2, 3]
let stringNumbers = intNumbers.map { "Число \($0)" }

let names = ["Анна", "Иван", "Мария", "Петр"]
let namesWithExclamation = names.map { $0 + "!" }

// 4.2.
let words = ["Swift", "Kotlin", "JavaScript", "Python", "C++", "Go"]
let longWords = words.filter { $0.count > 5 }

let someNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let resultNumbers = someNumbers.filter { $0 > 5 }

// 4.3.
let strings = ["1", "2", "три", "4", "пять", "6"]
let numbersFromStrings = strings.compactMap { Int($0) }

let optionalNumbers: [Int?] = [1, nil, 3, nil, 5, 6, nil]
let nonNilNumbers = optionalNumbers.compactMap { $0 }

// 4.4.
var numbersArray = [5, 2, 8, 1, 9, 3]
numbersArray.sort(by: >)
numbersArray

var itWords = ["Swift", "Kotlin", "Java", "Python", "C"]
itWords.sort { $0.count < $1.count }
itWords

// 4.5.
let numbersArray2 = [5, 2, 8, 1, 9, 3]
let resultnumbersArray2 = numbersArray.sorted()
numbersArray2

let itWords2 = ["Swift", "Kotlin", "Java", "Python", "C"]
let resultItWords = itWords2.sorted(by: { $0.count < $1.count })
itWords2


/* 5. Массив.
 Создайте массив friends с именами 3-5 ваших друзей. Добавьте в него нового друга с помощью .append(). Выведите в консоль имя друга, который стоит на втором месте в списке (помните про индексы!). Удалите первого друга из массива.
*/

var friendsArray = ["Anna", "Ivan", "Maria", "Petr", "Olga"]
friendsArray.append("Daria")
print(friendsArray[1])
friendsArray.removeFirst()

/* 6. Словарь. Создайте словарь movieRating, где ключ - название фильма (String), а значение - ваша оценка от 1 до 10 (Int). Добавьте 3-5 фильмов (Можно ваш личный топ, но чтобы не все 10/10). Измените оценку для одного из них. Выведите в консоль фразу: "Оценка фильма [Название] - [Оценка]". */

var movieRating: [String: Int] = [:]

movieRating = [
    "Saw": 10,
    "The Texas Chain Saw Massacre": 9,
    "A Nightmare on Elm Street": 8,
    "Silent Hill": 10,
    "28 Days Later": 7
]

movieRating.updateValue(6, forKey: "28 Days Later")

for (film, rating) in movieRating {
    print("Оценка фильма \(film) - \(rating)")
}

/* 7. Множество.
 Создайте два множества: workDays: Set<String> с днями недели, когда вы работаете (пн, вт, ср, чт, пт), и weekendDays: Set<String> с выходными (сб, вс). Используйте метод .union() для объединения этих множеств в одно - allDays. Что в нем получилось? */

var workDays: Set<String> = ["пн", "вт", "ср", "чт", "пт"]
var weekendDays: Set<String> = ["сб", "вс"]

let allDays = workDays.union(weekendDays)
print(allDays) // получились все дни недели (т.к. в обоих множествах нет общих значений). Порядок элементов не гарантируется - множества в Swift не упорядочены, поэтому дни могут быть выведены в любом порядке.


/* 8. Кортеж.
 Создайте кортеж book с метками: title (название книги), author (автор), isFinished (прочитана ли). Присвойте ему значения. Выведите в консоль фразу: "Книга '[Название]' автора [Автор] - [прочитана/еще читаю]". */

var book = (title: "Долгая прогулка", author: "Стивен Кинг",  isFinished: true)

print("Книга \(book.title) автора \(book.author) - \(book.isFinished ? "прочитана" : "еще читаю")")

/* Функции высшего порядка.
 Дан массив: let salaries = [35000, 71000, 22000, 48000, 90000]. Используйте filter, чтобы оставить только зарплаты выше 50 000. Используйте map, чтобы увеличить оставшиеся зарплаты на 10% (умножить на 1.1). Используйте reduce, чтобы найти сумму этих увеличенных зарплат. Выведите итоговую сумму. */

let salaries = [35000, 71000, 22000, 48000, 90000]

let bigSalaries = salaries.filter{$0 > 50000}
let bigSalariesWithBonus = bigSalaries.map{Double($0) * 1.1}
let resultSalaries = bigSalariesWithBonus.reduce(0, +)
print(resultSalaries)
