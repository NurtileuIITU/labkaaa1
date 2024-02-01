import Foundation

func combineStrings() {
    print("Введите первую строку:")
    if let firstLine = readLine() {
        print("Введите вторую строку:")
        if let secondLine = readLine() {
            let combinedString = firstLine + secondLine
            print("Результат объединения: \(combinedString)")
        }
    }
}

func flipString() {
    print("Введите строку для переворота:")
    if let inputString = readLine() {
        let reversedString = String(inputString.reversed())
        print("Результат переворота:\n\(reversedString)")
    }
}

func countCharacters() {
    print("Введите строку для подсчета символов:")
    if let inputString = readLine() {
        let characterCount = inputString.filter { !$0.isWhitespace }.count
        print("Количество символов (без пробелов): \(characterCount)")
    }
}

func searchForSubstring() {
    print("Введите строку:")
    if let mainString = readLine() {
        print("Введите подстроку для поиска:")
        if let substring = readLine() {
            if let range = mainString.range(of: substring) {
                let index = mainString.distance(from: mainString.startIndex, to: range.lowerBound)
                print("Первое вхождение подстроки \"\(substring)\" на позиции: \(index)")
            } else {
                print("Подстрока не найдена.")
            }
        }
    }
}

// Main program
combineStrings()
flipString()
countCharacters()
searchForSubstring()
