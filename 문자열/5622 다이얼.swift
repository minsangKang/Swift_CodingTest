//
//  5622 다이얼.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/17.
//

func main8() {
    let input = readLine()!
    var sum: Int = 0
    for i in input {
        let text = String(i)
        switch text {
        case "A"..."C": //2
            sum += 3
        case "D"..."F": //3
            sum += 4
        case "G"..."I": //4
            sum += 5
        case "J"..."L": //5
            sum += 6
        case "M"..."O": //6
            sum += 7
        case "P"..."S": //7
            sum += 8
        case "T"..."V": //8
            sum += 9
        case "W"..."Z": //9
            sum += 10
        default:
            return
        }
    }
    print(sum)
}
