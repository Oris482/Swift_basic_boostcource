import Swift

//for-in 구문
//기존 언어의 for-each 구문과 유사
//Dictionary의 경우 이터레이션 아이템으로 튜플이 들어옴
var integers = [1, 2, 3]
let people = ["yagom":10, "eric":15, "mike":12]

for integer in integers {
    print(integer)
}

for (name, age) in people {
    print("\(name): \(age)")
}

//while 구문
while integers.count > 1 {
    integers.removeLast()
}

//repeat-while 구문
//기존 언어의 do-while 구문과 유사
repeat {
    integers.removeLast()
} while integers.count > 0

