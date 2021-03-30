//
//  10814 나이순 정렬.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/30.
//

func main9() {
    let n = Int(readLine()!)!
    var tupples = [(Int, Int, String)]()
    for i in 0..<n {
        let datas = readLine()!.split(separator: " ").map { String($0) }
        let age = Int(datas[0])!, name = datas[1]
        tupples.append((age, i, name))
    }
    tupples.sort(by: < )
    var result = ""
    for tupple in tupples {
        result += "\(tupple.0) \(tupple.2)\n"
    }
    print(result)
}
