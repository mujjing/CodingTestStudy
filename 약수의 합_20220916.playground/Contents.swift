import UIKit

//정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.

//입출력 예
//n    return
//12    28
//5    6

//입출력 예 #1
//12의 약수는 1, 2, 3, 4, 6, 12입니다. 이를 모두 더하면 28입니다.

var result = 0

func solution(num: Int) -> Int {
    for i in 1..<num + 1 {
        if num % i == 0 {
            result += i
        }
    }
    return result
}


solution(num: 12)
