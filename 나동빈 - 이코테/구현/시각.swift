//
//  시각.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/29.
//

import Foundation

func main() {
    let N: Int = Int(readLine()!)!
    var count: Int = 0
    
    for h in 0...N {
        for m in 0...59 {
            for s in 0...59 {
                let time: [String] = "\(h)\(m)\(s)".map { String($0) }
                if(time.contains("3")) {
                    count += 1
                }
            }
        }
    }
    
    print(count)
}
