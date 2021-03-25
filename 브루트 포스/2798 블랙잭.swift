//
//  2798 블랙잭.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/25.
//

func blackJack(_ n: Int, _ cards: [Int], _ limit: Int) -> Int {
    var max: Int = 0
    var temp: Int = 0
    for i in 0...n-3 {
        for j in i+1...n-2 {
            for k in j+1...n-1 {
                temp = cards[i]+cards[j]+cards[k]
                if(temp <= limit && temp > max) {
                    max = temp
                }
            }
        }
    }
    return max
}
func main1() {
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    let N = datas[0], Limit = datas[1]
    let cards = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
    print(blackJack(N, cards, Limit))
}
