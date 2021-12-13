import Swift

//함수 선언의 기본 형태
/*
 func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름, 매개변수2타입 ..) -> 반환타입 {
  함수 구현부
  return 반환값
 }
 */

func sum(a: Int, b: Int) -> Int{
    return a + b
}

//반환 값이 없는 함수
/*
 func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ..) -> Void {
  함수 구현부
  return
 }
 */

func printMyName(name: String) -> Void{
    print(name)
}

//반환 값이 없는 경우, 반환 타입(Void)를 생략할 수 있다.
func printYourName(name: String){
    print(name)
}

//매개변수가 없는 함수
func maximumIntegerValue() -> Int{
    return Int.max
}

//매개변수와 반환값이 없는 함수
//함수 구현이 짧은 경우 한 줄로 표현해도 무방
func hello() -> Void{print("hello")}
func bye(){print("bye")}

//함수의 호출
sum(a:3, b:5)
printMyName(name: "yagom")
printYourName(name: "jaesjeon")
maximumIntegerValue()
hello()
bye()
