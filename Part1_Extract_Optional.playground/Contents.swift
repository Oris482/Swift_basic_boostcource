import Swift
import Foundation

//옵셔널 추출 : 옵셔널에 들어있는 값을 사용하기 위해 꺼내오는 것
//옵셔널 바인딩
//nil 체크 + 안전한 추출
//if-let 방식으로 사용
func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

//전달되는 값의 타입이 달라서 오류 발생
//printName(myName)

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}


var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

//name 상수는 if-let 구문 내에서만 사용가능
//사용 범위를 벗어났기 때문에 컴파일 오류 발생
//printName(name)

//쉼표를 사용해서 한 번에 여러 옵셔널을 바인딩 할 수 있음
//모든 옵셔널에 값이 있을 때만 동작
myName = "jaesjeon"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
//yourName이 nil이라 실행되지 않음
yourName = "hana"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

//강제추출
//옵셔널에 값이 들어있는지 확인하지 않고 값을 꺼냄, 값이 없으면 런타임 오류가 발생해서 추천하지 않음
var myName: String? = yagom
var youName: String! = nil

printName(myName!)
myName = nil

//print(myName!) //오류 발생
yourName = nil

//print(yourName) //오류 발생
