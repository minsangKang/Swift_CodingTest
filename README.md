# swift_baekjoon
* [백준 단계별로 풀어보기](https://www.acmicpc.net/step)

* [swift 문법 fastcampus 강의내용 요약](https://fdee.tistory.com/category/iOS%20개발자/swift%20기초)

* [swift 문법 참고 블로그](https://twih1203.medium.com/swift-알고리즘에-필요한-swift-basic-총정리-d86453bbeaa5)

### 자주쓰이는 swift 코드
* 한줄로 변수값을 입력
```swift
let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
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
