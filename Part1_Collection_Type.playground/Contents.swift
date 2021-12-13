import  Swift

//Array 선언 및 생성
//멤버가 순서(인덱스)를 가진 리스트 형태의 컬렉션 타입
var integers: Array<Int> = Array<Int>()

//위와 동일한 표현
//var integers: Array<Int> = [Int]()
//var integers: Array<Int> = []
//var integers: [Int] = Array<Int>()
//var integers: [Int] = [Int]()
//var integers: [Int] = []
//var integers = [Int]()

//Array 활용
integers.append(1)
integers.append(100)

//Int 타입이 아니므로 Array에 추가할 수 없음.
//integers.append(101.1)

print(integers) //[1, 100]

//멤버 포함 여부 확인
print(integers.contains(100)) //true
print(integers.contains(99)) //false

//멤버 교체
integers[0] = 99

//멤버 삭제
integers.remove(at:0)
integers.removeLast()
integers.removeAll()

//멤버 수 확인
print(integers.count)

//인덱스를 벗어나 접근하려면 런타임 오류발생
//integers[0]

//불변 Array : let
let immutableArray = [1, 2, 3]

//수정 불가능이므로 멤버 추가나 삭제 불가능
//immutableArray.append(4)
//immutableArray.removeAll()


//Dictionary의 선언과 생성
//키와 값으로 이루어진 컬렉션 타입, 순서는 따로 없음
var anyDictionary: Dictionary<String, Any> = [String: Any]()

//위와 동일한 표현
//var anyDictionary: Dictionary<String, Any> = Dictionary<String, Any>()
//var anyDictionary: Dictionary<String, Any> = [:]
//var anyDictionary: [String: Any] = Dictionary<String, Any>()
//var anyDictionary: [String: Any] = [String: Any]()
//var anyDictionary: [String: Any] = [:]
//var anyDictionary = [String: Any]()

//키에 해당하는 값 할당
anyDictionary["SomeKey"] = "value"
anyDictionary["anotherKey"] = 100

print(anyDictionary) //["somekey":"value", "anotherKey":100]

//키에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
print(anyDictionary) //["somekey":"dictionary", "anotherKey":100]

//키에 해당하는 값 제거
anyDictionary.removeValue(forKey:"anotherKey")
anyDictionary["someKey"] = nil
print(anyDictionary)

//불변 Dictionary : let
let emptyDictionary: [String: String] = [:]
let initializedDictionary: [String: String] = ["name":"yagom", "gender":"male"]

//불변 Dictionary이므로 값 변경 불가
//emptyDictionary["key"] = "value"

//"name"이라는 키에 해당하는 값이 없을 수도 있어서 String 타입의 값이 나올 것이라는 보장이 없음
//let someValue: String = initializedDictionary["name"] //오류 발생

//Set의 선언 및 생성
//중복되지 않는 멤버가 순서없이 존재하는 컬렉션(집합)
//위 두 컬렉션과는 다르게 축약형이 존재하지 않음
var integerSet: Set<Int> = Set<Int>()

//새로운 멤버 입력
//동일한 값은 여러번 입력해도 한 번만 저장됨
integerSet.insert(1)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(100)

print(integerSet)

//멤버 포함 여부 확인
print(integerSet.contains(1)) //true
print(integerSet.contains(2)) // false

//멤버 삭제
integerSet.remove(99)
integerSet.removeFirst()

//멤버 개수
integerSet.count

//멤버 유일성이 보장되기 때문에 집합 연산에 활용하면 유용
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

//합집합
let union: Set<Int> = setA.union(setB)
print(union)

//합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUnion)

//교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection)

//차칩합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting)
