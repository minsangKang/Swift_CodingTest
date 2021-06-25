//
//  1이 될 때까지.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/25.
//

import Foundation
//99P 1이 될 때까지
func main() {
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    var N: Int = datas[0]
    let K: Int = datas[1]
    var count: Int = 0
    
    while(true) {
        //나눠질때까지 1씩 뺄수 한방에
        let target: Int = (N/K)*K
        count += (N-target)
        N = target
        //나눌수 없는 경우 종료
        if(N < K) {
            break
        }
        //나누기
        N /= K
        count += 1
    }
    count += N-1
    print(count)
}
