/*콘솔로그와 문자열 보간법*/
import Swift

let age: Int = 10

print("안녕하세요! 저는 \(age + 5)살입니다")

print("\n################################\n")
//seperator:    매개변수 사이 구분자를 정할 수 있음(후자 보다 먼저나와야됨)
//terminator:   기본으로 들어가는 개행을 다른 것으로 바꿀 수 있음

class Person {
    var name: String = "yagom"
    var age: Int = 0
}

let yagom: Person = Person()

print(yagom)

print("\n################################\n")

dump(yagom)
