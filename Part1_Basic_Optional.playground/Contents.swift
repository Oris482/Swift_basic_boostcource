import Swift

//Optional
//값이 있을 수도 없을 수도 있음을 표현, nil이 할당될 수 있는지 여부를 표현

//옵셔널을 쓰는 이유
//명시적 표현 - nil의 가능성을 코드만으로 표현, 문서/주석 작성 시간 절약
//안전한 사용 - 전달받은 값이 옵셔널이 아니라면 nil 체크 안해도 됨, 예외 상황 최소화, 효율적 코딩

//옵셔널 문법과 선언
//문법 = enum + generics
/*
enum Optional<Wrapped>: ExpressibleByNilLiteral {
    case none
    case some(Wrapped)
}
*/

let optionalValue: Optional<Int> = nil
//let optionalValue: Int? = nil //다른 표현

//느낌표를 이용한 암시적 추출 옵셔널
var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

//기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

//nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

//잘못된 접근으로 인한 런타임 오류 발생
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

//물음표를 이용한 옵셔널
var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

//nil 할당 가능
optionalValue = nil

//기존 변수처럼 사용불가 - 옵셔널과 일반변수는 다른 타입이므로 연산 불가
//optionalValue = optionalValue + 1
