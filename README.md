# swift_baekjoon
* [백준 단계별로 풀어보기](https://www.acmicpc.net/step)

* [swift 문법 fastcampus 강의내용 요약](https://fdee.tistory.com/category/iOS%20개발자/swift%20기초)

* [swift 문법 참고 블로그](https://twih1203.medium.com/swift-알고리즘에-필요한-swift-basic-총정리-d86453bbeaa5)

### 조금더 빠른코드 작성요령
* for문에서 1...N 대신 0..<N으로 수정하기

* array[Int(readLine()!)!] 대신 let idx = Int(readLime()!)! -> array[idx]로 수정하기

* for 문에서 if(array[i] != 0) 대신 where array[i] != 0 수정하기

* print 여러번 대신 String에 더한다음 한번에 출력하기

* 동일문자 반복출력시 String(repeating: "\(문자)\n", count: 회수) 사용하기

* 중복내용 제거는 Set 을 이용

* 특정 기준을 통한 sort의 경우 Closure 또는 튜플 배열을 통한 sort가 훨씬 빠르다

### 자주쓰이는 swift 코드
* 한줄로 변수 입력 공백으로 나누기
```swift
let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
let A = datas[0], B = datas[1]
```
* 한줄로 변수 입력 공백없이 나누기
```swift
let numbers = readLine()!.map { Int(String($0))! }
let A = datas[0], B = datas[1]
```
* 개행없는 출력
```swift
print(data, terminator: " ")
```
* 배열에서 index, value값 for문으로 돌리기
```swift
for(index, value) in arr.enumerated() {
   print(index, value)
}
```
* 배열 개수 및 초기화
```swift
var counts = Array(repeating: 0, count: 10)
```
* 소수점 개수 설정
```swift
let pi = 3.141592
print(String(format: "%.2f", pi)) //3.14
```
* 숫자 자리수 설정
```swift
let num = 5
print(String(format: "%02d", num)) //05
```
* String -> 아스키코드값
```swift
let result = Int(UnicodeScalar(input)!.value)
```
* String 각각의 아스키코드값
```swift
let input = readLine()!
for i in input.utf16 {
    let num = Int(i)
}
```
* 아스키코드값 -> String
```swift
String(Character(UnicodeScalar(num)!))
```
* 동일문자 반복하여 String으로 저장
```swift
var result = ""
result += String(repeating: "\(text)\n", count: 10)
```
* Closure를 사용한 정렬방법
```swift
var points: [(Int, Int)] = [(1,1), (2,3), (4,5)]
points.sort(by: { $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0 })
for point in points {
    print(point.0, point.1)
}
```
* contains : 문자열 내에 특정데이터 존재여부
```swift
array.contains(target)
```
* filter : 문자열 내에서 특정조건을 만족하는 값들 반환
```swift
array.filter { $0 > 0 }.count //0보다 큰 값들 의 개수 반환
```
* 배열의 sum값
```swift
let sum: Int = array.reduce(0, +)
```
* 배열의 값과 인덱스를 tupple 형식의 배열로 저장
```swift
var arrayTupple: [(Int, Int)] = array.enumerated().map { ($1,$0) }.sorted(by: <)
```
* 우선순위큐 Priority Queue 클래스 코드
```swift
class PriorityQueue<T> {
    var heap: [T] = []
    let comparing: (_ o1: T,_ o2: T) -> Bool
    
    init(_ comparing: @escaping (_ o1: T,_ o2: T) -> Bool) {
        self.comparing = comparing
    }
    
    func size() -> Int { heap.count }
    
    func isEmpty() -> Bool { heap.isEmpty }
    
    func clear() { heap.removeAll() }
    
    func peek() -> T? { heap.first }
    
    func push(_ value: T) {
        heap.append(value)
        if heap.count == 1 { return }
        var valueIndex = heap.count - 1
        var parentIndex = (valueIndex-1) / 2
        while !comparing(heap[parentIndex], heap[valueIndex]) {
            heap.swapAt(valueIndex, parentIndex)
            valueIndex = parentIndex
            parentIndex = (valueIndex-1) / 2
            if valueIndex == 0 { break }
        }
    }
    
    func pop() -> T? {
        if heap.count == 0 { return nil }
        if heap.count == 1 { return heap.removeFirst() }
        
        func isChildEmpty(_ value: Int,_ left: Int,_ right: Int) -> Bool {
            if heap.count <= left { return true }
            if heap.count > right { return false }
            if comparing(heap[value], heap[left]) { return true }
            heap.swapAt(value, left)
            return true
        }
        
        heap.swapAt(0, heap.count-1)
        let answer = heap.removeLast()
        
        var valueIndex = 0
        var leftIndex = valueIndex * 2 + 1
        var rightIndex = valueIndex * 2 + 2
        
        if isChildEmpty(valueIndex, leftIndex, rightIndex) { return answer }
        
        while !comparing(heap[valueIndex], heap[leftIndex]) || !comparing(heap[valueIndex], heap[rightIndex]) {
            let index = comparing(heap[leftIndex], heap[rightIndex]) ? leftIndex : rightIndex
            heap.swapAt(valueIndex, index)
            valueIndex = index
            leftIndex = valueIndex * 2 + 1
            rightIndex = valueIndex * 2 + 2
            if isChildEmpty(valueIndex, leftIndex, rightIndex) { break }
        }
        return answer
    }
}
```
* 문제해결을 위한 빠른입력 코드 (맞은사람이 극히 드문 문제일 경우 사용)
```swift
import Foundation
final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
            || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()

        while now == 10
            || now == 32 { now = read() } // 공백과 줄바꿈 무시

        while now != 10
            && now != 32 && now != 0 {
                str += String(bytes: [now], encoding: .ascii)!
                now = read()
        }

        return str
    }
}

let file = FileIO()
```
