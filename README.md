# swift_backjoon
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
