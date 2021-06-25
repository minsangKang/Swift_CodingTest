//
//  문제1 성공.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/25.
//

import Foundation

func solution(_ param0:[String]) -> [String] {
    var result: [String] = []
    var fileNames: [String] = []
    
    var fileName: String = ""
    var fileExten: String = ""
    var isVersion: Bool = false
    for location in param0 {
        let directs = location.map { String($0) }
        
        for i in 0..<directs.count {
            //.인 경우
            if(directs[i] == ".") {
                fileExten = directs[i+1]
                break
            }
            //문자여부 확인 : 97~122
            let uni = UnicodeScalar(directs[i])!.value
            if(97<=uni && uni<=122) {
                if(directs[i-1] == "/" && isVersion == false) {
                    fileName = directs[i]
                    continue
                }
            }
            //나머지는 무시
            else if(directs[i] == "_") {
                isVersion = true
                continue
            }
        }
        
        fileNames.append("\(fileName).\(fileExten)")
        isVersion = false
    }
    print(fileNames)
    
    while(!fileNames.isEmpty) {
        let targetName = fileNames.removeFirst()
        var count: Int = 1
        if(fileNames.isEmpty) {
            break
        }
        while(fileNames.contains(targetName)) {
            if let index = fileNames.firstIndex(of: targetName) {
                fileNames.remove(at: index)
                count += 1
            }
        }
        if(count > 1) {
            result.append(targetName)
            result.append("\(count)")
        }
    }
    
    return result
}
