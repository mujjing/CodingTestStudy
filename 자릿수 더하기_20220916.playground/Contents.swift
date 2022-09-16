import UIKit

// 자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
//예를들어 N = 123이면 1 + 2 + 3 = 6을 return 하면 됩니다.

//입출력 예
//N    answer
//123    6
//987    24

var answer = 0
var solNum = 0

func solution(num: Int) -> Int {
    solNum = num
    
    while solNum > 0 {
       answer += solNum % 10
        solNum /= 10
    }
    return answer
}

solution(num: 123)
