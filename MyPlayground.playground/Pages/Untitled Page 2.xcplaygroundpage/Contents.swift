//: [Previous](@previous)

import Foundation

// 구조체 => 값 타입
struct Person{
    var name: String  = "hongbeom"
    var age: Int = 25
    static var greeting : String = "Welcome" // 타입 프로퍼티
    
    // static을 사용하면 인스턴스를 생성하지 않고 사용할 수 있다.
    static func toString(){
        print("hello world")
    }
    
    // 인스턴스 메서드
    func toString(){
        print(name+" ",age)
    }
}
Person.greeting = "hello"
Person.toString() // hello world
var person: Person = Person()
person.toString() // hongbeom  25
print(person.name, person.age)

// 클래스 => 참조 타입
class Person2{
    var name: String = "hongbeom"
    var age: Int = 25
    static var greeting : String = "Welcome"
    
    // 재정의 불가 타입 메서드
    static func typeMethod(){
        print("hello static")
    }
    
    // 재정의 가능 타입 메서드
    class func classMethod(){
        print("hello class")
    }
}

/*
 값 타입(구조체)
 - 연관된 몇몇의 값들을 모아서 하나의 데이터 타입으로 표현하고 싶을 때
 - 참조가 아닌 복사
 - 자신이 다른 타입을 상속할 필요가 없을 때
*/


/*
 참조 타입(클래스)
 - 하나의 인스턴스를 여러 대상이 공유할 때
 - 단일 상속
 - 애플의 프레임워크의 대부분의 큰 뼈대는 모두 클래스로 구성
*/

// 열거형 (enum)
enum School: String{
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case university = "대학교"
}
var mySchool: School = School.elementary
mySchool = .middle // 타입 생략 가능
print(mySchool)
print(mySchool.rawValue)

// 클로저 - 함수의 전달인자로서의 역할
var sum: (Int, Int) -> Int = { a, b in
    return a + b
}

// 사칙연산
var add: (Int , Int) -> Int
add = {a,b in return a+b}

var substract: (Int,Int)-> Int
substract = {a,b in return a-b}

var multiple: (Int,Int) -> Int
multiple = {a,b in return a*b}

var divide: (Int,Int) -> Int
divide = {a,b in return a/b}

func calculate(a:Int, b:Int, caculation:(Int,Int)->Int) -> Int{
    return caculation(a,b)
}
print(calculate(a: 2, b: 3, caculation: multiple))

var result: Int

// 후행 클로저
result = calculate(a: 10, b: 20) {(left: Int, right: Int) -> Int in return left+right}
print (result)

// 단축 인자이름
result = calculate(a: 20, b: 10){
    return $0 - $1
}
print (result)

// 암시적 반환 표현
result = calculate(a: 20, b:10) {$0 * $1}
print(result)






