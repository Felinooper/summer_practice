protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)
    
    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]
    
    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]
    
    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]
    
    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}

struct Main: HomeworkService {
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        (x / y, x % y)
    }
    
    func fibonacci(n: Int) -> [Int] {
        var arr: [Int] = [1, 1]
        
        if n < 2 {
            return [1]
        } else {
            for i in 2...n {
                arr.append(arr[i - 1] + arr[i - 2])
            }
            return arr
        }
    }
    
    func sort(rawArray: [Int]) -> [Int] {
        var arr = rawArray
        
        for endIndex in (1..<rawArray.count).reversed() {
            for index in 0..<endIndex {
                if rawArray[index] > rawArray[index + 1] {
                    arr.swapAt(index, index + 1)
                }
            }
        }
        return arr
    }
    
    func firstLetter(strings: [String]) -> [Character] {
        var arr: [Character] = []
        
        for string in strings {
            arr.append(string.first ?? "-")
        }
        return arr;
    }
    
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int] {
        var arr: [Int] = []
        
        for i in array {
            if (condition(i)) {
                arr.append(i)
            }
        }
        return arr
    }
}
