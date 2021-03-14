//
//  10430 나머지.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/14.
//

func main10() {
    let line = readLine()!.split(separator: " ")
    let results = line.map { Int($0)! }
    let A = results[0]
    let B = results[1]
    let C = results[2]
    
    //(A+B)%C
    print((A+B)%C)
    //((A%C) + (B%C))%C
    print(((A%C) + (B%C))%C)
    //(A×B)%C
    print((A*B)%C)
    //((A%C) × (B%C))%C
    print(((A%C) * (B%C))%C)
}
