import UIKit


/*
 Foundation 프레임워크는 iOS 및 macOS 애플리케이션을 개발하기 위한 기본적인 기능을 제공하는 중요한 프레임워크이다. 스위프트 표준 라이브러리가 제공하는 타입과 기능 이외의 다양한 영역에서 필요한 기본적인 데이터 타입, 컬렉션, 파일 처리, 네트워킹, 문자열 처리, 날짜 및 시간 관리, 메모리 관리 등의 기능을 제공한다.
 */
import Foundation

// 변수 선언 var 변수명: 타입 = 값 (variable)
// 상수 선언 let 상수명: 타입 = 값 (let ~ 하게 두자)
// 상수 선언시 초기화를 하지 않으면 에러 발생
// 값의 타입이 명확하다면 :타입 은 생략 가능

let num1 = 10
print(type(of: num1)) // 이렇게 변수의 타입을 생략해도 자동으로 변수의 타입을 할당함

let num: Int = 20

struct Person{
    var name: String
    var age: Int
}
struct Person2{
    var name: String = "hongbome2"
    var age: Int = 30
}

let person = Person(name: "hongbeom", age: 12)
let person2: Person2 = Person2()
print(person2)


// 타입 Bool
let bool: Bool = true
var str1: String = "hello"
var str2 = str1.appending(" world")

/*
    Any - Swift의 모든 타입을 지칭하는 키워드
    AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
    nil - 변수가 값이 없음을 나타냄
    null 과 nil의 차이점
 
 */

var object: Any = 100 // Any 타입은 어떤 타입도 할당 가능
object = "hello"

//let object2: String = object => String 타입에 Any 타입을 할당할 수 없음
class SomeClass{}
var someAnyObject: AnyObject = SomeClass()

// 컬렉션 타입
// Array-순서가 있는 리스트, Dictionary(키값,순서가 없음), Set-순서가 없고 중복이 없는 집합

// Array
var arr: Array<Int> = Array<Int>()
var arr2: Array<Double> = [Double]() // 축약형
var arr3: [String] = [String]() // 앞에도 적용 가능
var arr4: [String] = [] // 빈 배열 생성
arr.append(1)
arr.append(2)
//print(arr[0])
//print(arr.contains(1))
//arr.remove(at: 0) // 0번째 인덱스의 원소 삭제
//arr.removeFirst() // 첫번째 인덱스의 원소 삭제
//arr.removeLast() // 마지막 인덱스의 원소 삭제
//arr.removeAll() // 모든 인덱스 삭제

// Dictionary(키값) => hashMap과 비슷
var dic: Dictionary<String, Any> = Dictionary<String, Any>() // 기본 선언
var dic2: [String: Any] = [String: Any]() // 축약형
dic2["key1"] = "value"
dic2["key2"] = 1
//print(dic2)
dic2.removeValue(forKey: "key1") // 키값 삭제
//print(dic2)
dic2["key2"] = nil // 키값 삭제 다른 방식
//print(dic2)

let emptyDic: [String: String] = [:] // 빈 딕셔너리 생성, let이니까 수정 불가능
let Dict: [String: String] = ["key1": "value1", "key2": "value2"]
//let value: String = Dict["key1"] // 불확실성 상수

// Set
var set: Set<Int> = Set<Int>() // 이건 축약형이 없음
set.insert(1)
set.insert(2)
set.insert(3)
set.insert(3)
//print(set.count) // 중복을 허용하지 않음

var set1: Set<Int> = [1,2,3,4,5]
var set2: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = set1.union(set2) // 합집합
let subtracting: Set<Int> = set1.subtracting(set2) // 차집합
let intersection: Set<Int> = set1.intersection(set2) // 교집합
//print(union)
//print(subtracting)
//print(intersection)

// 함수(메소드)
// func 함수명(매개변수명: 타입) -> 리턴타입 { 로직 }
func sum(a: Int, b: Int) -> Int{
    return a + b
}

// void 함수
func printName(name: String) -> Void{
    print(name)
}

// 매개변수가 없는 함수
func printHello() -> Void{
    print("hello")
}

// 매개변수와 리턴값이 없는 함수 void 생략 가능
func printHello2(){
    print("hello")
}

// 전달인자 레이블
// 매개변수의 역할을 좀 더 명확하게 하거나 함수 사용자의 입장에서 표현하고자 할 때 사용
func printName3(to friend: String, from me: String){
    print("hello \(friend) I am \(me)")
}
//printName3(to: "friend", from: "hongbeom")

func setVolume(level: Int, for device: String) {
    print("Volume \(level) for \(device)")
}
//setVolume(level: 10, for: "Speaker") // 가독성이 좋아짐

// 전달인자 레이블 생략 => _ 사용
func printName2(_ friend: String ,me: String = "hongbeom"){
//    print("hello \(friend) I am \(me)")
}
//printName2("friend") //=> 기본값이 있어서 생략 가능


// 가변 매개변수
// 전달 받을 값의 개수를 알기 어려울 때 사용
func printName4(me: String, friends: String...) -> String{
    return "hello \(friends) I am \(me)"
}
//print(printName4(me: "hongbeom", friends: "a", "b", "c"))
//print(printName4(me: "hongbeom")) // 가변 매개변수는 0개 이상 전달 가능 []

var someFunction: (String, String)-> Void = printName3(to:from:)
// someFunction("friend", "hongbeom")

// 조건문 (조건에 괄호 없어도 됨)
var someInt = 100
if someInt < 100 {
//    print("100 미만")
}else if someInt > 100{
//    print("100 초과")
}else{
//    print("100")
}

var someValue = 101
if someValue>100,someValue<200{ // 쉼표로 && 대체 가능
//    print(true)
}

// switch - default구문 필수

// 반복문
// for-in
var integers: [Int] = [1,2,3] // 배열
//print(integers.count) // 배열의 길이는 count로!! length,size 아님
let people = ["person1": 10, "person2": 20] // 딕셔너리

for i in integers{
//    print(i)
}

for (name,age) in people{ // 튜플 형식
//    print("\(name): \(age)")
}

/*
 while 조건{  => 괄호 없어도 됨
    코드
 }
 */
while integers.count > 1{
    integers.removeLast()
}

// Optional => 값이 있을 수도 있고 없을 수도 있음 => ? ! 로 표현
// nil의 가능성을 명시적으로 표현 (nil - 변수가 값이 없음을 나타냄)
// var optionalValue: Optional<Int> = nil => 정석적인 표현
//  var number: Int = nil // 에러 발생 (not nil)


var optionalValue: Int? = 100 // Int 타입의 값이 있을 수도 있고 없을 수도 있음 ?로 표현
// ? 은 기존 변수타입과 다른 타입으로 취급
//optionalValue = optionalValue + 1 // 불가능 에러 발생

// 암시적 추출 옵셔널
var optionalValue2: Int! = 100 // 암시적 추출 옵셔널은 nil 할당 가능
// 기존 변수와 같이 제약없이 사용가능
optionalValue2 = optionalValue2 + 1 // 가능
optionalValue2 = nil
//optionalValue2 = optionalValue2 + 1 // 런타임 에러 발생
switch optionalValue2{
case .none:
    print("nil")
case .some(let value):
    print(value)
}


// 옵셔널 값 추출
// 1. 옵셔널 바인딩: nil 체크 + 안전한 값 추출
// if-let
func test1(_ name: String){
    print(name)
}
var testName : String! = nil

if let name = testName{
    print(name)
}else{
    print("this is nil")
}

// 2. 강제 추출
func test2(_ name: String){
    print(name)
}
var testName2: String? = "hongbeom"
test2(testName2!) // 강제 추출

var testName3: String! = "an"
test2(testName3)





















