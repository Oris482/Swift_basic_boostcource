import Swift

//if~else 구문
//if 뒤의 조건 값은 무조건 Bool 타입 값이어야 한다.
//조건을 감싸는 소괄호는 선택사항
let someInteger = 100

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}

//if someInteger {} //조건이 Bool이 아닌 Int 타입이라 불가능

//switch 구문
//case에 정수 타입 뿐만이 아니라 대부분의 스위프트 기본 타입을 지원
//case 내부에는 실행가능한 코드가 반드시 위치해야 함
//명시적 break를 하지 않아도 자동으로 case마다 break가 됨
//fallthrough 키워드를 이용하면 break 무시 가능
//쉼표를 활용하여 하나의 case에 여러 패턴을 명시할 수 있음
switch someInteger {
case 0:
    print("Zero")
case 1..<100: //1 이상 100 미만
    print("1~99")
case 100:
    print("100")
case 101...Int.max: //101 이상 인트 맥스 이하
    print("over 100")
default:
    print("unknown")
}

switch "yagom" {
case "jake":
    print("jake")
case "mina":
    print("mina")
case "yagom":
    print("yagom!!")
default:
    print("unknown")
}


//열거형을 인자로 받을 때 모든 케이스를 사용하면 default를 안써도 된다
