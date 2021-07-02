# Swift CodingTest

* [swift 문법 fastcampus 강의내용 요약](https://fdee.tistory.com/category/iOS%20개발자/swift%20기초)

* [swift 주요 함수 참고 블로그](http://minsone.github.io/mac/ios/swift-map-filter-reduce-and-inference)

* [swift 문법 참고 블로그](https://twih1203.medium.com/swift-알고리즘에-필요한-swift-basic-총정리-d86453bbeaa5)

* [swift 자료구조 블로그](https://babbab2.tistory.com/84)

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
* 배열의 특정 인덱스 구하기, 제거하기
```swift
if let idx: Int = array.firstIndex(of: "value") {
    print(idx)
    array.remove(at: idx) //"value" 제거
}
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
//A : 65
//Z : 90
//a : 97
//z : 122
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
* String 대문자, 소문자 변환
```swift
let upper: String = before.uppercased()
let lower: String = before.lowercased()
```
* String 역순
```swift
let reverseString: String = before.reversed()
```
* 배열 역순
```swift
let reverseArray = Array(before.reversed())
```
* 10진수(Int) -> 2진수(String)
```swift
let binary: String = String(num, radix: 2)
```
* 2진수(String) -> 10진수(Int)
```swift
let num: Int = Int(binary, radix: 2)!
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
* Dictionary 입력
```swift
dic.updateValue("value", forKey: 1)
```
* Dictionary 값 접근
```swift
dic[1] //"value"
```
* Dictionary 값 제거
```swift
dic.removeValue(forKey: 1) //"value" 제거
```
* Dictionary for문
```swift
for (key, value) in dic {
    print(key, value)
}
```
* Int 배열의 sum값
```swift
let sum: Int = array.reduce(0, +)
```
* String 배열의 String값
```swift
let resultString: String = array[0...n].reduce("", +)
//또는
let resultString: String = array[0...n].reduce("") { $0+"\($1)" }
//reduce 식 응용 코드
answer.append(resultBinary.reduce("", { $0 + ($1 == 0 ? " " : "#" )}))
```
* 배열의 값과 인덱스를 tupple 형식의 배열로 저장
```swift
var arrayTupple: [(Int, Int)] = array.enumerated().map { ($1,$0) }.sorted(by: <)
```
* 최대공약수 함수
```swift
func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : gcd(b, mod)
}
```
* 최소공배수 함수
```swift
func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}
```
* 임시 queue, stack (삭제, 추가)
```swift
queue.append(data)
n = queue.removeFirst()
stack.append(data)
n = stack.removeLast()
//마지막값 확인
n = stack.last
```
* Combinations 조합 코드
```swift
func combos<T>(elements: ArraySlice<T>, k: Int) -> [[T]] {
    if k == 0 {
        return [[]]
    }

    guard let first = elements.first else {
        return []
    }

    let head = [first]
    let subcombos = combos(elements: elements, k: k - 1)
    var ret = subcombos.map { head + $0 }
    ret += combos(elements: elements.dropFirst(), k: k)

    return ret
}

func combos<T>(_ elements: Array<T>, _ k: Int) -> [[T]] {
    return combos(elements: ArraySlice(elements), k: k)
}
```
* Queue 큐 클래스 코드
```swift
public struct Queue<T> {
    fileprivate var array = [T?]()
    fileprivate var head = 0
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }
        
        array[head] = nil
        head += 1
        
        let percentage = Double(head)/Double(array.count)
        if (array.count > 50 || percentage > 0.25) {
            array.removeFirst(head)
            head = 0
        }
        return element
    }
    public var front: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }
}
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
