import Swift

//상수와 변수 선언
//변수 : 소문자, 명사로 시작
//함수 : 동사로 시작
let 상수이름: 타입 = 값
let 변수이름: 타입 = 값

//갑의 타입이 명확하다면 타입 생략 가능
let 상수이름 = 값
let 변수이름 = 값

//상수와 변수 활용
let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차유에 다른 값을 할당할 수 있지만"
constant = "상수는 차후에 값을 변경할 수 없습니다" //오류발생

//선언을 한 뒤, 나중에 값을 할당하려는 상수나 변수는 반드시 타입을 명시
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

//선언 후 첫 할당
sum = inputA + inputB

sum = 1 //이후에는 값을 바꿀 수 없음

//변수도 차후에 할당 가능
var nickName: String

nickName = "yagom"

nickName = "야곰" //변수는 차후에 다시 다른 값을 할당 가능
