//
//  2941 크로아티아 알파벳.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/17.
//

func main9() {
    //setting
    let data = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
    var count: Int = 0
    var i: Int = 0
    
    let input = readLine()!.map { String($0) }
    while true {
        //인덱스 넘어간 경우 종료
        if(i > input.count-1) {
            break
        }
        //두문자를 가져와 비교
        if(i < input.count-1) {
            let string = input[i] + input[i+1]
            if(data.contains(string)) {
                count += 1
                i += 2
            } else if(i < input.count-2){
                let string2 = string + input[i+2]
                if(data.contains(string2)) {
                    count += 1
                    i += 3
                } else {
                    count += 1
                    i += 1
                }
            } else {
                count += 1
                i += 1
            }
        } else {
            count += 1
            break
        }
    }
    print(count)
}
