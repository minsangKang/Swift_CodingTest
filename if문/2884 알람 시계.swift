//
//  2884 알람 시계.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

unc main5() {
    let line = readLine()!.split(separator: " ")
    let results = line.map { Int($0)! }
    var h = results[0]
    var m = results[1]
    
    if m >= 45 {
        print("\(h) \(m-45)")
    } else {
        h -= 1
        m += 15
        if h<0 { h = 23 }
        print("\(h) \(m)")
    }
}
