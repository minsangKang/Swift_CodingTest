//
//  1712 손익분기점.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/18.
//

func main1() {
    //A : 고정비용, B : 가변비용, C : 노드북 가격
    //A + Bx < Cx
    //A/(C-B) < x
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    let A = datas[0], B = datas[1], C = datas[2]
    if(C > B) {
        print(A/(C-B)+1)
    } else {
        print(-1)
    }
}
