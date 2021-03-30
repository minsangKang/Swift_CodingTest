//
//  1181 단어 정렬.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/30.
//

func main8() {
    let n = Int(readLine()!)!
    var words: [String] = []
    for _ in 0..<n {
        let word = readLine()!
        words.append(word)
    }
//    느린 방법
//    words = Array(Set(words))
//    words.sort(by: { $0.count == $1.count ? $0 < $1 : $0.count < $1.count })
    var tupples = [(Int, String)]()
    for word in words {
        tupples.append((word.count, word))
    }
    tupples.sort(by: < )
    var result = ""
    for tupple in tupples {
        result += "\(tupple.1)\n"
    }
    print(result)
}
