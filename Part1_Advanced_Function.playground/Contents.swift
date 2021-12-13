import Swift

//매개변수 기본값
//기본값을 갖는 매개변수는 목록 중 뒤쪽에 위치하는 것이 좋음
func greeting(friend: String, me:String = "yagom"){
    print("Hello \(friend)! I'm \(me)")
}

//기본값을 가지는 매개변수는 호출 시 생략 가능
greeting(friend: "hana")
greeting(friend: "john", me: "jaesjeon")

//전달인자 레이블
//함수 호출 시 사용자 입장에서 매개변수의 역할을 더 명확하게 표현하고자 할 때 사용
//전달인자 레이블을 변경하면 동일한 이름의 함수를 중복으로 생성가능
//함수 내부에서 전달인자를 사용할 때는 매개변수 이름을 사용
func greeting(to friend: String, from me: String){
    print("Hello \(friend)! I'm \(me)")
}

//함수를 호출할 때는 전달인자 레이블을 사용
greeting(to: "hana", from: "jaesjeon")

//가변 매개변수
//전달 받을 값의 개수를 알기 어려울 때 사용
//함수당 하나만 가질 수 있음
//매개변수 목록 중 뒤쪽에 위치하는 것이 좋음
func sayHelloToFriends(me: String, friends: String...) -> String{
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToFriends(me: "jaesjeon", friends: "hana", "eric", "wing"))

print(sayHelloToFriends(me: "jaesjeon"))

//데이터 타입으로서의 함수
//스위프트의 함수는 일급객체
//함수를 변수, 상수 등에 할당이 가능하고 매개변수를 통해 전달할 수도 있음
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "jaesjeon")

someFunction = greeting(friend:me:)
someFunction("eric", "jaesjeon")

//타입이 다른 함수는 할당할 수 없음
//someFunction = sayHelloToFriends(me:friends:)

func runAnother(function: (String, String) -> Void){
    function("jenny", "mike")
}

runAnother(function: greeting(friend:me:))

runAnother(function: someFunction)
