//
//  1011 Fly me to the Alpha Centauri.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/21.
//

func main9() {
    let num = Int(readLine()!)!
    for _ in 1...num {
        let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
        var from = datas[0], to = datas[1]
        var term: Int = 1
        var count: Int = 0
        while true {
            from += term
            count += 1
            if(to <= from) {
                break
            }
            to -= term
            count += 1
            if(to <= from) {
                break
            }
            term += 1
        }
        print(count)
    }
}
