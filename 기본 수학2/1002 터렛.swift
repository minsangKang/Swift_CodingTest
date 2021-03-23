//
//  1002 터렛.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/24.
//

import Foundation
func main11() {
    let num = Int(readLine()!)!
    for _ in 1...num {
        let datas = readLine()!.split(separator: " ").map { Double(String($0))! }
        let dis_x = datas[3]-datas[0]
        let dis_y = datas[4]-datas[1]
        let distance = sqrt(dis_x*dis_x + dis_y*dis_y)
        let sum_r = datas[2]+datas[5]
        if(sum_r < distance) {
            print(0)
        } else if(sum_r == distance) {
            print(1)
        } else {
            let sub_r = datas[2]>=datas[5] ? datas[2]-datas[5] : datas[5] - datas[2]
            if(sub_r < distance) {
                print(2)
            } else if(sub_r == distance) {
                if(distance != 0) {
                    print(1)
                } else {
                    print(-1)
                }
            } else {
                print(0)
            }
        }
    }
}
