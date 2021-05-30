//
//  오픈채팅방.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/28.
//

import Foundation

func solution(_ record:[String]) -> [String] {
    var result: [String] = []
    var queue: [(String,String)] = [] //uid, Q
    var names: [String : String] = [:]
    for r in record {
        let datas = r.split(separator: " ").map { String($0) }
        
        let Q = datas[0]
        let uid = datas[1]
        if(Q == "Enter") {
            let nick = datas[2]
            names.updateValue(nick, forKey: uid)
            queue.append((uid,"님이 들어왔습니다."))
        } else if(Q == "Leave") {
            queue.append((uid,"님이 나갔습니다."))
        } else if(Q == "Change") {
            let new_nick = datas[2]
            names.updateValue(new_nick, forKey: uid)
        }
    }
    
    for q in queue {
        let uid = q.0
        let action = q.1
        let nick = names[uid]!
        
        result.append("\(nick)\(action)")
    }
    return result
}
