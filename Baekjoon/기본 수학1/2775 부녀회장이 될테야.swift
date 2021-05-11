//
//  2775 부녀회장이 될테야.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/20.
//

func main6() {
    var map = [[Int]]()
    for i in 0...14 {
        map.append([])
        for j in 0...14 {
            if(i==0) {
                map[i].append(j)
            }
            else if(j<=1) {
                map[i].append(1)
            }
            else {
                map[i].append(map[i-1][j] + map[i][j-1])
            }
        }
    }
    let num = Int(readLine()!)!
    for _ in 1...num {
        let floor = Int(readLine()!)!
        let roomNum = Int(readLine()!)!
        print(map[floor][roomNum])
    }
}
