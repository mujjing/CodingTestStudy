import UIKit

//자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요. 예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.

//n    return
//12345    [5,4,3,2,1]

var result: [Int] = []
var divide = 0
var num = 0

func solution(n: Int) -> [Int] {
    num = n
    while num > 0 {
        divide = num % 10
        result.append(divide)
        num /= 10
    }
    return result
}

solution(n: 12345)

