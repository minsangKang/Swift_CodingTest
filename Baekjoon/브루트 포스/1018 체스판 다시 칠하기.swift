//
//  1018 체스판 다시 칠하기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/26.
//

var map = [[String]]()
func getCount(_ x: Int, _ y: Int) -> Int {
    let ref = map[x][y]
    var count1: Int = 0
    var count2: Int = 0
    for i in x..<x+8 {
        for j in y..<y+8 {
            if((i-x)%2 == 0) {
                if((j-y)%2 == 0) {
                    if(map[i][j] != ref) {
                        count1 += 1
                    } else {
                        count2 += 1
                    }
                }
                if((j-y)%2 == 1) {
                    if(map[i][j] == ref) {
                        count1 += 1
                    } else {
                        count2 += 1
                    }
                }
            } else {
                if((j-y)%2 == 0) {
                    if(map[i][j] == ref) {
                        count1 += 1
                    } else {
                        count2 += 1
                    }
                }
                if((j-y)%2 == 1) {
                    if(map[i][j] != ref) {
                        count1 += 1
                    } else {
                        count2 += 1
                    }
                }
            }
        }
    }
    if(count1 <= count2) {
        return count1
    } else {
        return count2
    }
}
func main4() {
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    for i in 0..<datas[0] {
        map.append([])
        let input = readLine()!
        for j in input {
            map[i].append(String(j))
        }
    }
    var min: Int = datas[0]*datas[1]
    for i in 0...datas[0]-8 {
        for j in 0...datas[1]-8 {
            let temp = getCount(i, j)
            if(temp < min) {
                min = temp
            }
        }
    }
    print(min)
}
