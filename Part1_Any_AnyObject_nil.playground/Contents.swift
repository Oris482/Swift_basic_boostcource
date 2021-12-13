import Swift

//Any : Swift의 모든 타입을 지칭하는 키워드
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

//Any 타입에 Double 자료를 넣어두었더라도 Any는 Double 타입이 아니기 때문에 할당할 수 없음.
//명시적으로 타입 변환을 해주어야 함.
let someDouble: Double = someAny // 오류발생

//AnyObject : 모든 클래스 타입을 지칭하는 프로토콜
class SomeClass{}
var someAnyObject: AnyObject = SomeClass()

//AnyObject는 클래스의 인스턴스만 수용 가능하기 때문에 클래스의 인스턴스가 아니면 할당할 수 없음.
someAnyObject = 123.12 // 오류발생

//nil : 없음을 의미하는 키워드, 다른 언어의 NULL 등과 유사한 표현
var someAny2: Any = 100
var someAnyObject2: AnyObject = SomeClass()

//Any와 AnyObject 타입에는 nil을 할당할 수 없음.
someAny = nil
someAnyObject = nil
