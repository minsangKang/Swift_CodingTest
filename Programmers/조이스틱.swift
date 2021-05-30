//
//  조이스틱.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/29.
//

//▲ - 다음 알파벳
//▼ - 이전 알파벳 (A에서 아래쪽으로 이동하면 Z로)
//◀ - 커서를 왼쪽으로 이동 (첫 번째 위치에서 왼쪽으로 이동하면 마지막 문자에 커서)
//▶ - 커서를 오른쪽으로 이동

//26개
//A : 65, Z : 90
import Foundation

func setN() -> [Character:Int] {
    var N: [Character:Int] = [:]
    for i in 0...13 {
        if(i == 0) {
            N.updateValue(0, forKey: "A")
        } else if(i == 13) {
            N.updateValue(13, forKey: "N")
        } else {
            //1 -> 66
            //1 -> 90
            let char1 = Character(UnicodeScalar(i+65)!) //B
            let char2 = Character(UnicodeScalar(91-i)!) //Z
            N.updateValue(i, forKey: char1)
            N.updateValue(i, forKey: char2)
        }
    }
    return N
}

func solution(_ name:String) -> Int {
    let N = setN()
    var count: Int = 0
    let array = name.map { String($0) }

    var i = 0
    var reverse: Bool = false
    var checkCount: Int = 0
    let arrayCount = array.count
    
    while(checkCount != arrayCount) {
        let temp = Character(array[i])
        count += N[temp]!
//        print("\(array[i]), \(count)")
        
        if(i == 0) {
            if(String(array[1]) == "A") {
                reverse = true
                i = array.count
            }
        }
        if(reverse) {
            i -= 1
        } else {
            i += 1
        }
        
        checkCount += 1
        count += 1
        if(checkCount == arrayCount) {
            count -= 1
            if(temp == "A") {
                count -= 1
            }
        }
        
    }

    return count
}
