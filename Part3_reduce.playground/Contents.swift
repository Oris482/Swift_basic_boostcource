import Swift

let someNumbers: [Int] = [2, 8, 15]

let sum: Int = someNumbers.reduce(0, {(first: Int, second: Int) -> Int in
    print("\(first) + \(second)")
    return first + second
})
print(sum)

let sumShort: Int = someNumbers.reduce(0, {$0 + $1})
print(sumShort)
